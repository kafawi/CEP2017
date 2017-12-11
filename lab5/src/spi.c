/**
 *
 */
#include <stdint.h>
#include "spi.h"
#include "debug.h"

#include <stm32f4xx.h>  // etc
#include <stm32f4xx_rcc.h> //
#include <stm32f4xx_spi.h> // Parameters for SPI3->CR1
#include <stm32f4xx_gpio.h>


// int wait_deassert_mem = 0; 
// MAKROS FOR ASSERTATION  (CHIPSELECTR)
       
// chip select -> assert/deassert                                                 
static enum mem_selection mem_select = WORK;
// fct declaration (private)
void assert_mem(void);
void deassert_mem(void);

uint8_t write_byte(uint8_t data);
uint8_t read_byte(void);

void write_enable(void);
void send_adr(uint32_t adr);

uint16_t read_status_reg(void);  //(SRT2<<8) & SRT1
uint8_t read_protection_reg(uint32_t adr); // for debug purpose only

void protectet_sector(uint32_t adr);
void unprotectet_sector(uint32_t adr);



void select_mem(enum mem_selection x)
{
  if (ORIGINAL == x || WORK == x){
    mem_select = x;
  }
}

void init_SPI(void)
{
	// enable CLK for GPIO and SPI3
  RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOCEN | RCC_AHB1ENR_GPIOGEN;
  RCC->APB1ENR |= RCC_APB1ENR_SPI3EN; // round about 45 MHz 
  // PB9 -> CS of SPI-Memory original
  GPIOB->MODER   = (GPIOB->MODER   & ~(GPIO_Mode_OUT << (9*2))) | (GPIO_Mode_OUT    << (9*2));
  GPIOB->OSPEEDR = (GPIOB->OSPEEDR & ~(GPIO_Speed_50MHz << (9*2))) | (GPIO_Speed_50MHz << (9*2));
  GPIOB->OTYPER  = (GPIOB->OTYPER  & ~(GPIO_OType_PP  << (9)  )) | (GPIO_OType_PP    << (9)  );
  GPIOB->PUPDR   = (GPIOB->PUPDR   & ~(GPIO_PuPd_NOPULL << (9*2))) | (GPIO_PuPd_NOPULL << (9*2));
  // PC10 (SCK0) -> SCK, PC11 (MISO0)-> SOI, PC12 (MOSI0) -> SIO 
  GPIOC->MODER   |= (GPIO_Mode_AF    << (2*10)) | (GPIO_Mode_AF << (2*11)) | (GPIO_Mode_AF << (2*12));
  GPIOC->OSPEEDR |= (GPIO_Fast_Speed << (2*10)) | (GPIO_Fast_Speed << (2*11)) | (GPIO_Fast_Speed << (2*12));
  GPIOC->AFR[1]  |= (GPIO_AF_SPI3    << (4*2)) | (GPIO_AF_SPI3 << (4*3)) | (GPIO_AF_SPI3 << (4*4));
        
  // PG6 -> CS of SPI-Memory work
  GPIOG->MODER   = (GPIOG->MODER   & ~(GPIO_Mode_OUT << (6*2))) | (GPIO_Mode_OUT    << (6*2));
  GPIOG->OSPEEDR = (GPIOG->OSPEEDR & ~(GPIO_Speed_50MHz << (6*2))) | (GPIO_Speed_50MHz << (6*2));
  GPIOG->OTYPER  = (GPIOG->OTYPER  & ~(GPIO_OType_PP << (6)  )) | (GPIO_OType_PP    << (6)  );
  GPIOG->PUPDR   = (GPIOG->PUPDR   & ~(GPIO_PuPd_NOPULL  << (6*2))) | (GPIO_PuPd_NOPULL << (6*2));

  // SPI Parametters for CR1 CR2 and baut 
  // see page cap. 28.5.1 and 28.5.1 in ref manulal stm32f4xx
	SPI3->CR1 = (              // MSB-first (0<<7), full duplex transfer (0<<10), 8-Bit DFF (0<<11)
    SPI_CR1_SPE              // SPI Enable
  | SPI_CR1_MSTR             // Master mode
  | SPI_CR1_CPOL             // Clock POLarity to 1 in idle
  | SPI_CR1_CPHA             // 2nd clock transition is first data capture edge (Clock PHAse)
  | SPI_CR1_SSM              // Software Slave Management (Software NSS management NSS<-SSI)
  | SPI_CR1_SSI              // Internal Slave Select (simplyfied: NSS-pin <- 1)
  | SPI_BaudRatePrescaler_8  // f_PCLK / 8 
  );
  // CR2 = 0; by default -> FRF-Bit = 0: is in Motorola mode by default 
}

