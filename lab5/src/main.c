#include <stm32f4xx.h>		
#include <stm32f4xx_rcc.h>		
#include <stm32f4xx_gpio.h>
#include <stdio.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>

#include "CE_Lib.h" // initCEBOARD
#include "tft.h"

// fct declaration
void sigarr_init(void);

// IRS
void TIM8_UP_TIM13_IRQHandler(void);
void EXTI9_5_IRQHandler(void);
// TIMER
void TIM_delay_init(void);
void TIM_delay_us(uint32_t t_us);
// helpers
void loop_do(void);

// constants
#define PI 3.14159265359
// F_out = 44kHz 
#define ARRLEN_F4400 (100)
#define ARRLEN_F440   (10)

#define PAGE_1 (0x000000)
#define PAGE_2 (0x000100)

// for counter HCLK = 168MHz -> HCLK / F_out = 38181 =~ 38 * 100
#define PSCCNT 38
#define ARRCNT 100
// Output status pins 
#define PIN_LED_FREQ (1<<6) // PI6
#define PIN_LED_TYPE (1<<7) // PI7
#define PIN_LED_TIM8 (1<<6) 
#define PIN_LED_EXTI (1<<7)

// global var
uint32_t cycles_times_us; // for waiting in IRQ (anti prell)
int16_t dac_out_arr[ARRLEN_F4400];

//volatile enum wave_type {SINUS, TRIANGLE} wave_t = SINUS;
volatile enum wave_freq {F1,F2} wave_f = F1;
volatile enum e_dac_out {OFF,ON} dac_out = ON;
volatile uint16_t arrlen = ARRLEN_F440;

// macros
#define INT16_2_UINT12(x) ((x + INT16_MAX+1)>>4)

