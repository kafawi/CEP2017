/**
 *
 */

#include <stm32f4xx.h>

// --------------------------------------- AT25DF641 OP CODES
// COMMAND LISTING , see Tab 6-1 in AT25DF641 manual (page 8)
enum OPCODE                              // Fclk [MHz] :ADR : DUMMY : DATA 
{
  // READ Commands
   READ_ARRAY_FAST                  = 0x1B // 100 : 3 : 2 : 1+
  ,READ_ARRAY_MEDIUM                = 0x0B //  85 : 3 : 1 : 1+
  ,READ_ARRAY_SLOW                  = 0x03 //  50 : 3 : 0 : 1+
  ,DUAL_OUTPUT_READ_ARRAY           = 0x3B //  85 : 3 : 1 : 1+
  // Programm and Erase Commands
  ,BLOCK_ERASE_4KB                  = 0x20 // 100 : 3 : 0 : 0
  ,BLOCK_ERASE_32KB                 = 0x52 // 100 : 3 : 0 : 0
  ,BLOCK_ERASE_64KB                 = 0xD8 // 100 : 3 : 0 : 0
  ,CHIP_ERASE                       = 0x60 // 100 : 0 : 0 : 0
  ,CHIP_ERASE_ALTERNATIVE           = 0xC7 // 100 : 0 : 0 : 0
  ,BYTE_PAGE_PROGRAM                = 0x02 // 100 : 3 : 0 : 1+
  ,DUAL_INPUT_BYTE_PAGE_PROGRAM     = 0xA2 // 100 : 3 : 0 : 1+
  ,PROGRAM_ERASE_SUSPEND            = 0xB0 // 100 : 0 : 0 : 0
  ,PROGRAM_ERASE_RESUME             = 0xD0 // 100 : 0 : 0 : 0
  // Protection Commands
  ,WRITE_ENABLE                     = 0x06 // 100 : 0 : 0 : 0
  ,WRITE_DISABLE                    = 0x04 // 100 : 0 : 0 : 0
  ,PROTECT_SECTOR                   = 0x36 // 100 : 3 : 0 : 0
  ,UNPROTECTET_SECTOR               = 0x39 // 100 : 3 : 0 : 0
  ,GLOBAL_PROTECT_UNPROTECT         = 0x01 // Use Write Status Register Byt 1 Command
  ,READ_SECTOR_PROTECTION_REGISTERS = 0x3C // 100 : 3 : 0 : 1+
  // Security Commands
  ,SECTOR_LOCKDOWN                  = 0x33 // 100 : 3 : 0 : 1
  ,FREEZE_SECTOR_LOCKDOWN_STATE     = 0x34 // 100 : 3 : 0 : 1
  ,READ_SECTOR_LOCKDOWN_REGISTERS   = 0x35 // 100 : 3 : 0 : 1+
  ,PROGRAMM_OTP_SECURITY_REGISTER   = 0x9B // 100 : 3 : 0 : 1+
  ,READ_OTP_SECURITY_REGISTER       = 0x77 // 100 : 3 : 2 : 1+
  // Status Register Commands
  ,READ_STATUS_REGISTER             = 0x05 // 100 : 0 : 0 : 1+
  ,WRITE_STATUS_REGISTER_BYTE_1     = 0x01 // 100 : 0 : 0 : 1
  ,WRITE_STATUS_REGISTER_BYTE_2     = 0x31 // 100 : 0 : 0 : 1
  // Miscellanous Commands
  ,RESET                            = 0xF0 // 100 : 0 : 0 : 1 
  ,READ_MANUFACTURE_AND_DEVICE_ID   = 0x9F // 100 : 0 : 0 : 1 to 4 
  ,DEEP_POWER_DOWN                  = 0xB9 // 100 : 0 : 0 : 0
  ,RESUME_FROM_DEEP_POWER_DOWN      = 0xAB // 100 : 0 : 0 : 0
}

// functions
void init_SPI(void);
void read_manu_id(void);
void spi_write(uint32_t adr, uint8_t *buff, uint32_t nbytes);
void spi_read(uint32_t adr, uint8_t *buff, uint32_t nbytes);

void assert(void);
void deassert(void);
void write_enable(void);
void protectet_sector(uint32_t adr);
void unprotectet_sector(uint32_t adr);
void send_adr(uint32_t adr);

uint8_t write_byte(uint8_t data);
uint8_t read_byte(void);
uint8_t read_protection_reg(uint32_t adr);
uint8_t read_status_reg(void);