void assert_mem(void){
  switch(mem_select){                                
    case(ORIGINAL): GPIOB->BSRRH = GPIO_Pin_9; break;
    case(WORK)    : GPIOG->BSRRH = GPIO_Pin_6; break;
  }
}

void deassert_mem(void){
  int i=0;
  switch(mem_select){                                
    case(ORIGINAL): GPIOB->BSRRL = GPIO_Pin_9; break;
    case(WORK)    : GPIOG->BSRRL = GPIO_Pin_6; break;
  }
  while(i<10){i++;} // wait to be sure
}

uint8_t read_byte (void)
{
  SPI3->DR = 0x0;
  while((SPI3->SR & SPI_SR_RXNE) != SPI_SR_RXNE){}; // polling Receive buffer not empty is unset
  return SPI3->DR; 
}

uint8_t write_byte (uint8_t data)
{
  SPI3->DR = data;
  while((SPI3->SR & SPI_SR_RXNE) != SPI_SR_RXNE){}; // polling Receive buffer not empty is unset
  return SPI3->DR;    
}

void send_adr(uint32_t adr)
{
  write_byte((uint8_t)(adr>>(2*N)));
  write_byte((uint8_t)(adr>>(1*N)));
  write_byte((uint8_t)(adr>>(0*N)));
}

uint16_t read_status_reg(void) // see Amtl manual cap 11.1 (page 39) retunr [15:8](SRT2) [7:0] (SRT1)
{
  uint16_t buff = 0x0;
  assert_mem();
  write_byte(OPCODE_READ_STATUS_REGISTER);
  read_byte();      // status register byte 1 just ignore it
  buff |= (read_byte()<<8); // status register byte 2
  buff |= read_byte();      // status register byte 1 again
  deassert_mem();
  //DEBUG_FPRINT(("Status_reg (byte2 :SRT2 & byte1: SRT1):%04x \n", buff));
  return buff;
}

void write_enable(void) // SPI->SR does not have an WE flag, so wie wait all on work with assert and deassert
{
  assert_mem();
  write_byte(OPCODE_WRITE_ENABLE);
  deassert_mem();
  while ((read_status_reg() & SRT1_WEL ) != SRT1_WEL){} // pollin WEL if 1 -> Write enabled 
}

void wait_for_rdy(void) // see script of Prof Schwarz: Flash Memory (page 41)
{
  while ((read_status_reg() & SRT1_RDY_BSY) == SRT1_RDY_BSY){} // if 1 -> Busy
}

uint8_t read_protection_reg(uint32_t adr) // see Amtel manual (page 27) // for debug purpose
{
  uint8_t buff;
  assert_mem();
  write_byte(OPCODE_READ_SECTOR_PROTECTION_REGISTERS);
  send_adr(adr);
  read_byte();read_byte(); // two dummy to get the correct output
  buff = read_byte();
  //DEBUG_FPRINT(("Protection_reg: %02x of ADR: %06x\n",buff,adr));
  deassert_mem();
  return buff;
}

void unprotectet_sector(uint32_t adr)
{
  write_enable();
  assert_mem();
  write_byte(OPCODE_UNPROTECTET_SECTOR);
  send_adr(adr);
  deassert_mem();
  // wait_for_rdy(); // is this nessessary?
  // polling if this is done 
  assert_mem();
  write_byte(OPCODE_READ_SECTOR_PROTECTION_REGISTERS);
  send_adr(adr);
  read_byte();read_byte(); // two dummy to get the correct output
  while(read_byte() != SECTOR_UNPROTECTED){}; // polling statusreg
  deassert_mem();
}