int main()
{   
    initCEP_Board();
    TIM_delay_init();
    init_SPI();
    sigarr_init();
    // TIMER
    // enable BRIGE/CLK for TIMER and DAC
    RCC->APB2ENR |= RCC_APB2ENR_TIM8EN; // clk/bus APB2 for TIM8 enable
    RCC->APB1ENR |= RCC_APB1ENR_DACEN;  // clk/bus APB1 for DAC enableGPIO
    TIM8->CR1 = 0;  // enalbe clk
    TIM8->CR2 = 0;
    // set TIMER via CNT  f_dst = 44kHz, f_src = 168MHz -> CNT = 168M/44k = 38181.818 -> 38*100
    TIM8->PSC = PSCCNT -1; // PreSCaler : HCLK (168MHz) / 38 = 4421 kHz ( T = 226ns )
    TIM8->ARR = ARRCNT -1; // AutoReloadRegister : 4421 kHz / 100 = 44210 Hz (fast audio)
    NVIC_SetPriorityGrouping(5);
    NVIC_SetPriority(TIM8_UP_TIM13_IRQn, 4);  // normal 4
    NVIC_EnableIRQ(TIM8_UP_TIM13_IRQn);
    TIM8->DIER = TIM_DIER_UIE; // IR for timer enable
    TIM8->CR1  = TIM_CR1_CEN | TIM_CR1_ARPE; // TIM_ARR is bufferd

    // PA4 = DAC1 port (Mode_AN : analog)
    GPIOA->MODER = (GPIOA->MODER & ~(GPIO_Mode_AN << (4*2))) | (GPIO_Mode_AN << (4 *2));
    DAC->CR = DAC_CR_BOFF1 | DAC_CR_EN1;  // out buffer enable, to analog channel

    // enable BUS for BUTTON
    RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;  // bridge/clk for SYSCFG
    SYSCFG->EXTICR[2] = (SYSCFG->EXTICR[2] & ~0xf)| 5; // PF 8 are avalable
		EXTI->FTSR |= EXTI_FTSR_TR8; // Trigger falling edge  on line 8 (1<<8) // and line 7 is that possible
    EXTI->IMR  |= EXTI_IMR_MR8;  // enable Interrupt (mask register on line 8)
                             // external interrupt configuration register (2)
                             // port F  (das ist magie, warum funktioniert das?)
                             //  5 = 0b0101 means PF
    // see cap 9.2.5 for more details ~0xf (0xfff0) EXTI(11 10 9 8)-> EXTI8 -> PF -> PF8
    // we also want to enable PF 7 for, so we need EXTICR2 -> [1] -> (7 6 5 4)
    SYSCFG->EXTICR[1] = (SYSCFG->EXTICR[1] & ~0xf000)| 0x5000; // pf 7
    // we have to distinguish in IRQ EXT9_5_IRQHandler with reading gpioF
    
    EXTI->FTSR |= EXTI_FTSR_TR7;
    EXTI->IMR  |= EXTI_IMR_MR7;
    //
    NVIC_SetPriority(EXTI9_5_IRQn, 2); // normal 2
    NVIC_EnableIRQ(EXTI9_5_IRQn);
		//PI7
		//GPIOI->MODER = (GPIOB->MODER & ~(3<<()) )
		
    while(1){
        //display_status();
        loop_do();
    };
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
    static uint16_t n_step = N1_STEP;
	  //GPIOI->ODR = (GPIOI->ODR & ~0 ) | PIN_LED_TIM8;	
    TIM8->SR = ~TIM_SR_UIF; // UPDATE IRQ with 0 : 1 no effect
                            // Update_Interrupt_Flag
    if(dac_out == ON){
        if (idx >= arrlen) idx = 0;
        DAC->DHR12R1 = INT16_2_UINT12(dac_out_arr[idx]);
        idx++;
    }
}
void EXTI9_5_IRQHandler(void)
{
    uint16_t PRin = EXTI->PR;
    if (PRin & EXTI_PR_PR8){ // PF8 -> dac_ot toggle
			  EXTI->PR = EXTI_PR_PR8;        
        switch (dac_out) {
            case OFF:
                wave_t = ON;
                break;
            case ON:
                wave_t = OFF;
                break;
        }
        GPIOI->ODR ^=PIN_LED_TYPE;
        
    }
    if (PRin & EXTI_PR_PR7){ // PF7 -> wave_freq toggle
			  EXTI->PR = EXTI_PR_PR7;
        switch (wave_f) {
            case F1:
                wave_f = F2;
                break;
            case F2:
                wave_f = F1;
                break;
        }
        GPIOI->ODR ^= PIN_LED_FREQ;
    }  
}

void sigarr_init(void){
    int i=0;
    double dx = 0;
    int16_t buff_arr[ARRLEN_F4400];
    // slow 10 values
    dx = 2*PI/ARRLEN_F440;
    for(i=0; i< ARRLEN_F440; i++){
        buff_arr[i]  = (int16_t) (INT16_MAX * sin(dx*i));
    }
    spi_write(PAGE_1, (uint8_t)buff_arr, ARRLEN_F440*2);

    // fast 100 values
    dx = 2*PI/ARRLEN_F4400;
    for(i=0; i< ARRLEN_F4400; i++){
        buff_arr[i]  = (int16_t) (INT16_MAX * sin(dx*i));
    }
    spi_write(PAGE_2, (uint8_t)buff_arr, ARRLEN_F4400*2);

    // lese auf das ausgabe array
    spi_read(PAGE_1, dac_out_arr, ARRLEN_F440*2);
}



void loop_do(void){
    static enum wave_freq old_freq = F1;
   
    switch (wave_freq){
        case (F1):
            if (old_freq = F2){
                 __disable_irq();
                old_freq = F1;
                spi_read(PAGE_1, dac_out_arr, ARRLEN_F440*2);
                arrlen = ARRLEN_F440;
                __enable_irq();
            }
            break;
        case (F2):
            if (old_freq = F1){
                __disable_irq();
                old_freq = F2;
                spi_read(PAGE_2, dac_out_arr, ARRLEN_F4400*2);
                arrlen = ARRLEN_F4400;
                __enable_irq();
            }
            break;
    }
    read_device_id();
}
