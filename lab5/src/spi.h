/**
 *
 */

// --------------------------------------------------------- AT25DF641 OP CODES
// COMMAND LISTING , see Tab 6-1 in AT25DF641 manual (page 8)
                                                       // Fclk:ADR:DMY:DATA
                                                       // MHz : B : B : B
// READ Commands --------------------------------------------------------------
#define OPCODE_READ_ARRAY_FAST                  (0x1B) // 100 : 3 : 2 : 1+
#define OPCODE_READ_ARRAY_MEDIUM                (0x0B) //  85 : 3 : 1 : 1+
#define OPCODE_READ_ARRAY_SLOW                  (0x03) //  50 : 3 : 0 : 1+
#define OPCODE_DUAL_OUTPUT_READ_ARRAY           (0x3B) //  85 : 3 : 1 : 1+
// Programm and Erase Commands ------------------------------------------------
#define OPCODE_BLOCK_ERASE_4KB                  (0x20) // 100 : 3 : 0 : 0
#define OPCODE_BLOCK_ERASE_32KB                 (0x52) // 100 : 3 : 0 : 0
#define OPCODE_BLOCK_ERASE_64KB                 (0xD8) // 100 : 3 : 0 : 0
#define OPCODE_CHIP_ERASE                       (0x60) // 100 : 0 : 0 : 0
#define OPCODE_CHIP_ERASE_ALTERNATIVE           (0xC7) // 100 : 0 : 0 : 0
#define OPCODE_BYTE_PAGE_PROGRAM                (0x02) // 100 : 3 : 0 : 1+
#define OPCODE_DUAL_INPUT_BYTE_PAGE_PROGRAM     (0xA2) // 100 : 3 : 0 : 1+
#define OPCODE_PROGRAM_ERASE_SUSPEND            (0xB0) // 100 : 0 : 0 : 0
#define OPCODE_PROGRAM_ERASE_RESUME             (0xD0) // 100 : 0 : 0 : 0
// Protection Commands --------------------------------------------------------
#define OPCODE_WRITE_ENABLE                     (0x06) // 100 : 0 : 0 : 0
#define OPCODE_WRITE_DISABLE                    (0x04) // 100 : 0 : 0 : 0
#define OPCODE_PROTECT_SECTOR                   (0x36) // 100 : 3 : 0 : 0
#define OPCODE_UNPROTECTET_SECTOR               (0x39) // 100 : 3 : 0 : 0
  //,GLOBAL_PROTECT_UNPROTECT : Use WRITE_STATUS_REGISTER_BYTE_1
#define OPCODE_READ_SECTOR_PROTECTION_REGISTERS (0x3C) // 100 : 3 : 0 : 1+
// Security Commands ----------------------------------------------------------
#define OPCODE_SECTOR_LOCKDOWN                  (0x33) // 100 : 3 : 0 : 1
#define OPCODE_FREEZE_SECTOR_LOCKDOWN_STATE     (0x34) // 100 : 3 : 0 : 1
#define OPCODE_READ_SECTOR_LOCKDOWN_REGISTERS   (0x35) // 100 : 3 : 0 : 1+
#define OPCODE_PROGRAMM_OTP_SECURITY_REGISTER   (0x9B) // 100 : 3 : 0 : 1+
#define OPCODE_READ_OTP_SECURITY_REGISTER       (0x77) // 100 : 3 : 2 : 1+
// Status Register Commands ---------------------------------------------------
#define OPCODE_READ_STATUS_REGISTER             (0x05) // 100 : 0 : 0 : 1+
#define OPCODE_WRITE_STATUS_REGISTER_BYTE_1     (0x01) // 100 : 0 : 0 : 1
#define OPCODE_WRITE_STATUS_REGISTER_BYTE_2     (0x31) // 100 : 0 : 0 : 1
// Miscellanous Commands ------------------------------------------------------
#define OPCODE_RESET                            (0xF0) // 100 : 0 : 0 : 1
#define OPCODE_READ_MANUFACTURE_AND_DEVICE_ID   (0x9F) // 100 : 0 : 0 : 1 to 4
#define OPCODE_DEEP_POWER_DOWN                  (0xB9) // 100 : 0 : 0 : 0
#define OPCODE_RESUME_FROM_DEEP_POWER_DOWN      (0xAB) // 100 : 0 : 0 : 0
// ----------------------------------------------------------------------------
// ------------------------------------- AT25DF641 STATUS REGISTER FORMAT (SRT)
                            // TYPE: DESCRIPTION 
// BYTE 1, see Tsb 11-1 in  AT25DF641 manual (page 36)
#define SRT1_SPRL    (0x80) // R/W : Sector Protection Registers Locked (0->unlocked)
//#define SRT1_RES     (0x40) //  R  : Reserved for future use
#define SRT1_EPE     (0x20) //  R  : Erase/Programm Error (0-> success)
#define SRT1_WPP     (0x10) //  R  : Write Protect (~WP) Pin Status (0->~WP is assert)
#define SRT1_SWP1    ( 0x8) //  R  : Software Protection Status MSB
#define SRT1_SWP0    ( 0x4) //  R  : Software Protection Status LSB
#define SRT1_WEL     ( 0x2) //  R  : Write Enable Latch Status hi_active
#define SRT1_RDY_BSY ( 0x1) //  R  : Ready (0) / Busy (1) Status
// BYTE 2, see Tsb 11-2 in  AT25DF641 manual (page 37)
#define SRT2_RSTE    (0x10) // R/W : Reset enabled (0 -> disabled)
#define SRT2_SLE     ( 0x8) // R/W : Sector Lockdown Enabled (0-> (Freeze) Sector Lockdown State cmd disabled )
#define SRT2_PS      ( 0x4) //  R  : Program Sustend Status (0-> No sectors are program suspended)
#define SRT2_ES      ( 0x2) //  R  : Erase Suspend Status (0-> No sectore are erase suspended)
#define SRT2_RDY_BSY ( 0x1) //  R  : Ready/Busy State (1-> Device is busy with an internal operation)

#define SECTOR_PROTECTED   (0xFF)
#define SECTOR_UNPROTECTED (0x00)
// Makros
#define BYTE_N_OF_NUMBER(N,NUM) ((uint8_t)(NUM>>(N*8)))
// functions
/**
 * Configuration of GPIO and SPI3 
*/
void init_SPI(void);
/**
 *
 */
uint32_t read_device_id(void);
/**
 *
 */
void spi_write(uint32_t adr, uint8_t *buff, uint32_t nbytes);
/**
 * 
 */
void spi_read(uint32_t adr, uint8_t *buff, uint32_t nbytes);

void assert_mem_work(void);
void deassert_mem_work(void);
void assert_mem_original(void);
void deassert_mem_original(void);
void write_enable(void);
void protectet_sector(uint32_t adr);
void unprotectet_sector(uint32_t adr);
void send_adr(uint32_t adr);

void print_manu_id(void); // with print debug
void erase_block_4kb(uint32_t adr); // with print debug

uint8_t write_byte(uint8_t data);
uint8_t read_byte(void);
uint8_t read_protection_reg(uint32_t adr);
uint16_t read_status_reg(void);  //(SRT2<<8) & SRT1

void wait_for_rdy(void);
//void check_srt(uint8_t srt1_check, uint8_t srt2_check, uint8_t isWaiting);
