#include <stm32f4xx.h>		
#include <stm32f4xx_rcc.h>		
#include <stm32f4xx_gpio.h>
#include <stdio.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>

// fct declaration
double tri(double t);
void sigarr_init(void);

// IRS
void TIM8_UP_TIM13_IRQHandler(void);
void EXTI9_5_IRQHandler(void);


// TIMER
void TIM_delay_init(void);
void TIM_delay_us(uint32_t t_us);
// helpers
char *int2Bin(char* out, int x, int width);



// constants
#define PI 3.14159265359
#define N_1_MAX 4
#define N_2_MAX 100
#define N1_STEP 1;
#define N2_STEP 10;
#define ARRLEN 100
// for counter
#define PSCCNT 38
#define ARRCNT 100
#define PIN_LED (1<<7) //PI7

// global varsi
uint16_t n_step = N1_STEP;
uint32_t cycles_times_us;
int16_t sigarr_tri[ARRLEN];
int16_t sigarr_sin[ARRLEN];
volatile enum wave_type {SINUS, TRIANGLE} wave_t = SINUS;
volatile enum wave_freq {MHZ} wave_f = MHZ;

// macros
#define INT16_2_UINT(x) ((x + INT16_MAX+1)>>4)
#define OARRLEN 16
int main()
{
    int i = 0;
    printf("Hello, World!\n");
    sigarr_init();

    TIM_delay_init();

    // TIMER
    // enable BUS for TIMER and DAC
    RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; // bus APB2 for TIM8 enable
    RCC->APB1ENR |= RCC_APB1ENR_DACEN;  // bus APB1 for DAC enableGPIO
    TIM8->CR1 = 0;
    TIM8->CR2 = 0;
    // set TIMER via CNT
    TIM8->PSC = PSCCNT -1; // PreSCaler : HCLK (168MHz) / 38 = 4421 kHz ( T = 226ns )
    TIM8->ARR = ARRCNT -1; // AutoReloadRegister : 4421 kHz / 100 = 44210 Hz (fast audio)
    NVIC_SetPriorityGrouping(5);
    NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 4);
    NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
    TIM8->DIER = TIM_DIER_UIE; // IR for timer enable
    TIM8->CR1  = TIM_CR1_CEN | TIM_CR1_ARPE; // TIM_ARR is bufferd

    // PA4 = DAC1 port (Mode_AN : analog)
    GPIOA->MODER = (GPIOA->MODER & ~(GPIO_Mode_AN << (4*2))) | (GPIO_Mode_AN << (4 *2));
    DAC->CR = DAC_CR_BOFF1 | DAC_CR_EN1;  // out buffer enable, to analog channel



    // enable BUS for BUTTON
    RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;  // bus/clk for SYSCFG
    SYSCFG->EXTICR[2] = (SYSCFG->EXTICR[2] & ~0xf)| 5; // PF 8,7,6 are avalable
                             // external interrupt configuration register (2)
                             // port F  (das ist magie, warum funktioniert das?)
                             // whay 5
    EXTI->FTSR |= EXTI_FTSR_TR8; // Trigger falling edge  on line 8 (1<<8)
    EXTI->IMR  |= EXTI_IMR_MR8;  // enable Interrupt (mask register on line 8)
    NVIC_SetPriority(EXTI9_5_IRQn, 2);
    NVIC_EnableIRQ(EXTI9_5_IRQn);

    /*
    char iArr[OARRLEN] = {0};
    char oArr[OARRLEN] = {0};

    printf("max %d : min %d\n", INT16_MAX, UINT16_MAX);
    // check arrays
    for(i = 0; i < ARRLEN; i++)
    {
        printf("%6d - %6d : %4d - %4d \n",
               sigarr_sin[i], sigarr_tri[i],
               INT16_2_UINT(sigarr_sin[i]), INT16_2_UINT(sigarr_tri[i]));
    }
     */
    while(1){};
    return 0;

}
// TIMER ----------------------------------------------------------------------
void TIM_delay_init(void)
{
    // see stm32f4xx_rcc.h
    RCC_ClocksTypeDef RCC_Clocks;
    RCC_GetClocksFreq(&RCC_Clocks); // get sys clks
    /* while-loop takes 4 cycles -> for 1 us -> 1us/4 = 1/4 E-6 */
    cycles_times_us = RCC_Clocks.HCLK_Frequency / 4000000;
}
void TIM_delay_us(uint32_t t_us)
{
    t_us = t_us * cycles_times_us;
    while(t_us--);
}
// --------------------------------------------------------------------- IRS --
void TIM8_UP_TIM13_IRQHandler(void)
{
    static uint16_t idx = 0;
    TIM8->SR = ~TIM_SR_UIF; // UPDATE IRQ with 0 : 1 no effect
                            // Update_Interrupt_Flag
    switch(wave_t) {
        case SINUS:
            // DAC channel1 12-bit right-aligned data holding register
            DAC->DHR12R1 = INT16_2_UINT(sigarr_sin[idx]);
            idx += n_step;
            break;
        case TRIANGLE:
            DAC->DHR12R1 = INT16_2_UINT(sigarr_tri[idx]);
            idx += n_step;
            break;
    }
    // reset index
    if (idx >= ARRLEN){
        idx = 0;
    }
}
void EXTI9_5_IRQHandler(void)
{
    //__disable_irq();
    GPIOI->ODR ^= PIN_LED;
    switch (wave_t) {
        case SINUS:
            wave_t = TRIANGLE;
            n_step = N2_STEP;
            break;
        case TRIANGLE:
            wave_t = SINUS;
            n_step = N1_STEP;
            break;
    }
    //__enable_irq();

    TIM_delay_us(100); // delay for 100 us
    EXTI->PR = EXTI_PR_PR8; // Pending Register = Pending bit for line 8 (1<<8)
}


double tri(double t){
    // f(x) = 1 - |x|; (-1,1) -> (0,1)
    //x = (t-t0)/T)
    double t0 = PI/2, T = PI, intpart;
    double x = (t - t0)/T;
    if (x > 1 ){
        x = modf(x, &intpart) - 1;
    } else if (x < -1) {
        x = modf(x, &intpart) + 1;
    }
    // -> (-1,1) ; f(t) *2 -1;
    return 2*(1 - fabs(x))-1;
}
void sigarr_init(void){
    int i=0;
    double dx = 2*PI/ARRLEN;

    for(i=0; i< ARRLEN; i++){
        sigarr_sin[i]    = (int16_t) (INT16_MAX * sin(dx*i));
        sigarr_tri[i] = (int16_t) (INT16_MAX * tri(dx*i));
    }
}

char* int2Bin(char *out, int x, const int len)
{
    int i = 0;
    for(i=0;i < len; i++){
      out[len-1-i] = (x & (1<<i) ? '1' : '0');
    }
    out[len]=0;
    return out;
}

