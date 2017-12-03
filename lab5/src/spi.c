/**
 *
 */
#include "spi.h"

#include <stm32f4xx.h>  // etc
#include <stm32f4xx_rcc.h> //
#include <stm32f4xx_spi.h> // Parameters for SPI3->CR1

void init_SPI(void)
{
	// enable CLK for GPIO and SPI3
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOCEN | RCC_AHB1ENR_GPIOGEN;
  RCC->APB1ENR |= RCC_APB1ENR_SPI3EN;
  // PB9 -> CS of SPI-Memory original
  GPIOB->MODER   = (GPIOB->MODER   & ~(GPIO_Mode_OUT << (9*2))) | (GPIO_Mode_OUT    << (9*2));
  GPIOB->OSPEEDR = (GPIOB->OSPEEDR & ~(GPIO_Mode_OUT << (9*2))) | (GPIO_Speed_50MHz << (9*2));
  GPIOB->OTYPER  = (GPIOB->OTYPER  & ~(GPIO_Mode_OUT << (9)  )) | (GPIO_OType_PP    << (9)  );
  GPIOB->PUPDR   = (GPIOB->PUPDR   & ~(GPIO_Mode_OUT << (9*2))) | (GPIO_PuPd_NOPULL << (9*2));
  // PC10 (SCK0) -> SCK, PC11 (MISO0)-> SOI, PC12 (MOSI0) -> SIO 
  GPIOC->MODER   |= (GPIO_Mode_AF    << (2*10)) | (GPIO_Mode_AF << (2*11)) | (GPIO_Mode_AF << (2*12));
  GPIOC->OSPEEDR |= (GPIO_Fast_Speed << (2*10)) | (GPIO_Fast_Speed << (2*11)) | (GPIO_Fast_Speed << (2*12));
  GPIOC->AFR[1]  |= (GPIO_AF_SPI3    << (4*2)) | (GPIO_AF_SPI3 << (4*3)) | (GPIO_AF_SPI3 << (4*4));
        
  // PG6 -> CS of SPI-Memory work
  GPIOG->MODER   = (GPIOG->MODER   & ~(GPIO_Mode_OUT << (6*2))) | (GPIO_Mode_OUT    << (6*2));
  GPIOG->OSPEEDR = (GPIOG->OSPEEDR & ~(GPIO_Mode_OUT << (6*2))) | (GPIO_Speed_50MHz << (6*2));
  GPIOG->OTYPER  = (GPIOG->OTYPER  & ~(GPIO_Mode_OUT << (6)  )) | (GPIO_OType_PP    << (6)  );
  GPIOG->PUPDR   = (GPIOG->PUPDR   & ~(GPIO_Mode_OUT << (6*2))) | (GPIO_PuPd_NOPULL << (6*2));

  // SPI Parametters for CR1 CR2 and baut 
  // see page cap. 28.5.1 and 28.5.1 in ref manulal stm32f4xx
  SPI3->CR1 = 
       (1<<2)  // Master mode
    |  (0<<11) // 8-Bit  (DFF) Data frame format
    |  (0<<10) // full duplex tranfer (RXONLY) Receive only
    |  (0<<7)  // MSB-first (LSBFIRST) Frame format
    |  (1<<0)  // 2nd clock transition is first data capture edge (CPHA) Clock phase
    |  (1<<1)  // CK to 1 when idle (CPOL) Clock polarity
    |(0x0<<3)  // f_PCLK / 2 (BR) Baud rate control
    //|(0x1<<3)  // f_PCLK / 4 (BR) Baud rate control
    ;  
    //
  SPI3->CR2 = (0<<4); // SPI Motorola mode (FRF) Frame format (not ti mode)
}

void read_manu_id(void)
{
	
}

void spi_write(uint32_t adr, uint8_t *buff, uint32_t nbytes)
{
	
}

void spi_read(uint32_t adr, uint8_t *buff, uint32_t nbytes)
{
	
}

void assert(void)
{

}

void deassert(void)
{

}

void write_enable(void)
{

}

void protectet_sector(uint32_t adr)
{

}

void unprotectet_sector(uint32_t adr)
{

}

void send_adr(uint32_t adr)
{

}

uint8_t write_byte(uint8_t data)
{
  return 0;
}

uint8_t read_byte(void)
{
  return 0;
}

uint8_t read_protection_reg(uint32_t adr)
{
  return 0;
}

uint8_t read_status_reg(void)
{
  return 0;
}
