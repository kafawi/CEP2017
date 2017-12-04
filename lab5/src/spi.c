/**
 *
 */
#include "spi.h"
#include "debug.h"

#include <stm32f4xx.h>  // etc
#include <stm32f4xx_rcc.h> //
#include <stm32f4xx_spi.h> // Parameters for SPI3->CR1

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

uint32_t read_device_id(void) // byte array is MSB( [31:24]=extendedDevice_info | [23:16]=DeviceID2 | [15:8]=DeviceID1 | [7:0]=ManuID  )LSB
{
  uint32_t buff = 0;
	assert_mem_work();
  write_byte(OPCODE_READ_MANUFACTURE_AND_DEVICE_ID);
  buff |= (read_byte()<<(8*0));
  buff |= (read_byte()<<(8*1));
  buff |= (read_byte()<<(8*2));
  buff |= (read_byte()<<(8*3));
  deassert_mem_work();
  DEBUG_FPRINT((
    "Manu ID: %2x, DeviceID: %4x, extraDeviceID: 2x \n",
    ((uint8_t)(buff>>(8*0))),
    ((uint16_t)(buff>>(8*1))), 
    ((uint8_t)(buff>>(8*3)))
  ));
  return buff;
}

void erase_block_4kb(uint32_t adr)
{
  uint8_t protection_reg = 0;
  DEBUG_FPRINT(("------------------------------ERASE BLOCK 4Kb-\n"));
  DEBUG_FPRINT(("--start adr: %06x\n",adr));
  DEBUG_FPRINT(("--befor write_enable for unprotect_sector:\n"));
  DEBUG_DO( read_status_reg() );
  write_enable();
  DEBUG_FPRINT(("--after write_enable:\nstatus reg, WEL == 1 (old + 0x2)\n"));
  DEBUG_DO( read_status_reg(adr) );
  DEBUG_FPRINT(("--befor uprotect_sector:\n"));
  DEBUG_DO( read_protection_reg(adr) );
  unprotectet_sector(adr);
  DEBUG_FPRINT(("--after uprotect_sector:\n"));
  // polling 
  wait_for_rdy();
  while(read_protection_reg(adr) != SECTOR_UNPROTECTED);

  DEBUG_FPRINT(("--befor write_enable for erase_block_4kb:\n"));
  DEBUG_DO( read_status_reg() );
  write_enable();
  DEBUG_FPRINT(("--after write_enable:\n"));
  DEBUG_DO( read_status_reg() );
  DEBUG_FPRINT(("--befor erase_block_4kb cmds:\n"));
  assert_mem_work(); DEBUG_FPRINT(("~CS set hi\n"));
  write_byte(OPCODE_BLOCK_ERASE_4KB); 
  DEBUG_FPRINT(("send opcode:%02x\n", OPCODE_BLOCK_ERASE_4KB));
  send_adr(adr);
  DEBUG_FPRINT(("send ADR:%06x\n", adr));
  deassert_mem_work(); DEBUG_FPRINT(("~CS set lo\n"));
  DEBUG_FPRINT(("--after erase_block_4kb cmds:\n"));
  //polling
  DEBUG_DO( read_status_reg() );
  wait_for_rdy();
  DEBUG_DO( read_status_reg() );
  DEBUG_DO( read_protection_reg(adr) );

  DEBUG_FPRINT(("END---------------------------ERASE BLOCK 4Kb-\n"));
}