// public fcts definition
uint32_t read_device_id(void) // byte array is MSB( [31:24]=extendedDevice_info | [23:16]=DeviceID2 | [15:8]=DeviceID1 | [7:0]=ManuID  )LSB
{
  uint32_t buff = 0;
	assert_mem();
  write_byte(OPCODE_READ_MANUFACTURE_AND_DEVICE_ID);
  buff |= (read_byte()<<(8*0));
  buff |= (read_byte()<<(8*1));
  buff |= (read_byte()<<(8*2));
  buff |= (read_byte()<<(8*3));
  deassert_mem();
	DEBUG_FPRINT(("device id %x\n",buff));
  return buff;
}

void erase_block_4kb(uint32_t adr)
{
  DEBUG_FPRINT(("------------------------------ERASE BLOCK 4Kb-\n"));
  DEBUG_FPRINT(("ADR: %6X\n",adr));
  DEBUG_FPRINT(("Befor unprotectet_sector Protectionreg: %4X\n", read_protection_reg(adr)));
  unprotectet_sector(adr);	// inside write enable + unprotect sector + polling
  DEBUG_FPRINT(("After unprotectet_sector Protectionreg: %4X\n", read_protection_reg(adr)));
	DEBUG_FPRINT(("befor WE Statusreg: %4X\n", read_status_reg()));
  write_enable(); 
  DEBUG_FPRINT(("after WE Statusreg: %4X\n", read_status_reg()));
  assert_mem();
  write_byte(OPCODE_BLOCK_ERASE_4KB); 	
  send_adr(adr);
	deassert_mem();
  DEBUG_FPRINT(("after deassert Statusreg: %4X\n", read_status_reg()));
  wait_for_rdy();   //polling
  DEBUG_FPRINT(("END Statusreg: %4X\n", read_status_reg()));
  DEBUG_FPRINT(("END---------------------------ERASE BLOCK 4Kb-\n"));
}

void program_page(uint32_t adr, uint8_t *buff, uint32_t nbyte)
{
  int i=0;
  DEBUG_FPRINT(("---------------------------------PROGRAM PAGE-\n"));
  DEBUG_FPRINT(("ADR: %6X, buff %8X, nbyte %8X\n",adr, buff, nbyte));
  DEBUG_FPRINT(("Befor unprotectet_sector Protectionreg: %4X\n", read_protection_reg(adr)));
  //unprotectet_sector(adr);  // inside write enable + unprotect sector + polling
  //DEBUG_FPRINT(("After unprotectet_sector Protectionreg: %4X\n", read_protection_reg(adr)));
  DEBUG_FPRINT(("befor WE Statusreg: %4X\n", read_status_reg()));
  write_enable(); 
  DEBUG_FPRINT(("after WE Statusreg: %4X\n", read_status_reg()));
  assert_mem();
  write_byte(OPCODE_BYTE_PAGE_PROGRAM); 
  send_adr(adr);
  for(i=0;i<nbytes;i++){
    write_byte(buff[i]);
  }
  deassert_mem();
  DEBUG_FPRINT(("after deassert Statusreg: %4X\n", read_status_reg()));
  wait_for_rdy(); // polling
  DEBUG_FPRINT(("END Statusreg: %4X\n", read_status_reg()));
  DEBUG_FPRINT(("END------------------------------PROGRAM PAGE-\n"));
}

void read_array(uint32_t adr, uint8_t *buff, uint32_t nbyte)
{
  DEBUG_FPRINT(("-----------------------------------READ ARRAY-\n")); 
  DEBUG_FPRINT(("ADR: %6X, buff %8X, nbyte %8X\n",adr, buff, nbyte));
  DEBUG_FPRINT(("befor assert Statusreg: %4X\n", read_status_reg()));
  assert_mem();
  write_byte(OPCODE_READ_ARRAY_SLOW); 
  send_adr(adr);
  for(i=0;i<nbytes;i++){
    buff[i] = read_byte();
  }
  deassert_mem();
  DEBUG_FPRINT(("after deassert Statusreg: %4X\n", read_status_reg()));
  wait_for_rdy(); // polling
  DEBUG_FPRINT(("END Statusreg: %4X\n", read_status_reg()));
  DEBUG_FPRINT(("END--------------------------------READ ARRAY-\n"));
}