/*
void check_srt(uint8_t srt1_check, uint8_t srt2_check, , uint8_t isWaiting)
{
  uint8_t srt1_buff = 0x0;
  uint8_t srt2_buff = 0x0;
  uint32_t cnt = 0;
  assert_mem_work();
  write_byte(OPCODE_READ_STATUS_REGISTER);
  buff |= read_byte();      // status register byte 1
  buff |= (read_byte()<<8); // status register byte 2
  do {
      buff |= read_byte();  // status register byte 1 again
      cnt++;
  }while(buff & STR1_RDY_BSY);
  deassert_mem_work();
  DEBUG_FPRINT(("RDY after %d pollingloops \n", cnt));
  return buff;
}
*/
void wait_for_rdy(void) // see script of Prof Schwarz: Flash Memory (page 41)
{
  uint16_t buff = 0x0;
  uint32_t cnt = 0;
  assert_mem_work();
  write_byte(OPCODE_READ_STATUS_REGISTER);
  while ((read_byte() & SRT1_RDY_BSY) == SRT1_RDY_BSY){cnt++;}
  deassert_mem_work();
  DEBUG_FPRINT(("RDY after %d pollingloops \n", cnt));
  return buff;
}

void spi_write(uint32_t adr, uint8_t *buff, uint32_t nbytes)
{
  int i=0;
	DEBUG_FPRINT(("----------------------------------------WRITE-\n"));
  DEBUG_FPRINT(("--start adr: %06x\n",adr));
  DEBUG_FPRINT(("--befor write_enable for unprotect_sector:\n"));
  DEBUG_DO( read_status_reg() );
  write_enable();
  DEBUG_FPRINT(("--after write_enable:\nstatus reg, WEL == 1 (old + 0x2)\n"));
  DEBUG_DO( read_status_reg(adr) );
  DEBUG_FPRINT(("--befor uprotect_sector:\n"));
  DEBUG_DO( read_protection_reg(adr) );
  unprotectet_sector(adr);
  DEBUG_FPRINT(("--after uprotect_sector:\n"));
  // polling 
  wait_for_rdy();
  while(read_protection_reg(adr) != SECTOR_UNPROTECTED);

  DEBUG_FPRINT(("--befor write_enable for write_bytes:\n"));
  DEBUG_DO( read_status_reg() );
  write_enable();
  DEBUG_FPRINT(("--after write_enable:\n"));
  DEBUG_DO( read_status_reg() );
  DEBUG_FPRINT(("--befor OPCODE_BYTE_PAGE_PROGRAM cmd:\n"));
  assert_mem_work(); DEBUG_FPRINT(("~CS set hi\n"));
  write_byte(OPCODE_BYTE_PAGE_PROGRAM); 
  DEBUG_FPRINT(("send opcode:%02x\n", OPCODE_BYTE_PAGE_PROGRAM));
  send_adr(adr);
  DEBUG_FPRINT(("send ADR:%06x\n", adr));
  for(i=0;i<nbytes;i++){
    write_byte(buff[i]);
  }
  DEBUG_FPRINT(("write %d bytes into mem\n", nbytes));
  deassert_mem_work(); DEBUG_FPRINT(("~CS set lo\n"));
  DEBUG_FPRINT(("--after OPCODE_BYTE_PAGE_PROGRAM cmds:\n"));
  //polling
  DEBUG_DO( read_status_reg() );
  wait_for_rdy();
  DEBUG_DO( read_status_reg() );
  DEBUG_DO( read_protection_reg(adr) );
  
  DEBUG_FPRINT(("END-------------------------------------WRITE-\n"));
}

void spi_read(uint32_t adr, uint8_t *buff, uint32_t nbytes)
{
  int i = 0;
	DEBUG_FPRINT(("-----------------------------------------READ-\n"));
  DEBUG_FPRINT(("--befor write_enable for OPCODE_READ_ARRAY_SLOW:\n"));
  DEBUG_DO( read_status_reg() );
  write_enable();
  DEBUG_FPRINT(("--after write_enable:\n"));
  DEBUG_DO( read_status_reg() );
  DEBUG_FPRINT(("--befor OPCODE_READ_ARRAY_SLOW cmds:\n"));
  assert_mem_work(); DEBUG_FPRINT(("~CS set hi\n"));
  write_byte(OPCODE_READ_ARRAY_SLOW); 
  DEBUG_FPRINT(("send opcode:%02x\n",OPCODE_READ_ARRAY_SLOW));
  send_adr(adr);
  DEBUG_FPRINT(("send ADR:%06x\n", adr));
  for(i=0;i<nbytes;i++){
    buff[i] = read_byte();
  }
  DEBUG_FPRINT(("write %d bytes into mem\n", nbytes));
  deassert_mem_work(); DEBUG_FPRINT(("~CS set lo\n"));
  DEBUG_FPRINT(("--after OPCODE_READ_ARRAY_SLOW cmds:\n"));
  //no polling reqired
  DEBUG_DO( read_status_reg() );
  DEBUG_DO( read_protection_reg(adr) );
  
  DEBUG_FPRINT(("END--------------------------------------READ-\n"));
}


void deassert_mem_original(void)
{
  int i = 0;
  GPIOB->BSRRL = GPIO_PIN_9;
  while(i<10){i++;}
}

void assert_mem_work(void)
{
  int i = 0;
  GPIOG->BSRRH = GPIO_PIN_6;
  while(i<10){i++;}  // waiting for CS to get set
}

void deassert_mem_work(void)
{
  int i = 0;
  GPIOG->BSRRL = GPIO_PIN_6;
  while(i<10){i++;}
}

void assert_mem_original(void)
{
  int i = 0;
  GPIOB->BSRRL = GPIO_PIN_9;
  while(i<10){i++;}
}

void write_enable(void) // SPI->SR does not have an WE flag, so wie wait all on work with assert and deassert
{
  assert_mem_work();
  write_byte(OPCODE_WRITE_ENABLE);
  deassert_mem_work();
}

void protectet_sector(uint32_t adr)
{
  assert_mem_work();
  write_byte(OPCODE_PROTECT_SECTOR);
  send_adr(adr);
  deassert_mem_work();
}

void unprotectet_sector(uint32_t adr)
{
  assert_mem_work();
  write_byte(OPCODE_UNPROTECT_SECTOR);
  send_adr(adr);
  deassert_mem_work();
}

void send_adr(uint32_t adr)
{
   write_byte(BYTE_N_OF_NUMBER(2,adr));
   write_byte(BYTE_N_OF_NUMBER(1,adr));
   write_byte(BYTE_N_OF_NUMBER(0,adr));
}

int8_t write_byte (uint8_t data)
{
  SPI3->DR = data;
  while(!(SPI3->SR & SPI_SR_RXNE)); // polling Receive buffer not empty is unset
  return SPI3->DR;    
}


int8_t read_byte (void)
{
  SPI3->DR = 0x0;
  while(!(SPI3->SR & SPI_SR_RXNE)); // polling Receive buffer not empty is unset
  return SPI3->DR; 
}

 
uint8_t read_protection_reg(uint32_t adr) // see Amtel manual (page 27)
{
  uint8_t buff;
  assert();
  write_byte(OPCODE_SECTOR_PROTECTION_REGISTERS);
  send_address(adr);
  //read_byte();read_byte(); // two dummy // is that nessessary?
  buff = read_byte();
  deassert();
  DEBUG_FPRINT(("Protection_reg: %02x of ADR: %06x\n",buff,adr));
  return buff;
}

uint16_t read_status_reg(void) // see Amtl manual cap 11.1 (page 39) retunr [15:8](SRT2) [7:0] (SRT1)
{
  uint16_t buff = 0x0;
  assert_mem_work();
  write_byte(OPCODE_READ_STATUS_REGISTER);
  buff |= read_byte();      // status register byte 1
  buff |= (read_byte()<<8); // status register byte 2
  buff |= read_byte();      // status register byte 1 again
  deassert_mem_work();
  DEBUG_FPRINT(("Status_reg (byte2 :SRT2 & byte1: SRT1):%04x \n", buff));
  return buff;
}



void print_manu_id(void){
  
}