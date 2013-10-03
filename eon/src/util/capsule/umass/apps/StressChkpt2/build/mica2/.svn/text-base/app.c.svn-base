#define dbg(mode, format, ...) ((void)0)
#define dbg_clear(mode, format, ...) ((void)0)
#define dbg_active(mode) 0
# 60 "/usr/local/avr/include/inttypes.h"
typedef signed char int8_t;




typedef unsigned char uint8_t;
# 83 "/usr/local/avr/include/inttypes.h" 3
typedef int int16_t;




typedef unsigned int uint16_t;










typedef long int32_t;




typedef unsigned long uint32_t;
#line 117
typedef long long int64_t;




typedef unsigned long long uint64_t;
#line 134
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 213 "/usr/local/lib/gcc-lib/avr/3.3-tinyos/include/stddef.h" 3
typedef unsigned int size_t;
#line 325
typedef int wchar_t;
# 60 "/usr/local/avr/include/stdlib.h"
typedef struct __nesc_unnamed4242 {
  int quot;
  int rem;
} div_t;


typedef struct __nesc_unnamed4243 {
  long quot;
  long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 151 "/usr/local/lib/gcc-lib/avr/3.3-tinyos/include/stddef.h" 3
typedef int ptrdiff_t;
# 91 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
typedef unsigned char bool;






enum __nesc_unnamed4244 {
  FALSE = 0, 
  TRUE = 1
};



enum __nesc_unnamed4245 {
  FAIL = 0, 
  SUCCESS = 1
};
static inline 

uint8_t rcombine(uint8_t r1, uint8_t r2);
typedef uint8_t  result_t;
static inline 






result_t rcombine(result_t r1, result_t r2);
#line 140
enum __nesc_unnamed4246 {
  NULL = 0x0
};
# 81 "/usr/local/avr/include/avr/pgmspace.h"
typedef void __attribute((__progmem__)) prog_void;
typedef char __attribute((__progmem__)) prog_char;
typedef unsigned char __attribute((__progmem__)) prog_uchar;
typedef int __attribute((__progmem__)) prog_int;
typedef long __attribute((__progmem__)) prog_long;
typedef long long __attribute((__progmem__)) prog_long_long;
# 139 "/tinyos-1.1.0/tinyos-1.x/tos/platform/avrmote/avrhardware.h"
enum __nesc_unnamed4247 {
  TOSH_period16 = 0x00, 
  TOSH_period32 = 0x01, 
  TOSH_period64 = 0x02, 
  TOSH_period128 = 0x03, 
  TOSH_period256 = 0x04, 
  TOSH_period512 = 0x05, 
  TOSH_period1024 = 0x06, 
  TOSH_period2048 = 0x07
};
static inline 
void TOSH_wait(void);







typedef uint8_t __nesc_atomic_t;

__nesc_atomic_t __nesc_atomic_start(void );
void __nesc_atomic_end(__nesc_atomic_t oldSreg);



__inline __nesc_atomic_t  __nesc_atomic_start(void );






__inline void  __nesc_atomic_end(__nesc_atomic_t oldSreg);
static 





__inline void __nesc_atomic_sleep(void);
static 






__inline void __nesc_enable_interrupt(void);
static 
# 101 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
void __inline TOSH_uwait(int u_sec);
#line 116
static __inline void TOSH_SET_RED_LED_PIN(void);
#line 116
static __inline void TOSH_CLR_RED_LED_PIN(void);
#line 116
static __inline void TOSH_MAKE_RED_LED_OUTPUT(void);
static __inline void TOSH_SET_GREEN_LED_PIN(void);
#line 117
static __inline void TOSH_MAKE_GREEN_LED_OUTPUT(void);
static __inline void TOSH_SET_YELLOW_LED_PIN(void);
#line 118
static __inline void TOSH_MAKE_YELLOW_LED_OUTPUT(void);

static __inline void TOSH_CLR_SERIAL_ID_PIN(void);
#line 120
static __inline void TOSH_MAKE_SERIAL_ID_INPUT(void);




static __inline void TOSH_MAKE_CC_CHP_OUT_INPUT(void);
static __inline void TOSH_MAKE_CC_PDATA_OUTPUT(void);
static __inline void TOSH_MAKE_CC_PCLK_OUTPUT(void);
static __inline void TOSH_MAKE_CC_PALE_OUTPUT(void);


static __inline void TOSH_SET_FLASH_SELECT_PIN(void);
#line 131
static __inline void TOSH_CLR_FLASH_SELECT_PIN(void);
#line 131
static __inline void TOSH_MAKE_FLASH_SELECT_OUTPUT(void);
static __inline void TOSH_SET_FLASH_CLK_PIN(void);
#line 132
static __inline void TOSH_CLR_FLASH_CLK_PIN(void);
#line 132
static __inline void TOSH_MAKE_FLASH_CLK_OUTPUT(void);
static __inline void TOSH_SET_FLASH_OUT_PIN(void);
#line 133
static __inline void TOSH_MAKE_FLASH_OUT_OUTPUT(void);
static __inline void TOSH_CLR_FLASH_IN_PIN(void);
#line 134
static __inline int TOSH_READ_FLASH_IN_PIN(void);
#line 134
static __inline void TOSH_MAKE_FLASH_IN_INPUT(void);









static __inline void TOSH_MAKE_MISO_INPUT(void);
static __inline void TOSH_MAKE_SPI_OC1C_INPUT(void);



static __inline void TOSH_MAKE_PW0_OUTPUT(void);
static __inline void TOSH_MAKE_PW1_OUTPUT(void);
static __inline void TOSH_MAKE_PW2_OUTPUT(void);
static __inline void TOSH_MAKE_PW3_OUTPUT(void);
static __inline void TOSH_MAKE_PW4_OUTPUT(void);
static __inline void TOSH_MAKE_PW5_OUTPUT(void);
static __inline void TOSH_MAKE_PW6_OUTPUT(void);
static __inline void TOSH_MAKE_PW7_OUTPUT(void);
static inline 
#line 176
void TOSH_SET_PIN_DIRECTIONS(void );
#line 206
enum __nesc_unnamed4248 {
  TOSH_ADC_PORTMAPSIZE = 12
};

enum __nesc_unnamed4249 {

  TOSH_ACTUAL_CC_RSSI_PORT = 0, 
  TOSH_ACTUAL_BANDGAP_PORT = 30, 
  TOSH_ACTUAL_GND_PORT = 31
};

enum __nesc_unnamed4250 {

  TOS_ADC_CC_RSSI_PORT = 0, 
  TOS_ADC_BANDGAP_PORT = 10, 
  TOS_ADC_GND_PORT = 11
};
# 54 "/tinyos-1.1.0/tinyos-1.x/tos/types/dbg_modes.h"
typedef long long TOS_dbg_mode;



enum __nesc_unnamed4251 {
  DBG_ALL = ~0ULL, 


  DBG_BOOT = 1ULL << 0, 
  DBG_CLOCK = 1ULL << 1, 
  DBG_TASK = 1ULL << 2, 
  DBG_SCHED = 1ULL << 3, 
  DBG_SENSOR = 1ULL << 4, 
  DBG_LED = 1ULL << 5, 
  DBG_CRYPTO = 1ULL << 6, 


  DBG_ROUTE = 1ULL << 7, 
  DBG_AM = 1ULL << 8, 
  DBG_CRC = 1ULL << 9, 
  DBG_PACKET = 1ULL << 10, 
  DBG_ENCODE = 1ULL << 11, 
  DBG_RADIO = 1ULL << 12, 


  DBG_LOG = 1ULL << 13, 
  DBG_ADC = 1ULL << 14, 
  DBG_I2C = 1ULL << 15, 
  DBG_UART = 1ULL << 16, 
  DBG_PROG = 1ULL << 17, 
  DBG_SOUNDER = 1ULL << 18, 
  DBG_TIME = 1ULL << 19, 
  DBG_POWER = 1ULL << 20, 



  DBG_SIM = 1ULL << 21, 
  DBG_QUEUE = 1ULL << 22, 
  DBG_SIMRADIO = 1ULL << 23, 
  DBG_HARD = 1ULL << 24, 
  DBG_MEM = 1ULL << 25, 



  DBG_USR1 = 1ULL << 27, 
  DBG_USR2 = 1ULL << 28, 
  DBG_USR3 = 1ULL << 29, 
  DBG_TEMP = 1ULL << 30, 

  DBG_ERROR = 1ULL << 31, 
  DBG_NONE = 0, 

  DBG_DEFAULT = DBG_ALL
};
# 59 "/tinyos-1.1.0/tinyos-1.x/tos/system/sched.c"
typedef struct __nesc_unnamed4252 {
  void (*tp)(void);
} TOSH_sched_entry_T;

enum __nesc_unnamed4253 {






  TOSH_MAX_TASKS = 8, 

  TOSH_TASK_BITMASK = TOSH_MAX_TASKS - 1
};

volatile TOSH_sched_entry_T TOSH_queue[TOSH_MAX_TASKS];
uint8_t TOSH_sched_full;
volatile uint8_t TOSH_sched_free;
static inline 
void TOSH_sched_init(void );








bool TOS_post(void (*tp)(void));
#line 102
bool  TOS_post(void (*tp)(void));
static inline 
#line 136
bool TOSH_run_next_task(void);
static inline 
#line 159
void TOSH_run_task(void);
static 
# 149 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
void *nmemcpy(void *to, const void *from, size_t n);
static inline 








void *nmemset(void *to, int val, size_t n);
# 28 "/tinyos-1.1.0/tinyos-1.x/tos/system/Ident.h"
enum __nesc_unnamed4254 {

  IDENT_MAX_PROGRAM_NAME_LENGTH = 16
};

typedef struct __nesc_unnamed4255 {

  uint32_t unix_time;
  uint32_t user_hash;
  char program_name[IDENT_MAX_PROGRAM_NAME_LENGTH];
} Ident_t;
# 65 "../../tos/platform/mica2/platform.h"
typedef uint16_t pageptr_t;
typedef uint8_t offsetptr_t;
typedef uint8_t datalen_t;
# 33 "../../tos/types/common_header.h"
struct flashptr_t {

  pageptr_t page;
  offsetptr_t offset;
};

typedef struct flashptr_t flashptr_t;
# 40 "../../tos/types/chunk_header.h"
struct chunk_header {

  datalen_t data_len;
  uint8_t ecc;
};
typedef struct chunk_header chunk_header;
# 26 "../../tos/types/PageNAND.h"
enum __nesc_unnamed4256 {
  TOS_NAND_PAGE_SIZE = 512, 
  TOS_NAND_EXTRA_SIZE = 16, 
  TOS_NAND_ERASE_SIZE = 32
};

typedef uint32_t nandpage_t;
typedef uint16_t nandoffset_t;
# 34 "../../tos/types/app_header.h"
struct stack_header {

  flashptr_t prev_ptr;
};
typedef struct stack_header stack_header;



struct queue_header {

  flashptr_t prev_ptr;
};
typedef struct queue_header queue_header;



struct stream_header {

  flashptr_t prev_ptr;
};
typedef struct stream_header stream_header;




struct array_header {

  flashptr_t ptr[10];
};
typedef struct array_header array_header;




struct index_header {

  flashptr_t ptr[10];
};
typedef struct index_header index_header;





struct checkpoint_header {

  uint8_t state_buffer[100];
};
typedef struct checkpoint_header checkpoint_header;





struct root_header {

  uint8_t crc;
  uint16_t timestamp;
  flashptr_t root[1];
};
typedef struct root_header root_header;
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROM_platform.h"
enum __nesc_unnamed4257 {
  TOS_EEPROM_MAX_PAGES = 2048, 
  TOS_EEPROM_PAGE_SIZE = 264, 
  TOS_EEPROM_PAGE_SIZE_LOG2 = 8
};

typedef uint16_t eeprompage_t;
typedef uint16_t eeprompageoffset_t;
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.h"
enum __nesc_unnamed4258 {
  TOS_EEPROM_ERASE, 
  TOS_EEPROM_DONT_ERASE, 
  TOS_EEPROM_PREVIOUSLY_ERASED
};
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/platform/avrmote/crc.h"
uint16_t __attribute((__progmem__)) crcTable[256] = { 
0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7, 
0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef, 
0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6, 
0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de, 
0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485, 
0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d, 
0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4, 
0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc, 
0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823, 
0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b, 
0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12, 
0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a, 
0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41, 
0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49, 
0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70, 
0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78, 
0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f, 
0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067, 
0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e, 
0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256, 
0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d, 
0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405, 
0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c, 
0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634, 
0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab, 
0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3, 
0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a, 
0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92, 
0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9, 
0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1, 
0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8, 
0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0 };
static inline 

uint16_t crcByte(uint16_t oldCrc, uint8_t byte);
static  result_t PotM$Pot$init(uint8_t arg_0x8545748);
static  result_t HPLPotC$Pot$finalise(void);
static  result_t HPLPotC$Pot$decrease(void);
static  result_t HPLPotC$Pot$increase(void);
static  result_t HPLInit$init(void);
static  void StressTestC$RootDirectory$initDone(result_t arg_0x8580d50);
static  void StressTestC$RootDirectory$setRootDone(result_t arg_0x85816c0);
static  void StressTestC$RootDirectory$restore(flashptr_t *arg_0x8596478);
static  void StressTestC$RootDirectory$getRootDone(result_t arg_0x8596060);
static  void StressTestC$ChunkStorage$writeDone(result_t arg_0x8573208);
static  void StressTestC$ChunkStorage$flushDone(result_t arg_0x856c998);
static  void StressTestC$ChunkStorage$readDone(result_t arg_0x856c2e8);
static  result_t StressTestC$GenericFlash$falReadDone(result_t arg_0x8586e90);
static  result_t StressTestC$GenericFlash$initDone(result_t arg_0x8567060);
static  result_t StressTestC$GenericFlash$writeDone(result_t arg_0x8567f50);
static  result_t StressTestC$GenericFlash$eraseDone(result_t arg_0x8584300);
static  result_t StressTestC$GenericFlash$readDone(result_t arg_0x8587ad0);
static  void StressTestC$Stream$nextDone(result_t arg_0x858d220);
static  void StressTestC$Stream$appendDone(result_t arg_0x858c470);
static  void StressTestC$Console$input(char *arg_0x8579730);
static  void StressTestC$Checkpoint$checkpointDone(result_t arg_0x858b160);
static  void StressTestC$Checkpoint$rollbackDone(result_t arg_0x858b560);
static  result_t StressTestC$StdControl$init(void);
static  result_t StressTestC$StdControl$start(void);
static  result_t ChunkStorageC$ChunkStorage$read(uint8_t arg_0x8563200, flashptr_t *arg_0x8573628, void *arg_0x8573790, datalen_t arg_0x85738e0, void *arg_0x8573a48, datalen_t *arg_0x8573bb0, bool arg_0x8573d10, bool *arg_0x8573e70);
static  void ChunkStorageC$ChunkStorage$default$writeDone(uint8_t arg_0x8563200, result_t arg_0x8573208);
static  void ChunkStorageC$ChunkStorage$default$flushDone(uint8_t arg_0x8563200, result_t arg_0x856c998);
static  result_t ChunkStorageC$ChunkStorage$flush(uint8_t arg_0x8563200);
static  result_t ChunkStorageC$ChunkStorage$write(uint8_t arg_0x8563200, void *arg_0x8572708, datalen_t arg_0x8572858, void *arg_0x85729c0, datalen_t arg_0x8572b10, bool arg_0x8572c70, flashptr_t *arg_0x8572de0);
static  void ChunkStorageC$ChunkStorage$default$readDone(uint8_t arg_0x8563200, result_t arg_0x856c2e8);
static  result_t ChunkStorageC$GenericFlash$falReadDone(result_t arg_0x8586e90);
static  result_t ChunkStorageC$GenericFlash$initDone(result_t arg_0x8567060);
static  result_t ChunkStorageC$GenericFlash$writeDone(result_t arg_0x8567f50);
static  result_t ChunkStorageC$GenericFlash$eraseDone(result_t arg_0x8584300);
static  result_t ChunkStorageC$GenericFlash$readDone(result_t arg_0x8587ad0);
static  void ChunkStorageC$Compaction$compactionDone(result_t arg_0x85d2460);
static  result_t ChunkStorageC$Serialize$restore(uint8_t *arg_0x85c70d8, datalen_t *arg_0x85c7240);
static  result_t ChunkStorageC$Serialize$checkpoint(uint8_t *arg_0x85c6b50, datalen_t *arg_0x85c6cb8);
static  void ChunkStorageC$Console$input(char *arg_0x8579730);
static  result_t ChunkStorageC$StdControl$init(void);
static  result_t ChunkStorageC$StdControl$start(void);
static  result_t FlashM$PageEEPROM$syncDone(result_t arg_0x8629190);
static  result_t FlashM$PageEEPROM$flushDone(result_t arg_0x8629c60);
static  result_t FlashM$PageEEPROM$writeDone(result_t arg_0x8627d40);
static  result_t FlashM$PageEEPROM$eraseDone(result_t arg_0x86286c8);
static  result_t FlashM$PageEEPROM$computeCrcDone(result_t arg_0x862fc70, uint16_t arg_0x862fdc0);
static  result_t FlashM$PageEEPROM$readDone(result_t arg_0x862e8c0);
static  result_t FlashM$GenericFlash$default$falReadDone(uint8_t arg_0x8615d00, result_t arg_0x8586e90);
static  result_t FlashM$GenericFlash$default$initDone(uint8_t arg_0x8615d00, result_t arg_0x8567060);
static  result_t FlashM$GenericFlash$init(uint8_t arg_0x8615d00);
static  pageptr_t FlashM$GenericFlash$numPages(uint8_t arg_0x8615d00);
static  result_t FlashM$GenericFlash$default$writeDone(uint8_t arg_0x8615d00, result_t arg_0x8567f50);
static  result_t FlashM$GenericFlash$read(uint8_t arg_0x8615d00, pageptr_t arg_0x8587298, offsetptr_t arg_0x85873e8, void *arg_0x8587558, datalen_t arg_0x85876a8);
static  result_t FlashM$GenericFlash$erase(uint8_t arg_0x8615d00, pageptr_t arg_0x8587ed8);
static  result_t FlashM$GenericFlash$default$eraseDone(uint8_t arg_0x8615d00, result_t arg_0x8584300);
static  result_t FlashM$GenericFlash$write(uint8_t arg_0x8615d00, pageptr_t arg_0x8567720, offsetptr_t arg_0x8567870, void *arg_0x85679d8, datalen_t arg_0x8567b28);
static  result_t FlashM$GenericFlash$falRead(uint8_t arg_0x8615d00, pageptr_t arg_0x8586370, offsetptr_t arg_0x85864c0, void *arg_0x8586628, void *arg_0x8586798, datalen_t arg_0x85868e8, void *arg_0x8586a58);
static  result_t FlashM$GenericFlash$default$readDone(uint8_t arg_0x8615d00, result_t arg_0x8587ad0);
static  result_t PageEEPROMM$PageEEPROM$read(eeprompage_t arg_0x862e080, eeprompageoffset_t arg_0x862e1d8, void *arg_0x862e340, eeprompageoffset_t arg_0x862e498);
static  result_t PageEEPROMM$PageEEPROM$erase(eeprompage_t arg_0x8628160, uint8_t arg_0x86282b0);
static  result_t PageEEPROMM$PageEEPROM$flush(eeprompage_t arg_0x8629598);
static  result_t PageEEPROMM$PageEEPROM$write(eeprompage_t arg_0x8627500, eeprompageoffset_t arg_0x8627658, void *arg_0x86277c0, eeprompageoffset_t arg_0x8627918);
static  result_t PageEEPROMM$FlashSelect$notifyHigh(void);
static  result_t PageEEPROMM$StdControl$init(void);
static  result_t PageEEPROMM$StdControl$start(void);
static  result_t PageEEPROMM$FlashIdle$available(void);
static  result_t PageEEPROMShare$PageEEPROM$default$syncDone(uint8_t arg_0x86ac4a0, result_t arg_0x8629190);
static  result_t PageEEPROMShare$PageEEPROM$default$flushDone(uint8_t arg_0x86ac4a0, result_t arg_0x8629c60);
static  result_t PageEEPROMShare$PageEEPROM$read(uint8_t arg_0x86ac4a0, eeprompage_t arg_0x862e080, eeprompageoffset_t arg_0x862e1d8, void *arg_0x862e340, eeprompageoffset_t arg_0x862e498);
static  result_t PageEEPROMShare$PageEEPROM$default$writeDone(uint8_t arg_0x86ac4a0, result_t arg_0x8627d40);
static  result_t PageEEPROMShare$PageEEPROM$erase(uint8_t arg_0x86ac4a0, eeprompage_t arg_0x8628160, uint8_t arg_0x86282b0);
static  result_t PageEEPROMShare$PageEEPROM$default$eraseDone(uint8_t arg_0x86ac4a0, result_t arg_0x86286c8);
static  result_t PageEEPROMShare$PageEEPROM$default$computeCrcDone(uint8_t arg_0x86ac4a0, result_t arg_0x862fc70, uint16_t arg_0x862fdc0);
static  result_t PageEEPROMShare$PageEEPROM$flush(uint8_t arg_0x86ac4a0, eeprompage_t arg_0x8629598);
static  result_t PageEEPROMShare$PageEEPROM$write(uint8_t arg_0x86ac4a0, eeprompage_t arg_0x8627500, eeprompageoffset_t arg_0x8627658, void *arg_0x86277c0, eeprompageoffset_t arg_0x8627918);
static  result_t PageEEPROMShare$PageEEPROM$default$readDone(uint8_t arg_0x86ac4a0, result_t arg_0x862e8c0);
static  result_t PageEEPROMShare$ActualEEPROM$syncDone(result_t arg_0x8629190);
static  result_t PageEEPROMShare$ActualEEPROM$flushDone(result_t arg_0x8629c60);
static  result_t PageEEPROMShare$ActualEEPROM$writeDone(result_t arg_0x8627d40);
static  result_t PageEEPROMShare$ActualEEPROM$eraseDone(result_t arg_0x86286c8);
static  result_t PageEEPROMShare$ActualEEPROM$computeCrcDone(result_t arg_0x862fc70, uint16_t arg_0x862fdc0);
static  result_t PageEEPROMShare$ActualEEPROM$readDone(result_t arg_0x862e8c0);
static  bool HPLFlash$getCompareStatus(void);
static   result_t HPLFlash$FlashSelect$low(void);
static   result_t HPLFlash$FlashSelect$high(bool arg_0x8659af0);
static  result_t HPLFlash$FlashControl$init(void);
static  result_t HPLFlash$FlashControl$start(void);
static   uint8_t HPLFlash$FlashSPI$txByte(uint8_t arg_0x8665508);
static  result_t HPLFlash$FlashIdle$wait(void);
static   result_t ConsoleC$HPLUART$get(uint8_t arg_0x8704f80);
static   result_t ConsoleC$HPLUART$putDone(void);
static  result_t ConsoleC$Console$decimal(int32_t arg_0x8578880);
static  result_t ConsoleC$Console$string(char *arg_0x8578480);
static  result_t ConsoleC$Console$init(void);
static   result_t LedsC$Leds$init(void);
static   result_t LedsC$Leds$redOn(void);
static  void StackC$ChunkStorage$writeDone(result_t arg_0x8573208);
static  void StackC$ChunkStorage$flushDone(result_t arg_0x856c998);
static  void StackC$ChunkStorage$readDone(result_t arg_0x856c2e8);
static  result_t StackC$Stack$init(uint8_t arg_0x871b3a0, bool arg_0x872e158);
static  void StackC$Stack$default$popDone(uint8_t arg_0x871b3a0, result_t arg_0x872f5b0);
static  result_t StackC$Stack$push(uint8_t arg_0x871b3a0, void *arg_0x872e568, datalen_t arg_0x872e6b8, flashptr_t *arg_0x872e828);
static  void StackC$Stack$default$pushDone(uint8_t arg_0x871b3a0, result_t arg_0x872ec38);
static  result_t StackC$Stack$pop(uint8_t arg_0x871b3a0, void *arg_0x872f048, datalen_t *arg_0x872f1b0);
static  void StackC$Stack$default$topDone(uint8_t arg_0x871b3a0, result_t arg_0x872ff28);
static  void StackC$Console$input(char *arg_0x8579730);
static  void StackC$RootPtrAccess$setPtr(uint8_t arg_0x872b008, flashptr_t *arg_0x872be18);
static  void StackC$RootPtrAccess$getPtr(uint8_t arg_0x872b008, flashptr_t *arg_0x8728248);
static   result_t HPLUART0M$UART$init(void);
static   result_t HPLUART0M$UART$put(uint8_t arg_0x8704a80);
static  uint8_t Crc8C$Crc8$crc8(uint8_t *arg_0x85d36c8, uint16_t arg_0x85d3818, uint8_t arg_0x85d3960);
static  void StreamC$Compaction$default$compactionDone(uint8_t arg_0x8760a08, result_t arg_0x85d2460);
static  result_t StreamC$Compaction$compact(uint8_t arg_0x8760a08, uint8_t arg_0x85d2060);
static  void StreamC$ChunkStorage$writeDone(result_t arg_0x8573208);
static  void StreamC$ChunkStorage$flushDone(result_t arg_0x856c998);
static  void StreamC$ChunkStorage$readDone(result_t arg_0x856c2e8);
static  result_t StreamC$Serialize$restore(uint8_t arg_0x8760430, uint8_t *arg_0x85c70d8, datalen_t *arg_0x85c7240);
static  result_t StreamC$Serialize$checkpoint(uint8_t arg_0x8760430, uint8_t *arg_0x85c6b50, datalen_t *arg_0x85c6cb8);
static  void StreamC$Stream$default$nextDone(uint8_t arg_0x8765b20, result_t arg_0x858d220);
static  result_t StreamC$Stream$init(uint8_t arg_0x8765b20, bool arg_0x8591950);
static  result_t StreamC$Stream$start_traversal(uint8_t arg_0x8765b20, flashptr_t *arg_0x858c8a0);
static  void StreamC$Stream$default$appendDone(uint8_t arg_0x8765b20, result_t arg_0x858c470);
static  result_t StreamC$Stream$append(uint8_t arg_0x8765b20, void *arg_0x8591d60, datalen_t arg_0x8591eb0, flashptr_t *arg_0x858c060);
static  result_t StreamC$Stream$next(uint8_t arg_0x8765b20, void *arg_0x858ccb0, datalen_t *arg_0x858ce18);
static  void StreamC$Stack$popDone(result_t arg_0x872f5b0);
static  void StreamC$Stack$pushDone(result_t arg_0x872ec38);
static  void StreamC$Stack$topDone(result_t arg_0x872ff28);
static  void StreamC$Console$input(char *arg_0x8579730);
static  void CheckpointC$RootDirectory$initDone(result_t arg_0x8580d50);
static  void CheckpointC$RootDirectory$setRootDone(result_t arg_0x85816c0);
static  void CheckpointC$RootDirectory$restore(flashptr_t *arg_0x8596478);
static  void CheckpointC$RootDirectory$getRootDone(result_t arg_0x8596060);
static  void CheckpointC$ChunkStorage$writeDone(result_t arg_0x8573208);
static  void CheckpointC$ChunkStorage$flushDone(result_t arg_0x856c998);
static  void CheckpointC$ChunkStorage$readDone(result_t arg_0x856c2e8);
static  void CheckpointC$Stack$popDone(result_t arg_0x872f5b0);
static  void CheckpointC$Stack$pushDone(result_t arg_0x872ec38);
static  void CheckpointC$Stack$topDone(result_t arg_0x872ff28);
static  void CheckpointC$Console$input(char *arg_0x8579730);
static  result_t CheckpointC$Checkpoint$rollback(void);
static  result_t CheckpointC$Checkpoint$init(uint8_t arg_0x858a7f0);
static  result_t CheckpointC$Checkpoint$checkpoint(void);
static  result_t RootDirectoryM$RootDirectory$getRoot(uint8_t arg_0x8581ac0, flashptr_t *arg_0x8581c28);
static  result_t RootDirectoryM$RootDirectory$init(void);
static  result_t RootDirectoryM$RootDirectory$setRoot(uint8_t arg_0x8581150, flashptr_t *arg_0x85812b8);
static  result_t RootDirectoryM$GenericFlash$falReadDone(result_t arg_0x8586e90);
static  result_t RootDirectoryM$GenericFlash$initDone(result_t arg_0x8567060);
static  result_t RootDirectoryM$GenericFlash$writeDone(result_t arg_0x8567f50);
static  result_t RootDirectoryM$GenericFlash$eraseDone(result_t arg_0x8584300);
static  result_t RootDirectoryM$GenericFlash$readDone(result_t arg_0x8587ad0);
static  void RootDirectoryM$Console$input(char *arg_0x8579730);
static   uint16_t SysTimeM$SysTime$getTime16(void);
static  result_t SysTimeM$StdControl$init(void);
static  result_t SysTimeM$StdControl$start(void);
static  
# 47 "/tinyos-1.1.0/tinyos-1.x/tos/system/RealMain.nc"
result_t RealMain$hardwareInit(void);
static  
# 78 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Pot.nc"
result_t RealMain$Pot$init(uint8_t arg_0x8545748);
static  
# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
result_t RealMain$StdControl$init(void);
static  





result_t RealMain$StdControl$start(void);
# 54 "/tinyos-1.1.0/tinyos-1.x/tos/system/RealMain.nc"
int   main(void);
static  
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLPot.nc"
result_t PotM$HPLPot$finalise(void);
static  
#line 59
result_t PotM$HPLPot$decrease(void);
static  






result_t PotM$HPLPot$increase(void);
# 91 "/tinyos-1.1.0/tinyos-1.x/tos/system/PotM.nc"
uint8_t PotM$potSetting;
static inline 
void PotM$setPot(uint8_t value);
static inline  
#line 106
result_t PotM$Pot$init(uint8_t initialSetting);
static inline  
# 57 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLPotC.nc"
result_t HPLPotC$Pot$decrease(void);
static inline  







result_t HPLPotC$Pot$increase(void);
static inline  







result_t HPLPotC$Pot$finalise(void);
static inline  
# 57 "/tinyos-1.1.0/tinyos-1.x/tos/platform/avrmote/HPLInit.nc"
result_t HPLInit$init(void);
static  
# 31 "../../tos/interfaces/RootDirectory.nc"
result_t StressTestC$RootDirectory$init(void);
static  
# 54 "../../tos/interfaces/ChunkStorage.nc"
result_t StressTestC$ChunkStorage$flush(void);
static  
# 48 "../../tos/interfaces/GenericFlash.nc"
result_t StressTestC$GenericFlash$erase(pageptr_t arg_0x8587ed8);
static  
# 31 "../../tos/interfaces/Stream.nc"
result_t StressTestC$Stream$init(bool arg_0x8591950);
static  






result_t StressTestC$Stream$start_traversal(flashptr_t *arg_0x858c8a0);
static  
#line 34
result_t StressTestC$Stream$append(void *arg_0x8591d60, datalen_t arg_0x8591eb0, flashptr_t *arg_0x858c060);
static  






result_t StressTestC$Stream$next(void *arg_0x858ccb0, datalen_t *arg_0x858ce18);
static   
# 56 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t StressTestC$Leds$init(void);
static   






result_t StressTestC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t StressTestC$Console$decimal(int32_t arg_0x8578880);
static  
#line 10
result_t StressTestC$Console$string(char *arg_0x8578480);
static  
#line 9
result_t StressTestC$Console$init(void);
static  
# 35 "../../tos/interfaces/Checkpoint.nc"
result_t StressTestC$Checkpoint$rollback(void);
static  
#line 31
result_t StressTestC$Checkpoint$init(uint8_t arg_0x858a7f0);
static  
result_t StressTestC$Checkpoint$checkpoint(void);
# 23 "StressTestC.nc"
uint8_t StressTestC$i_[2];
#line 23
uint8_t StressTestC$i[2];
uint16_t StressTestC$j;
#line 24
uint16_t StressTestC$j_;

bool StressTestC$busy;
int StressTestC$count = 0;
uint16_t StressTestC$pages;
#line 28
uint16_t StressTestC$current;
flashptr_t StressTestC$someptr;
datalen_t StressTestC$len;
static  

void StressTestC$format(void);
static inline  
void StressTestC$write_flush(void);
static  







void StressTestC$ChunkStorage$writeDone(result_t res);
static  







void StressTestC$ChunkStorage$flushDone(result_t res);
static  







void StressTestC$ChunkStorage$readDone(result_t res);
static inline  








void StressTestC$check_checkpt(void);
static inline  








void StressTestC$Checkpoint$checkpointDone(result_t res);
static inline  







void StressTestC$check_rollback(void);
static inline  








void StressTestC$Checkpoint$rollbackDone(result_t res);
static inline  







void StressTestC$check_stream_append(void);
static inline  








void StressTestC$Stream$appendDone(result_t res);
static inline  
#line 142
void StressTestC$check_stream_next(void);
static inline  







void StressTestC$Stream$nextDone(result_t res);
static inline  
#line 169
result_t StressTestC$StdControl$init(void);
static inline  
#line 184
result_t StressTestC$StdControl$start(void);
static inline  
#line 200
void StressTestC$Console$input(char *s);
static  
#line 246
void StressTestC$format(void);
static inline  









result_t StressTestC$GenericFlash$eraseDone(result_t r);
static inline  
#line 286
result_t StressTestC$GenericFlash$initDone(result_t r);
static inline  




result_t StressTestC$GenericFlash$writeDone(result_t r);
static inline  



result_t StressTestC$GenericFlash$readDone(result_t r);
static inline  



result_t StressTestC$GenericFlash$falReadDone(result_t r);
static inline  



void StressTestC$RootDirectory$initDone(result_t result);
static inline  



void StressTestC$RootDirectory$setRootDone(result_t result);
static inline  


void StressTestC$RootDirectory$getRootDone(result_t res);
static inline  


void StressTestC$RootDirectory$restore(flashptr_t *restore_ptr);
static  
# 40 "../../tos/interfaces/ChunkStorage.nc"
void ChunkStorageC$ChunkStorage$writeDone(
# 33 "../../tos/system/ChunkStorageC.nc"
uint8_t arg_0x8563200, 
# 40 "../../tos/interfaces/ChunkStorage.nc"
result_t arg_0x8573208);
static  
#line 55
void ChunkStorageC$ChunkStorage$flushDone(
# 33 "../../tos/system/ChunkStorageC.nc"
uint8_t arg_0x8563200, 
# 55 "../../tos/interfaces/ChunkStorage.nc"
result_t arg_0x856c998);
static  
#line 49
void ChunkStorageC$ChunkStorage$readDone(
# 33 "../../tos/system/ChunkStorageC.nc"
uint8_t arg_0x8563200, 
# 49 "../../tos/interfaces/ChunkStorage.nc"
result_t arg_0x856c2e8);
static  
# 29 "../../tos/interfaces/GenericFlash.nc"
result_t ChunkStorageC$GenericFlash$init(void);
static  

pageptr_t ChunkStorageC$GenericFlash$numPages(void);
static  
#line 48
result_t ChunkStorageC$GenericFlash$erase(pageptr_t arg_0x8587ed8);
static  
#line 34
result_t ChunkStorageC$GenericFlash$write(pageptr_t arg_0x8567720, offsetptr_t arg_0x8567870, 
void *arg_0x85679d8, datalen_t arg_0x8567b28);
static  

result_t ChunkStorageC$GenericFlash$falRead(pageptr_t arg_0x8586370, offsetptr_t arg_0x85864c0, 
void *arg_0x8586628, 
void *arg_0x8586798, datalen_t arg_0x85868e8, 
void *arg_0x8586a58);
static  
# 28 "../../tos/interfaces/Compaction.nc"
result_t ChunkStorageC$Compaction$compact(uint8_t arg_0x85d2060);
static  
# 29 "../../tos/interfaces/Crc8.nc"
uint8_t ChunkStorageC$Crc8$crc8(uint8_t *arg_0x85d36c8, uint16_t arg_0x85d3818, uint8_t arg_0x85d3960);
static   
# 56 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t ChunkStorageC$Leds$init(void);
static   






result_t ChunkStorageC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t ChunkStorageC$Console$decimal(int32_t arg_0x8578880);
static  
#line 10
result_t ChunkStorageC$Console$string(char *arg_0x8578480);
# 49 "../../tos/system/ChunkStorageC.nc"
enum ChunkStorageC$__nesc_unnamed4259 {
#line 49
  ChunkStorageC$FLUSHING, ChunkStorageC$WRITING, ChunkStorageC$READING1, ChunkStorageC$READING2
};

pageptr_t ChunkStorageC$page_ptr;

offsetptr_t ChunkStorageC$offset_ptr;

uint16_t ChunkStorageC$cache_ptr;

uint8_t ChunkStorageC$write_buffer[256];


bool ChunkStorageC$chunkbusy = FALSE;
uint8_t ChunkStorageC$state;
pageptr_t ChunkStorageC$total_pages;
bool ChunkStorageC$flashFull = FALSE;
#line 64
bool ChunkStorageC$writeBufferValid = FALSE;

result_t ChunkStorageC$res;
uint8_t ChunkStorageC$if_id;
static inline 


result_t ChunkStorageC$readBuffer(offsetptr_t ptr);
static void ChunkStorageC$write_to_cache(void);


void *ChunkStorageC$data1;
#line 75
void *ChunkStorageC$data2;
datalen_t ChunkStorageC$len1;
#line 76
datalen_t ChunkStorageC$len_data;
#line 76
datalen_t *ChunkStorageC$rlen2;
bool ChunkStorageC$computeEcc;
#line 77
bool *ChunkStorageC$ecc;
flashptr_t ChunkStorageC$seekptr;
#line 78
flashptr_t *ChunkStorageC$save_ptr;
uint8_t ChunkStorageC$header_buffer[sizeof(chunk_header )];
static 




result_t ChunkStorageC$lock(void);
static inline 
#line 105
void ChunkStorageC$unlock(void);
static inline  




result_t ChunkStorageC$StdControl$init(void);
static inline  
#line 132
result_t ChunkStorageC$StdControl$start(void);
static inline  








result_t ChunkStorageC$GenericFlash$initDone(result_t r);
static inline  
#line 155
void ChunkStorageC$flushDoneRespond(void);
static 
#line 178
result_t ChunkStorageC$flush_write_buffer(void);
static inline  
#line 247
void ChunkStorageC$eraser(void);
static 
#line 270
void ChunkStorageC$post_flushing_buffer(void);
static inline  
#line 305
void ChunkStorageC$Compaction$compactionDone(result_t r);
static  





result_t ChunkStorageC$ChunkStorage$flush(uint8_t id);
static  
#line 348
result_t ChunkStorageC$ChunkStorage$write(uint8_t id, void *data1_, datalen_t len1_, 
void *data2_, datalen_t len2_, 
bool computeEcc_, 
flashptr_t *save_ptr_);
static inline  
#line 435
void ChunkStorageC$writeDoneRespond(void);
static 
#line 455
void ChunkStorageC$write_to_cache(void);
static  
#line 514
result_t ChunkStorageC$GenericFlash$writeDone(result_t result);
static inline  
#line 562
void ChunkStorageC$readDoneRespond(void);
static  
#line 579
result_t ChunkStorageC$ChunkStorage$read(uint8_t id, flashptr_t *ptr_, 
void *data1_, datalen_t len1_, 
void *data2_, datalen_t *len2_, 
bool checkEcc_, bool *ecc_);
static inline 
#line 660
result_t ChunkStorageC$readBuffer(offsetptr_t cacheptr);
static  
#line 709
result_t ChunkStorageC$GenericFlash$falReadDone(result_t result);
static inline  
#line 750
result_t ChunkStorageC$GenericFlash$eraseDone(result_t result);
static inline  





result_t ChunkStorageC$GenericFlash$readDone(result_t result);
static inline  



result_t ChunkStorageC$Serialize$checkpoint(uint8_t *buffer, datalen_t *len);
static inline  
#line 781
result_t ChunkStorageC$Serialize$restore(uint8_t *buffer, datalen_t *len);
static inline   
#line 802
void ChunkStorageC$ChunkStorage$default$readDone(uint8_t id, result_t r);
static inline   

void ChunkStorageC$ChunkStorage$default$writeDone(uint8_t id, result_t r);
static inline   

void ChunkStorageC$ChunkStorage$default$flushDone(uint8_t id, result_t r);
static inline  

void ChunkStorageC$Console$input(char *s);
static  
# 48 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t FlashM$PageEEPROM$read(eeprompage_t arg_0x862e080, eeprompageoffset_t arg_0x862e1d8, 
void *arg_0x862e340, eeprompageoffset_t arg_0x862e498);
static  
#line 37
result_t FlashM$PageEEPROM$erase(eeprompage_t arg_0x8628160, uint8_t arg_0x86282b0);
static  





result_t FlashM$PageEEPROM$flush(eeprompage_t arg_0x8629598);
static  
#line 33
result_t FlashM$PageEEPROM$write(eeprompage_t arg_0x8627500, eeprompageoffset_t arg_0x8627658, 
void *arg_0x86277c0, eeprompageoffset_t arg_0x8627918);
static  
# 42 "../../tos/interfaces/GenericFlash.nc"
result_t FlashM$GenericFlash$falReadDone(
# 30 "../../tos/platform/mica2/FlashM.nc"
uint8_t arg_0x8615d00, 
# 42 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8586e90);
static  
#line 30
result_t FlashM$GenericFlash$initDone(
# 30 "../../tos/platform/mica2/FlashM.nc"
uint8_t arg_0x8615d00, 
# 30 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8567060);
static  




result_t FlashM$GenericFlash$writeDone(
# 30 "../../tos/platform/mica2/FlashM.nc"
uint8_t arg_0x8615d00, 
# 36 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8567f50);
static  
#line 49
result_t FlashM$GenericFlash$eraseDone(
# 30 "../../tos/platform/mica2/FlashM.nc"
uint8_t arg_0x8615d00, 
# 49 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8584300);
static  
#line 46
result_t FlashM$GenericFlash$readDone(
# 30 "../../tos/platform/mica2/FlashM.nc"
uint8_t arg_0x8615d00, 
# 46 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8587ad0);
# 42 "../../tos/platform/mica2/FlashM.nc"
pageptr_t FlashM$Tpage;

uint8_t FlashM$Tid;
static inline  
void FlashM$initDone(void);
static inline  



result_t FlashM$GenericFlash$init(uint8_t id);
static inline  






pageptr_t FlashM$GenericFlash$numPages(uint8_t id);
static inline  



result_t FlashM$GenericFlash$write(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *data, datalen_t len);
static inline  





result_t FlashM$PageEEPROM$writeDone(result_t res);
static inline  
#line 89
result_t FlashM$PageEEPROM$flushDone(result_t res);
#line 101
enum FlashM$__nesc_unnamed4260 {
#line 101
  FlashM$FAL_ONE, FlashM$FAL_TWO, FlashM$READ
};
#line 102
uint8_t FlashM$headerBuf[10];
bool FlashM$state;
datalen_t FlashM$Tdata_len;
#line 104
datalen_t FlashM$Tapp_len;
offsetptr_t FlashM$Toffset;
void *FlashM$Theader;
#line 106
void *FlashM$Tapp_buff;
#line 106
void *FlashM$Tdata_buff;
static inline  result_t FlashM$GenericFlash$falRead(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *header, 
void *app_buff, datalen_t app_len, 
void *data_buff);
static inline  
#line 131
void FlashM$readData(void);
static inline  
#line 153
result_t FlashM$PageEEPROM$readDone(result_t res);
static inline  
#line 211
result_t FlashM$GenericFlash$read(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *app_buff, datalen_t app_len);
static inline  
#line 231
result_t FlashM$GenericFlash$erase(uint8_t id, pageptr_t page);
static inline  
#line 244
result_t FlashM$PageEEPROM$eraseDone(result_t res);
static inline  





result_t FlashM$PageEEPROM$syncDone(result_t result);
static inline  



result_t FlashM$PageEEPROM$computeCrcDone(result_t result, uint16_t crc);
static inline   



result_t FlashM$GenericFlash$default$initDone(uint8_t id, result_t result);
static inline   



result_t FlashM$GenericFlash$default$writeDone(uint8_t id, result_t result);
static inline   



result_t FlashM$GenericFlash$default$readDone(uint8_t id, result_t result);
static inline   



result_t FlashM$GenericFlash$default$eraseDone(uint8_t id, result_t result);
static inline   



result_t FlashM$GenericFlash$default$falReadDone(uint8_t id, result_t result);
static  
# 43 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
bool PageEEPROMM$getCompareStatus(void);
static  
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t PageEEPROMM$PageEEPROM$syncDone(result_t arg_0x8629190);
static  


result_t PageEEPROMM$PageEEPROM$flushDone(result_t arg_0x8629c60);
static  
#line 35
result_t PageEEPROMM$PageEEPROM$writeDone(result_t arg_0x8627d40);
static  

result_t PageEEPROMM$PageEEPROM$eraseDone(result_t arg_0x86286c8);
static  
#line 56
result_t PageEEPROMM$PageEEPROM$computeCrcDone(result_t arg_0x862fc70, uint16_t arg_0x862fdc0);
static  
#line 50
result_t PageEEPROMM$PageEEPROM$readDone(result_t arg_0x862e8c0);
static   
# 51 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/SlavePin.nc"
result_t PageEEPROMM$FlashSelect$low(void);
static   








result_t PageEEPROMM$FlashSelect$high(bool arg_0x8659af0);
static  
# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
result_t PageEEPROMM$FlashControl$init(void);
static  





result_t PageEEPROMM$FlashControl$start(void);
static   
# 59 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/FastSPI.nc"
uint8_t PageEEPROMM$FlashSPI$txByte(uint8_t arg_0x8665508);
static  
# 32 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Resource.nc"
result_t PageEEPROMM$FlashIdle$wait(void);
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
enum PageEEPROMM$__nesc_unnamed4261 {
  PageEEPROMM$IDLE, 
  PageEEPROMM$R_READ, 
  PageEEPROMM$R_READCRC, 
  PageEEPROMM$R_WRITE, 
  PageEEPROMM$R_ERASE, 
  PageEEPROMM$R_SYNC, 
  PageEEPROMM$R_SYNCALL, 
  PageEEPROMM$R_FLUSH, 
  PageEEPROMM$R_FLUSHALL
};
uint8_t PageEEPROMM$request;
uint8_t *PageEEPROMM$reqBuf;
eeprompageoffset_t PageEEPROMM$reqOffset;
#line 77
eeprompageoffset_t PageEEPROMM$reqBytes;
eeprompage_t PageEEPROMM$reqPage;

bool PageEEPROMM$deselectRequested;

bool PageEEPROMM$broken;
bool PageEEPROMM$compareOk;

enum PageEEPROMM$__nesc_unnamed4262 {
  PageEEPROMM$P_SEND_CMD, 
  PageEEPROMM$P_READ, 
  PageEEPROMM$P_READCRC, 
  PageEEPROMM$P_WRITE, 
  PageEEPROMM$P_FLUSH, 
  PageEEPROMM$P_FILL, 
  PageEEPROMM$P_ERASE, 
  PageEEPROMM$P_COMPARE, 
  PageEEPROMM$P_COMPARE_CHECK
};
uint8_t PageEEPROMM$cmdPhase;
#line 96
uint8_t PageEEPROMM$waiting;
uint8_t *PageEEPROMM$data;
#line 97
uint8_t PageEEPROMM$cmd[4];
uint8_t PageEEPROMM$cmdCount;
eeprompageoffset_t PageEEPROMM$dataCount;
uint16_t PageEEPROMM$computedCrc;

struct PageEEPROMM$__nesc_unnamed4263 {
  eeprompage_t page;
  bool busy : 1;
  bool clean : 1;
  bool erased : 1;
  uint8_t unchecked : 2;
} PageEEPROMM$buffer[2];
uint8_t PageEEPROMM$selected;
uint8_t PageEEPROMM$checking;
bool PageEEPROMM$flashBusy;

enum PageEEPROMM$__nesc_unnamed4264 {
  PageEEPROMM$C_READ_BUFFER1 = 0xd4, 
  PageEEPROMM$C_READ_BUFFER2 = 0xd6, 
  PageEEPROMM$C_WRITE_BUFFER1 = 0x84, 
  PageEEPROMM$C_WRITE_BUFFER2 = 0x87, 
  PageEEPROMM$C_FILL_BUFFER1 = 0x53, 
  PageEEPROMM$C_FILL_BUFFER2 = 0x55, 
  PageEEPROMM$C_FLUSH_BUFFER1 = 0x83, 
  PageEEPROMM$C_FLUSH_BUFFER2 = 0x86, 
  PageEEPROMM$C_QFLUSH_BUFFER1 = 0x88, 
  PageEEPROMM$C_QFLUSH_BUFFER2 = 0x89, 
  PageEEPROMM$C_COMPARE_BUFFER1 = 0x60, 
  PageEEPROMM$C_COMPARE_BUFFER2 = 0x61, 
  PageEEPROMM$C_REQ_STATUS = 0xd7, 
  PageEEPROMM$C_ERASE_PAGE = 0x81
};
static inline  



result_t PageEEPROMM$StdControl$init(void);
static inline  
#line 148
result_t PageEEPROMM$StdControl$start(void);
static inline 







void PageEEPROMM$selectFlash(void);
static inline 



void PageEEPROMM$requestDeselect(void);
static inline  



result_t PageEEPROMM$FlashIdle$available(void);
static 





void PageEEPROMM$requestFlashStatus(void);
static 








void PageEEPROMM$sendFlashCommand(void);
static 
#line 249
void PageEEPROMM$requestDone(result_t result);
static inline  
void PageEEPROMM$taskSuccess(void);
static inline  


void PageEEPROMM$taskFail(void);
static 


void PageEEPROMM$handleRWRequest(void);
static void PageEEPROMM$execCommand(bool wait, uint8_t reqCmd, uint8_t dontCare, 
eeprompage_t page, eeprompageoffset_t offset);
static 
void PageEEPROMM$checkBuffer(uint8_t buf);
static 





void PageEEPROMM$flushBuffer(void);
static 






void PageEEPROMM$flashCommandComplete(void);
static inline  
#line 361
result_t PageEEPROMM$FlashSelect$notifyHigh(void);
static 







void PageEEPROMM$execCommand(bool wait, uint8_t reqCmd, uint8_t dontCare, 
eeprompage_t page, eeprompageoffset_t offset);
static inline 
#line 385
void PageEEPROMM$execRWBuffer(uint8_t reqCmd, uint8_t dontCare, eeprompageoffset_t offset);
static inline 


result_t PageEEPROMM$syncOrFlushAll(uint8_t newReq);
static 
void PageEEPROMM$handleRWRequest(void);
static 
#line 480
void PageEEPROMM$requestDone(result_t result);
static 
#line 495
result_t PageEEPROMM$newRequest(uint8_t req, eeprompage_t page, 
eeprompageoffset_t offset, 
void *reqdata, eeprompageoffset_t n, 
uint16_t crc);
static inline  
#line 533
result_t PageEEPROMM$PageEEPROM$read(eeprompage_t page, eeprompageoffset_t offset, 
void *reqdata, eeprompageoffset_t n);
static inline  
#line 566
result_t PageEEPROMM$PageEEPROM$write(eeprompage_t page, eeprompageoffset_t offset, 
void *reqdata, eeprompageoffset_t n);
static inline  
#line 602
result_t PageEEPROMM$PageEEPROM$erase(eeprompage_t page, uint8_t eraseKind);
static inline 


result_t PageEEPROMM$syncOrFlush(eeprompage_t page, uint8_t newReq);
static inline  
#line 636
result_t PageEEPROMM$PageEEPROM$flush(eeprompage_t page);
static inline 


result_t PageEEPROMM$syncOrFlushAll(uint8_t newReq);
static  
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t PageEEPROMShare$PageEEPROM$syncDone(
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t arg_0x86ac4a0, 
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t arg_0x8629190);
static  


result_t PageEEPROMShare$PageEEPROM$flushDone(
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t arg_0x86ac4a0, 
# 46 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t arg_0x8629c60);
static  
#line 35
result_t PageEEPROMShare$PageEEPROM$writeDone(
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t arg_0x86ac4a0, 
# 35 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t arg_0x8627d40);
static  

result_t PageEEPROMShare$PageEEPROM$eraseDone(
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t arg_0x86ac4a0, 
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t arg_0x86286c8);
static  
#line 56
result_t PageEEPROMShare$PageEEPROM$computeCrcDone(
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t arg_0x86ac4a0, 
# 56 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t arg_0x862fc70, uint16_t arg_0x862fdc0);
static  
#line 50
result_t PageEEPROMShare$PageEEPROM$readDone(
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t arg_0x86ac4a0, 
# 50 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
result_t arg_0x862e8c0);
static  
#line 48
result_t PageEEPROMShare$ActualEEPROM$read(eeprompage_t arg_0x862e080, eeprompageoffset_t arg_0x862e1d8, 
void *arg_0x862e340, eeprompageoffset_t arg_0x862e498);
static  
#line 37
result_t PageEEPROMShare$ActualEEPROM$erase(eeprompage_t arg_0x8628160, uint8_t arg_0x86282b0);
static  





result_t PageEEPROMShare$ActualEEPROM$flush(eeprompage_t arg_0x8629598);
static  
#line 33
result_t PageEEPROMShare$ActualEEPROM$write(eeprompage_t arg_0x8627500, eeprompageoffset_t arg_0x8627658, 
void *arg_0x86277c0, eeprompageoffset_t arg_0x8627918);
# 40 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
enum PageEEPROMShare$__nesc_unnamed4265 {
  PageEEPROMShare$NCLIENTS = 1
};
uint8_t PageEEPROMShare$lastClient;
static inline 


int PageEEPROMShare$setClient(uint8_t client);
static inline 








uint8_t PageEEPROMShare$getClient(void);
static inline 
#line 70
result_t PageEEPROMShare$check(result_t requestOk);
static 







__inline  result_t PageEEPROMShare$PageEEPROM$write(uint8_t client, eeprompage_t page, eeprompageoffset_t offset, 
void *data, eeprompageoffset_t n);
static 




__inline  result_t PageEEPROMShare$ActualEEPROM$writeDone(result_t result);
static 


__inline  result_t PageEEPROMShare$PageEEPROM$erase(uint8_t client, eeprompage_t page, uint8_t eraseKind);
static 




__inline  result_t PageEEPROMShare$ActualEEPROM$eraseDone(result_t result);
static 
#line 112
__inline  result_t PageEEPROMShare$ActualEEPROM$syncDone(result_t result);
static 


__inline  result_t PageEEPROMShare$PageEEPROM$flush(uint8_t client, eeprompage_t page);
static 
#line 128
__inline  result_t PageEEPROMShare$ActualEEPROM$flushDone(result_t result);
static 


__inline  result_t PageEEPROMShare$PageEEPROM$read(uint8_t client, eeprompage_t page, eeprompageoffset_t offset, 
void *data, eeprompageoffset_t n);
static 




__inline  result_t PageEEPROMShare$ActualEEPROM$readDone(result_t result);
static 









__inline  result_t PageEEPROMShare$ActualEEPROM$computeCrcDone(result_t result, uint16_t crc);
static inline   









result_t PageEEPROMShare$PageEEPROM$default$writeDone(uint8_t client, result_t result);
static inline   


result_t PageEEPROMShare$PageEEPROM$default$eraseDone(uint8_t client, result_t result);
static inline   


result_t PageEEPROMShare$PageEEPROM$default$syncDone(uint8_t client, result_t result);
static inline   


result_t PageEEPROMShare$PageEEPROM$default$flushDone(uint8_t client, result_t result);
static inline   


result_t PageEEPROMShare$PageEEPROM$default$readDone(uint8_t client, result_t result);
static inline   


result_t PageEEPROMShare$PageEEPROM$default$computeCrcDone(uint8_t client, result_t result, uint16_t crc);
static  
# 66 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/SlavePin.nc"
result_t HPLFlash$FlashSelect$notifyHigh(void);
static  
# 33 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Resource.nc"
result_t HPLFlash$FlashIdle$available(void);
static inline  
# 58 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
result_t HPLFlash$FlashControl$init(void);
static inline  
#line 74
result_t HPLFlash$FlashControl$start(void);
static inline   







result_t HPLFlash$FlashSelect$low(void);
static inline  




void HPLFlash$sigHigh(void);
static inline   


result_t HPLFlash$FlashSelect$high(bool needEvent);
static   
#line 113
uint8_t HPLFlash$FlashSPI$txByte(uint8_t spiOut);
static inline  
#line 141
void HPLFlash$avail(void);
static inline  


result_t HPLFlash$FlashIdle$wait(void);
#line 173
void __attribute((signal))   __vector_3(void);
static inline  



bool HPLFlash$getCompareStatus(void);
static   
# 62 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
result_t ConsoleC$HPLUART$init(void);
static   
#line 80
result_t ConsoleC$HPLUART$put(uint8_t arg_0x8704a80);
static  
# 15 "../../tos/interfaces/Console.nc"
void ConsoleC$Console$input(char *arg_0x8579730);
# 16 "../../tos/lib/Util/ConsoleC.nc"
char ConsoleC$buf[128];
uint8_t ConsoleC$head;
#line 17
uint8_t ConsoleC$tail;
result_t ConsoleC$status;
bool ConsoleC$busy;
static inline  
result_t ConsoleC$Console$init(void);
static 



void ConsoleC$buffer(char c);
static 
#line 39
void ConsoleC$kick(void);
static   
#line 52
result_t ConsoleC$HPLUART$putDone(void);
static  
#line 67
result_t ConsoleC$Console$string(char *str);
static  
#line 111
result_t ConsoleC$Console$decimal(int32_t n);
#line 145
uint8_t ConsoleC$cmd[10];
#line 145
uint8_t *ConsoleC$ptr = ConsoleC$cmd;
static inline  
void ConsoleC$do_cmd(void);
static   









result_t ConsoleC$HPLUART$get(uint8_t t);
# 50 "/tinyos-1.1.0/tinyos-1.x/tos/system/LedsC.nc"
uint8_t LedsC$ledsOn;

enum LedsC$__nesc_unnamed4266 {
  LedsC$RED_BIT = 1, 
  LedsC$GREEN_BIT = 2, 
  LedsC$YELLOW_BIT = 4
};
static   
result_t LedsC$Leds$init(void);
static inline   
#line 72
result_t LedsC$Leds$redOn(void);
static  
# 45 "../../tos/interfaces/ChunkStorage.nc"
result_t StackC$ChunkStorage$read(flashptr_t *arg_0x8573628, 
void *arg_0x8573790, datalen_t arg_0x85738e0, 
void *arg_0x8573a48, datalen_t *arg_0x8573bb0, 
bool arg_0x8573d10, bool *arg_0x8573e70);
static  
#line 37
result_t StackC$ChunkStorage$write(void *arg_0x8572708, datalen_t arg_0x8572858, 
void *arg_0x85729c0, datalen_t arg_0x8572b10, 
bool arg_0x8572c70, flashptr_t *arg_0x8572de0);
static  
# 41 "../../tos/interfaces/Stack.nc"
void StackC$Stack$popDone(
# 34 "../../tos/system/StackC.nc"
uint8_t arg_0x871b3a0, 
# 41 "../../tos/interfaces/Stack.nc"
result_t arg_0x872f5b0);
static  
#line 36
void StackC$Stack$pushDone(
# 34 "../../tos/system/StackC.nc"
uint8_t arg_0x871b3a0, 
# 36 "../../tos/interfaces/Stack.nc"
result_t arg_0x872ec38);
static  








void StackC$Stack$topDone(
# 34 "../../tos/system/StackC.nc"
uint8_t arg_0x871b3a0, 
# 46 "../../tos/interfaces/Stack.nc"
result_t arg_0x872ff28);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t StackC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t StackC$Console$decimal(int32_t arg_0x8578880);
static  
#line 10
result_t StackC$Console$string(char *arg_0x8578480);
# 47 "../../tos/system/StackC.nc"
enum StackC$__nesc_unnamed4267 {
#line 47
  StackC$POP, StackC$TOP, StackC$PUSH
};
flashptr_t *StackC$Tsave_ptr;
uint8_t StackC$stackif_id;
uint8_t StackC$state;
result_t StackC$Tresult;
struct StackC$_data {

  flashptr_t head;
  bool doEcc;
} StackC$local[2];
stack_header StackC$header;


datalen_t *StackC$Tlen;
static inline  

result_t StackC$Stack$init(uint8_t id, bool ecc);
static  
#line 76
result_t StackC$Stack$push(uint8_t id, void *data, datalen_t len, 
flashptr_t *save_ptr);
static  
#line 101
void StackC$stackRespond(void);
static  
#line 116
void StackC$ChunkStorage$writeDone(result_t res);
static  
#line 140
result_t StackC$Stack$pop(uint8_t id, void *data, datalen_t *len);
static  
#line 188
void StackC$ChunkStorage$readDone(result_t res);
static inline  
#line 268
void StackC$RootPtrAccess$setPtr(uint8_t id, flashptr_t *setPtr);
static inline  
#line 282
void StackC$RootPtrAccess$getPtr(uint8_t id, flashptr_t *getPtr);
static inline  
#line 296
void StackC$ChunkStorage$flushDone(result_t res);
static inline  

void StackC$Console$input(char *s);
static inline   


void StackC$Stack$default$pushDone(uint8_t id, result_t res);
static inline   

void StackC$Stack$default$popDone(uint8_t id, result_t res);
static inline   

void StackC$Stack$default$topDone(uint8_t id, result_t res);
static   
# 88 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
result_t HPLUART0M$UART$get(uint8_t arg_0x8704f80);
static   






result_t HPLUART0M$UART$putDone(void);
static inline   
# 60 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLUART0M.nc"
result_t HPLUART0M$UART$init(void);
#line 90
void __attribute((signal))   __vector_18(void);









void __attribute((interrupt))   __vector_20(void);
static inline   



result_t HPLUART0M$UART$put(uint8_t data);
static inline 
# 32 "../../tos/system/Crc8C.nc"
uint8_t Crc8C$CrcByte(uint8_t inCrc, uint8_t inData);
static  
#line 53
uint8_t Crc8C$Crc8$crc8(uint8_t *ptr, uint16_t len, uint8_t crc_);
static  
# 30 "../../tos/interfaces/Compaction.nc"
void StreamC$Compaction$compactionDone(
# 34 "StreamC.nc"
uint8_t arg_0x8760a08, 
# 30 "../../tos/interfaces/Compaction.nc"
result_t arg_0x85d2460);
static  
# 45 "../../tos/interfaces/ChunkStorage.nc"
result_t StreamC$ChunkStorage$read(flashptr_t *arg_0x8573628, 
void *arg_0x8573790, datalen_t arg_0x85738e0, 
void *arg_0x8573a48, datalen_t *arg_0x8573bb0, 
bool arg_0x8573d10, bool *arg_0x8573e70);
static  
#line 37
result_t StreamC$ChunkStorage$write(void *arg_0x8572708, datalen_t arg_0x8572858, 
void *arg_0x85729c0, datalen_t arg_0x8572b10, 
bool arg_0x8572c70, flashptr_t *arg_0x8572de0);
static  
# 44 "../../tos/interfaces/Stream.nc"
void StreamC$Stream$nextDone(
# 32 "StreamC.nc"
uint8_t arg_0x8765b20, 
# 44 "../../tos/interfaces/Stream.nc"
result_t arg_0x858d220);
static  
#line 36
void StreamC$Stream$appendDone(
# 32 "StreamC.nc"
uint8_t arg_0x8765b20, 
# 36 "../../tos/interfaces/Stream.nc"
result_t arg_0x858c470);
static  
# 34 "../../tos/interfaces/Stack.nc"
result_t StreamC$Stack$push(void *arg_0x872e568, datalen_t arg_0x872e6b8, flashptr_t *arg_0x872e828);
static  



result_t StreamC$Stack$pop(void *arg_0x872f048, datalen_t *arg_0x872f1b0);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t StreamC$Console$decimal(int32_t arg_0x8578880);
static  
#line 10
result_t StreamC$Console$string(char *arg_0x8578480);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t StreamC$Leds$redOn(void);
# 46 "StreamC.nc"
enum StreamC$__nesc_unnamed4268 {
#line 46
  StreamC$TRAVERSE, StreamC$APPEND, StreamC$COMPACT_TRAVERSE, StreamC$COMPACT_TRAVERSE2, StreamC$CCOMPACT_APPEND
};
#line 47
uint8_t StreamC$streamif_id;
flashptr_t *StreamC$Tsave_ptr;
struct StreamC$_data {

  flashptr_t tail;
  bool doEcc;
  flashptr_t traverse;
} StreamC$local[1];
uint8_t StreamC$state;
stream_header StreamC$header;
uint16_t StreamC$compact_count = 0;


flashptr_t StreamC$compact_ptr;
#line 60
flashptr_t StreamC$ptr;
uint8_t StreamC$buff[2];
datalen_t StreamC$dlen;
bool StreamC$compact_first_write = TRUE;
static inline  
void StreamC$getData(void);
static  void StreamC$writeDataStack(void);
static  void StreamC$getDataStack(void);
static inline  void StreamC$writeDataStream(void);
static inline  








result_t StreamC$Stream$init(uint8_t id, bool ecc);
static inline  







result_t StreamC$Stream$append(uint8_t id, void *data, datalen_t len, 
flashptr_t *save_ptr);
static  
#line 117
void StreamC$ChunkStorage$writeDone(result_t res);
static inline  
#line 144
result_t StreamC$Stream$start_traversal(uint8_t id, flashptr_t *start_ptr);
static inline  








result_t StreamC$Stream$next(uint8_t id, void *data, datalen_t *len);
static  
#line 196
void StreamC$ChunkStorage$readDone(result_t res);
static inline  
#line 251
void StreamC$ChunkStorage$flushDone(result_t res);
static inline  

result_t StreamC$Serialize$checkpoint(uint8_t id, uint8_t *buffer, datalen_t *len);
static inline  
#line 273
result_t StreamC$Serialize$restore(uint8_t id, uint8_t *buffer, datalen_t *len);
static inline   
#line 292
void StreamC$Stream$default$nextDone(uint8_t id, result_t res);
static inline  

void StreamC$Console$input(char *s);
static inline  


void StreamC$getData(void);
static  
#line 324
void StreamC$writeDataStack(void);
static inline  
#line 345
void StreamC$Stack$pushDone(result_t res);
static  
#line 372
void StreamC$getDataStack(void);
static inline  
#line 407
void StreamC$getDataStack2(void);
static inline  
#line 432
void StreamC$Stack$popDone(result_t res);
static inline  
#line 459
void StreamC$writeDataStream(void);
static inline   
#line 496
void StreamC$Stream$default$appendDone(uint8_t id, result_t res);
static inline  


void StreamC$trivialReturn(void);
static inline  




result_t StreamC$Compaction$compact(uint8_t id, uint8_t againgHint);
static inline   
#line 534
void StreamC$Compaction$default$compactionDone(uint8_t id, result_t res);
static inline  

void StreamC$Stack$topDone(result_t res);
static  
# 39 "../../tos/interfaces/RootDirectory.nc"
result_t CheckpointC$RootDirectory$getRoot(uint8_t arg_0x8581ac0, flashptr_t *arg_0x8581c28);
static  
#line 35
result_t CheckpointC$RootDirectory$setRoot(uint8_t arg_0x8581150, flashptr_t *arg_0x85812b8);
static  
# 54 "../../tos/interfaces/ChunkStorage.nc"
result_t CheckpointC$ChunkStorage$flush(void);
static  
# 33 "../../tos/interfaces/Serialize.nc"
result_t CheckpointC$Serialize$restore(uint8_t *arg_0x85c70d8, datalen_t *arg_0x85c7240);
static  
#line 31
result_t CheckpointC$Serialize$checkpoint(uint8_t *arg_0x85c6b50, datalen_t *arg_0x85c6cb8);
static  
# 31 "../../tos/interfaces/Stack.nc"
result_t CheckpointC$Stack$init(bool arg_0x872e158);
static  

result_t CheckpointC$Stack$push(void *arg_0x872e568, datalen_t arg_0x872e6b8, flashptr_t *arg_0x872e828);
static  



result_t CheckpointC$Stack$pop(void *arg_0x872f048, datalen_t *arg_0x872f1b0);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t CheckpointC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t CheckpointC$Console$decimal(int32_t arg_0x8578880);
static  
#line 10
result_t CheckpointC$Console$string(char *arg_0x8578480);
static  
# 37 "../../tos/interfaces/Checkpoint.nc"
void CheckpointC$Checkpoint$checkpointDone(result_t arg_0x858b160);
static  
void CheckpointC$Checkpoint$rollbackDone(result_t arg_0x858b560);
static  
# 32 "../../tos/interfaces/RootPtrAccess.nc"
void CheckpointC$RootPtrAccess$setPtr(flashptr_t *arg_0x872be18);
static  
void CheckpointC$RootPtrAccess$getPtr(flashptr_t *arg_0x8728248);
# 47 "../../tos/system/CheckpointC.nc"
enum CheckpointC$__nesc_unnamed4269 {
#line 47
  CheckpointC$CHECKPOINTING, CheckpointC$ROLLING_BACK
};
#line 48
bool CheckpointC$busy;
result_t CheckpointC$tempResult;

struct CheckpointC$_data {

  uint8_t trans_state;
  flashptr_t root;
  checkpoint_header state;
  uint8_t id;
} CheckpointC$local[1];
static inline 
result_t CheckpointC$saveData(void);
static  void CheckpointC$signaler(void);
static inline 



result_t CheckpointC$lock(void);
static inline 
#line 85
void CheckpointC$unlock(void);
static inline  



result_t CheckpointC$Checkpoint$init(uint8_t id_);
static inline  







void CheckpointC$RootDirectory$initDone(result_t res);
static  



void CheckpointC$signaler(void);
static  
#line 122
void CheckpointC$rollBack(void);
static inline  
#line 141
result_t CheckpointC$Checkpoint$rollback(void);
static inline  
#line 157
void CheckpointC$RootDirectory$restore(flashptr_t *restore_ptr);
static inline  
#line 170
void CheckpointC$RootDirectory$getRootDone(result_t res);
static inline  
#line 194
void CheckpointC$Stack$popDone(result_t res);
static inline  
#line 237
result_t CheckpointC$Checkpoint$checkpoint(void);
static inline 
#line 262
result_t CheckpointC$saveData(void);
static inline  
#line 304
void CheckpointC$Stack$pushDone(result_t res);
static  
#line 327
void CheckpointC$ChunkStorage$flushDone(result_t res);
static inline  
#line 351
void CheckpointC$RootDirectory$setRootDone(result_t result);
static inline  
#line 366
void CheckpointC$Console$input(char *s);
static inline  


void CheckpointC$ChunkStorage$writeDone(result_t res);
static inline  


void CheckpointC$ChunkStorage$readDone(result_t res);
static inline  


void CheckpointC$Stack$topDone(result_t res);
static  
# 33 "../../tos/interfaces/RootDirectory.nc"
void RootDirectoryM$RootDirectory$initDone(result_t arg_0x8580d50);
static  


void RootDirectoryM$RootDirectory$setRootDone(result_t arg_0x85816c0);
static  
#line 49
void RootDirectoryM$RootDirectory$restore(flashptr_t *arg_0x8596478);
static  
#line 41
void RootDirectoryM$RootDirectory$getRootDone(result_t arg_0x8596060);
static  
# 44 "../../tos/interfaces/GenericFlash.nc"
result_t RootDirectoryM$GenericFlash$read(pageptr_t arg_0x8587298, offsetptr_t arg_0x85873e8, 
void *arg_0x8587558, datalen_t arg_0x85876a8);
static  

result_t RootDirectoryM$GenericFlash$erase(pageptr_t arg_0x8587ed8);
static  
#line 34
result_t RootDirectoryM$GenericFlash$write(pageptr_t arg_0x8567720, offsetptr_t arg_0x8567870, 
void *arg_0x85679d8, datalen_t arg_0x8567b28);
static  
# 29 "../../tos/interfaces/Crc8.nc"
uint8_t RootDirectoryM$Crc8$crc8(uint8_t *arg_0x85d36c8, uint16_t arg_0x85d3818, uint8_t arg_0x85d3960);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t RootDirectoryM$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t RootDirectoryM$Console$decimal(int32_t arg_0x8578880);
static  
#line 10
result_t RootDirectoryM$Console$string(char *arg_0x8578480);
static   
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/SysTime.nc"
uint16_t RootDirectoryM$SysTime$getTime16(void);
# 49 "../../tos/system/RootDirectoryM.nc"
enum RootDirectoryM$__nesc_unnamed4270 {
#line 49
  RootDirectoryM$NONE, RootDirectoryM$RECOVERING, RootDirectoryM$FINAL_RECOVERING, RootDirectoryM$SETTING, RootDirectoryM$GETTING
};
#line 50
bool RootDirectoryM$busy;
pageptr_t RootDirectoryM$page = 2;
offsetptr_t RootDirectoryM$offset = 0;
uint16_t RootDirectoryM$besttime = 0;
pageptr_t RootDirectoryM$bestpage = 0;
offsetptr_t RootDirectoryM$bestoffset = 0;

bool RootDirectoryM$loaded = FALSE;
uint8_t RootDirectoryM$state;
root_header RootDirectoryM$root;
static  
void RootDirectoryM$eraser(void);
static inline 

result_t RootDirectoryM$lock(void);
static inline 
#line 84
void RootDirectoryM$unlock(void);
static inline  
#line 101
void RootDirectoryM$signalInit(void);
static  





void RootDirectoryM$recoverRoot(void);
static inline  
#line 135
result_t RootDirectoryM$RootDirectory$init(void);
static inline  
#line 163
result_t RootDirectoryM$GenericFlash$readDone(result_t result);
static  
#line 264
result_t RootDirectoryM$RootDirectory$setRoot(uint8_t id, flashptr_t *save);
static  
#line 328
result_t RootDirectoryM$GenericFlash$writeDone(result_t result);
static  
#line 377
void RootDirectoryM$eraser(void);
static inline  
#line 393
void RootDirectoryM$signalGetRoot(void);
static inline  





result_t RootDirectoryM$RootDirectory$getRoot(uint8_t id, flashptr_t *ptr);
static inline  
#line 441
result_t RootDirectoryM$GenericFlash$eraseDone(result_t result);
static inline  



result_t RootDirectoryM$GenericFlash$falReadDone(result_t result);
static inline  



result_t RootDirectoryM$GenericFlash$initDone(result_t result);
static inline  



void RootDirectoryM$Console$input(char *s);
# 41 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/SysTimeM.nc"
uint16_t SysTimeM$currentTime;

union SysTimeM$time_u {

  struct  {

    uint16_t low;
    uint16_t high;
  } ;
  uint32_t full;
};
static inline   
uint16_t SysTimeM$SysTime$getTime16(void);
#line 83
void __attribute((signal))   __vector_29(void);
static inline  



result_t SysTimeM$StdControl$init(void);
static inline  
#line 106
result_t SysTimeM$StdControl$start(void);
# 120 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline void TOSH_CLR_SERIAL_ID_PIN(void)
#line 120
{
#line 120
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) &= ~(1 << 4);
}

#line 120
static __inline void TOSH_MAKE_SERIAL_ID_INPUT(void)
#line 120
{
#line 120
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1A + 0x20) &= ~(1 << 4);
}

#line 145
static __inline void TOSH_MAKE_SPI_OC1C_INPUT(void)
#line 145
{
#line 145
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x17 + 0x20) &= ~(1 << 7);
}

#line 144
static __inline void TOSH_MAKE_MISO_INPUT(void)
#line 144
{
#line 144
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x17 + 0x20) &= ~(1 << 3);
}

#line 127
static __inline void TOSH_MAKE_CC_PCLK_OUTPUT(void)
#line 127
{
#line 127
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x11 + 0x20) |= 1 << 6;
}

#line 126
static __inline void TOSH_MAKE_CC_PDATA_OUTPUT(void)
#line 126
{
#line 126
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x11 + 0x20) |= 1 << 7;
}

#line 128
static __inline void TOSH_MAKE_CC_PALE_OUTPUT(void)
#line 128
{
#line 128
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x11 + 0x20) |= 1 << 4;
}

#line 149
static __inline void TOSH_MAKE_PW0_OUTPUT(void)
#line 149
{
#line 149
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 0;
}

#line 150
static __inline void TOSH_MAKE_PW1_OUTPUT(void)
#line 150
{
#line 150
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 1;
}

#line 151
static __inline void TOSH_MAKE_PW2_OUTPUT(void)
#line 151
{
#line 151
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 2;
}

#line 152
static __inline void TOSH_MAKE_PW3_OUTPUT(void)
#line 152
{
#line 152
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 3;
}

#line 153
static __inline void TOSH_MAKE_PW4_OUTPUT(void)
#line 153
{
#line 153
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 4;
}

#line 154
static __inline void TOSH_MAKE_PW5_OUTPUT(void)
#line 154
{
#line 154
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 5;
}

#line 155
static __inline void TOSH_MAKE_PW6_OUTPUT(void)
#line 155
{
#line 155
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 6;
}

#line 156
static __inline void TOSH_MAKE_PW7_OUTPUT(void)
#line 156
{
#line 156
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x14 + 0x20) |= 1 << 7;
}

#line 125
static __inline void TOSH_MAKE_CC_CHP_OUT_INPUT(void)
#line 125
{
#line 125
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1A + 0x20) &= ~(1 << 6);
}

static inline 
#line 176
void TOSH_SET_PIN_DIRECTIONS(void )
{







  TOSH_MAKE_CC_CHP_OUT_INPUT();

  TOSH_MAKE_PW7_OUTPUT();
  TOSH_MAKE_PW6_OUTPUT();
  TOSH_MAKE_PW5_OUTPUT();
  TOSH_MAKE_PW4_OUTPUT();
  TOSH_MAKE_PW3_OUTPUT();
  TOSH_MAKE_PW2_OUTPUT();
  TOSH_MAKE_PW1_OUTPUT();
  TOSH_MAKE_PW0_OUTPUT();

  TOSH_MAKE_CC_PALE_OUTPUT();
  TOSH_MAKE_CC_PDATA_OUTPUT();
  TOSH_MAKE_CC_PCLK_OUTPUT();
  TOSH_MAKE_MISO_INPUT();
  TOSH_MAKE_SPI_OC1C_INPUT();

  TOSH_MAKE_SERIAL_ID_INPUT();
  TOSH_CLR_SERIAL_ID_PIN();
}

static inline  
# 57 "/tinyos-1.1.0/tinyos-1.x/tos/platform/avrmote/HPLInit.nc"
result_t HPLInit$init(void)
#line 57
{
  TOSH_SET_PIN_DIRECTIONS();
  return SUCCESS;
}

# 47 "/tinyos-1.1.0/tinyos-1.x/tos/system/RealMain.nc"
inline static  result_t RealMain$hardwareInit(void){
#line 47
  unsigned char result;
#line 47

#line 47
  result = HPLInit$init();
#line 47

#line 47
  return result;
#line 47
}
#line 47
static inline  
# 75 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLPotC.nc"
result_t HPLPotC$Pot$finalise(void)
#line 75
{


  return SUCCESS;
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLPot.nc"
inline static  result_t PotM$HPLPot$finalise(void){
#line 74
  unsigned char result;
#line 74

#line 74
  result = HPLPotC$Pot$finalise();
#line 74

#line 74
  return result;
#line 74
}
#line 74
static inline  
# 66 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLPotC.nc"
result_t HPLPotC$Pot$increase(void)
#line 66
{





  return SUCCESS;
}

# 67 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLPot.nc"
inline static  result_t PotM$HPLPot$increase(void){
#line 67
  unsigned char result;
#line 67

#line 67
  result = HPLPotC$Pot$increase();
#line 67

#line 67
  return result;
#line 67
}
#line 67
static inline  
# 57 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLPotC.nc"
result_t HPLPotC$Pot$decrease(void)
#line 57
{





  return SUCCESS;
}

# 59 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLPot.nc"
inline static  result_t PotM$HPLPot$decrease(void){
#line 59
  unsigned char result;
#line 59

#line 59
  result = HPLPotC$Pot$decrease();
#line 59

#line 59
  return result;
#line 59
}
#line 59
static inline 
# 93 "/tinyos-1.1.0/tinyos-1.x/tos/system/PotM.nc"
void PotM$setPot(uint8_t value)
#line 93
{
  uint8_t i;

#line 95
  for (i = 0; i < 151; i++) 
    PotM$HPLPot$decrease();

  for (i = 0; i < value; i++) 
    PotM$HPLPot$increase();

  PotM$HPLPot$finalise();

  PotM$potSetting = value;
}

static inline  result_t PotM$Pot$init(uint8_t initialSetting)
#line 106
{
  PotM$setPot(initialSetting);
  return SUCCESS;
}

# 78 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Pot.nc"
inline static  result_t RealMain$Pot$init(uint8_t arg_0x8545748){
#line 78
  unsigned char result;
#line 78

#line 78
  result = PotM$Pot$init(arg_0x8545748);
#line 78

#line 78
  return result;
#line 78
}
#line 78
static inline 
# 79 "/tinyos-1.1.0/tinyos-1.x/tos/system/sched.c"
void TOSH_sched_init(void )
{
  int i;

#line 82
  TOSH_sched_free = 0;
  TOSH_sched_full = 0;
  for (i = 0; i < TOSH_MAX_TASKS; i++) 
    TOSH_queue[i].tp = (void *)0;
}

static inline 
# 120 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
result_t rcombine(result_t r1, result_t r2)



{
  return r1 == FAIL ? FAIL : r2;
}

# 116 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline void TOSH_CLR_RED_LED_PIN(void)
#line 116
{
#line 116
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) &= ~(1 << 2);
}

static inline   
# 72 "/tinyos-1.1.0/tinyos-1.x/tos/system/LedsC.nc"
result_t LedsC$Leds$redOn(void)
#line 72
{
  {
  }
#line 73
  ;
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 74
    {
      TOSH_CLR_RED_LED_PIN();
      LedsC$ledsOn |= LedsC$RED_BIT;
    }
#line 77
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t ChunkStorageC$Leds$redOn(void){
#line 64
  unsigned char result;
#line 64

#line 64
  result = LedsC$Leds$redOn();
#line 64

#line 64
  return result;
#line 64
}
#line 64
# 10 "../../tos/interfaces/Console.nc"
inline static  result_t StressTestC$Console$string(char *arg_0x8578480){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8578480);
#line 10

#line 10
  return result;
#line 10
}
#line 10
static inline  
# 286 "StressTestC.nc"
result_t StressTestC$GenericFlash$initDone(result_t r)
{
  StressTestC$Console$string("Init done\n");
  return SUCCESS;
}

static inline  
# 59 "../../tos/platform/mica2/FlashM.nc"
pageptr_t FlashM$GenericFlash$numPages(uint8_t id)
{
  return 2048;
}

# 32 "../../tos/interfaces/GenericFlash.nc"
inline static  pageptr_t ChunkStorageC$GenericFlash$numPages(void){
#line 32
  unsigned int result;
#line 32

#line 32
  result = FlashM$GenericFlash$numPages(0);
#line 32

#line 32
  return result;
#line 32
}
#line 32
static inline  
# 142 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$GenericFlash$initDone(result_t r)
{
  if (SUCCESS != r) 
    {
      ChunkStorageC$Leds$redOn();
      return FAIL;
    }

  ChunkStorageC$total_pages = ChunkStorageC$GenericFlash$numPages();

  return SUCCESS;
}

static inline  
# 451 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$GenericFlash$initDone(result_t result)
{
  return SUCCESS;
}

static inline   
# 261 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$default$initDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 30 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$initDone(uint8_t arg_0x8615d00, result_t arg_0x8567060){
#line 30
  unsigned char result;
#line 30

#line 30
  switch (arg_0x8615d00) {
#line 30
    case 0:
#line 30
      result = ChunkStorageC$GenericFlash$initDone(arg_0x8567060);
#line 30
      break;
#line 30
    case 1:
#line 30
      result = StressTestC$GenericFlash$initDone(arg_0x8567060);
#line 30
      break;
#line 30
    case 2:
#line 30
      result = RootDirectoryM$GenericFlash$initDone(arg_0x8567060);
#line 30
      break;
#line 30
    default:
#line 30
      result = FlashM$GenericFlash$default$initDone(arg_0x8615d00, arg_0x8567060);
#line 30
    }
#line 30

#line 30
  return result;
#line 30
}
#line 30
static inline  
# 46 "../../tos/platform/mica2/FlashM.nc"
void FlashM$initDone(void)
{
  FlashM$GenericFlash$initDone(FlashM$Tid, SUCCESS);
}

static inline  result_t FlashM$GenericFlash$init(uint8_t id)
{
  TOS_post(FlashM$initDone);
  FlashM$Tid = id;

  return SUCCESS;
}

# 29 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$init(void){
#line 29
  unsigned char result;
#line 29

#line 29
  result = FlashM$GenericFlash$init(0);
#line 29

#line 29
  return result;
#line 29
}
#line 29
# 56 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t ChunkStorageC$Leds$init(void){
#line 56
  unsigned char result;
#line 56

#line 56
  result = LedsC$Leds$init();
#line 56

#line 56
  return result;
#line 56
}
#line 56
static inline 
# 159 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
void *nmemset(void *to, int val, size_t n)
{
  char *cto = to;

  while (n--) * cto++ = val;

  return to;
}

static inline  
# 111 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$StdControl$init(void)
{

  ChunkStorageC$page_ptr = 2 + 2;
  ChunkStorageC$offset_ptr = 0;
  ChunkStorageC$cache_ptr = 0;


  nmemset(ChunkStorageC$write_buffer, 0xFF, 256);

  ChunkStorageC$Leds$init();

  if (SUCCESS != ChunkStorageC$GenericFlash$init()) 
    {
      ChunkStorageC$Leds$redOn();
      return FAIL;
    }

  return SUCCESS;
}

# 134 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline void TOSH_MAKE_FLASH_IN_INPUT(void)
#line 134
{
#line 134
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x11 + 0x20) &= ~(1 << 2);
}

#line 134
static __inline void TOSH_CLR_FLASH_IN_PIN(void)
#line 134
{
#line 134
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) &= ~(1 << 2);
}

#line 133
static __inline void TOSH_MAKE_FLASH_OUT_OUTPUT(void)
#line 133
{
#line 133
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x11 + 0x20) |= 1 << 3;
}

#line 133
static __inline void TOSH_SET_FLASH_OUT_PIN(void)
#line 133
{
#line 133
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) |= 1 << 3;
}

#line 132
static __inline void TOSH_MAKE_FLASH_CLK_OUTPUT(void)
#line 132
{
#line 132
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x11 + 0x20) |= 1 << 5;
}

#line 132
static __inline void TOSH_CLR_FLASH_CLK_PIN(void)
#line 132
{
#line 132
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) &= ~(1 << 5);
}

#line 131
static __inline void TOSH_SET_FLASH_SELECT_PIN(void)
#line 131
{
#line 131
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) |= 1 << 3;
}

#line 131
static __inline void TOSH_MAKE_FLASH_SELECT_OUTPUT(void)
#line 131
{
#line 131
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1A + 0x20) |= 1 << 3;
}

static inline  
# 58 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
result_t HPLFlash$FlashControl$init(void)
#line 58
{
  TOSH_MAKE_FLASH_SELECT_OUTPUT();
  TOSH_SET_FLASH_SELECT_PIN();
  TOSH_CLR_FLASH_CLK_PIN();
  TOSH_MAKE_FLASH_CLK_OUTPUT();
  TOSH_SET_FLASH_OUT_PIN();
  TOSH_MAKE_FLASH_OUT_OUTPUT();
  TOSH_CLR_FLASH_IN_PIN();
  TOSH_MAKE_FLASH_IN_INPUT();

  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x39 + 0x20) &= ~(1 << 2);
  * (volatile unsigned char *)0x6A |= 0x30;

  return SUCCESS;
}

# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t PageEEPROMM$FlashControl$init(void){
#line 63
  unsigned char result;
#line 63

#line 63
  result = HPLFlash$FlashControl$init();
#line 63

#line 63
  return result;
#line 63
}
#line 63
static inline  
# 133 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$StdControl$init(void)
#line 133
{
  PageEEPROMM$request = PageEEPROMM$IDLE;
  PageEEPROMM$waiting = PageEEPROMM$deselectRequested = FALSE;
  PageEEPROMM$flashBusy = TRUE;


  PageEEPROMM$buffer[0].page = PageEEPROMM$buffer[1].page = TOS_EEPROM_MAX_PAGES;
  PageEEPROMM$buffer[0].busy = PageEEPROMM$buffer[1].busy = FALSE;
  PageEEPROMM$buffer[0].clean = PageEEPROMM$buffer[1].clean = TRUE;
  PageEEPROMM$buffer[0].unchecked = PageEEPROMM$buffer[1].unchecked = 0;
  PageEEPROMM$buffer[0].erased = PageEEPROMM$buffer[1].erased = FALSE;

  return PageEEPROMM$FlashControl$init();
}

# 56 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t StressTestC$Leds$init(void){
#line 56
  unsigned char result;
#line 56

#line 56
  result = LedsC$Leds$init();
#line 56

#line 56
  return result;
#line 56
}
#line 56
static inline   
# 60 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLUART0M.nc"
result_t HPLUART0M$UART$init(void)
#line 60
{





  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x90 = 0;
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x09 + 0x20) = 15;


  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x0B + 0x20) = 1 << 1;


  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x95 = (1 << 2) | (1 << 1);


  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x0A + 0x20) = (((1 << 7) | (1 << 6)) | (1 << 4)) | (1 << 3);


  return SUCCESS;
}

# 62 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t ConsoleC$HPLUART$init(void){
#line 62
  unsigned char result;
#line 62

#line 62
  result = HPLUART0M$UART$init();
#line 62

#line 62
  return result;
#line 62
}
#line 62
static inline  
# 21 "../../tos/lib/Util/ConsoleC.nc"
result_t ConsoleC$Console$init(void)
#line 21
{
  ConsoleC$HPLUART$init();
  return SUCCESS;
}

# 9 "../../tos/interfaces/Console.nc"
inline static  result_t StressTestC$Console$init(void){
#line 9
  unsigned char result;
#line 9

#line 9
  result = ConsoleC$Console$init();
#line 9

#line 9
  return result;
#line 9
}
#line 9
static inline  
# 169 "StressTestC.nc"
result_t StressTestC$StdControl$init(void)
{
  StressTestC$busy = 0;
  StressTestC$current = StressTestC$pages = 0;
  nmemset(StressTestC$i, 0xAB, 2);
  nmemset(StressTestC$i_, 0x0, 2);
  StressTestC$count = 0;

  StressTestC$Console$init();

  StressTestC$Leds$init();

  return SUCCESS;
}

static inline  
# 88 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/SysTimeM.nc"
result_t SysTimeM$StdControl$init(void)
{
  uint8_t etimsk;

  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x8B = 0x00;
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x8A = 0x00;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      etimsk = * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x7D;
      etimsk &= 1 << 0;
      etimsk |= 1 << 2;
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x7D = etimsk;
    }
#line 101
    __nesc_atomic_end(__nesc_atomic); }

  return SUCCESS;
}

# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t RealMain$StdControl$init(void){
#line 63
  unsigned char result;
#line 63

#line 63
  result = SysTimeM$StdControl$init();
#line 63
  result = rcombine(result, StressTestC$StdControl$init());
#line 63
  result = rcombine(result, PageEEPROMM$StdControl$init());
#line 63
  result = rcombine(result, ChunkStorageC$StdControl$init());
#line 63

#line 63
  return result;
#line 63
}
#line 63
# 116 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline void TOSH_MAKE_RED_LED_OUTPUT(void)
#line 116
{
#line 116
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1A + 0x20) |= 1 << 2;
}

#line 118
static __inline void TOSH_MAKE_YELLOW_LED_OUTPUT(void)
#line 118
{
#line 118
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1A + 0x20) |= 1 << 0;
}

#line 117
static __inline void TOSH_MAKE_GREEN_LED_OUTPUT(void)
#line 117
{
#line 117
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1A + 0x20) |= 1 << 1;
}

#line 116
static __inline void TOSH_SET_RED_LED_PIN(void)
#line 116
{
#line 116
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) |= 1 << 2;
}

#line 118
static __inline void TOSH_SET_YELLOW_LED_PIN(void)
#line 118
{
#line 118
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) |= 1 << 0;
}

#line 117
static __inline void TOSH_SET_GREEN_LED_PIN(void)
#line 117
{
#line 117
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) |= 1 << 1;
}

static inline   
# 105 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLUART0M.nc"
result_t HPLUART0M$UART$put(uint8_t data)
#line 105
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 106
    {
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x0C + 0x20) = data;
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x0B + 0x20) |= 1 << 6;
    }
#line 109
    __nesc_atomic_end(__nesc_atomic); }

  return SUCCESS;
}

# 80 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t ConsoleC$HPLUART$put(uint8_t arg_0x8704a80){
#line 80
  unsigned char result;
#line 80

#line 80
  result = HPLUART0M$UART$put(arg_0x8704a80);
#line 80

#line 80
  return result;
#line 80
}
#line 80
static inline  
# 132 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$StdControl$start(void)
{
  return SUCCESS;
}

static inline  
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
result_t HPLFlash$FlashControl$start(void)
#line 74
{
  return SUCCESS;
}

# 70 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t PageEEPROMM$FlashControl$start(void){
#line 70
  unsigned char result;
#line 70

#line 70
  result = HPLFlash$FlashControl$start();
#line 70

#line 70
  return result;
#line 70
}
#line 70
static inline  
# 148 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$StdControl$start(void)
#line 148
{
  return PageEEPROMM$FlashControl$start();
}

static inline  
# 307 "StressTestC.nc"
void StressTestC$RootDirectory$initDone(result_t result)
{
  StressTestC$Console$string("Root dir init done\n");
}

static inline  
# 99 "../../tos/system/CheckpointC.nc"
void CheckpointC$RootDirectory$initDone(result_t res)
{
}

# 33 "../../tos/interfaces/RootDirectory.nc"
inline static  void RootDirectoryM$RootDirectory$initDone(result_t arg_0x8580d50){
#line 33
  CheckpointC$RootDirectory$initDone(arg_0x8580d50);
#line 33
  StressTestC$RootDirectory$initDone(arg_0x8580d50);
#line 33
}
#line 33
static inline 
# 84 "../../tos/system/RootDirectoryM.nc"
void RootDirectoryM$unlock(void)
{
  RootDirectoryM$busy = FALSE;
}

static inline  
#line 101
void RootDirectoryM$signalInit(void)
{
  RootDirectoryM$loaded = TRUE;
  RootDirectoryM$unlock();
  RootDirectoryM$RootDirectory$initDone(SUCCESS);
}

static 
# 101 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
void __inline TOSH_uwait(int u_sec)
#line 101
{
  while (u_sec > 0) {
       __asm volatile ("nop");
       __asm volatile ("nop");
       __asm volatile ("nop");
       __asm volatile ("nop");
       __asm volatile ("nop");
       __asm volatile ("nop");
       __asm volatile ("nop");
       __asm volatile ("nop");
      u_sec--;
    }
}

# 10 "../../tos/interfaces/Console.nc"
inline static  result_t RootDirectoryM$Console$string(char *arg_0x8578480){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8578480);
#line 10

#line 10
  return result;
#line 10
}
#line 10
static inline 
# 64 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$lock(void)
{
  bool localBusy;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      localBusy = RootDirectoryM$busy;
      RootDirectoryM$busy = TRUE;
    }
#line 72
    __nesc_atomic_end(__nesc_atomic); }

  if (!localBusy) 
    {
      return SUCCESS;
    }
  else 
    {
      return FAIL;
    }
}

static inline  
#line 135
result_t RootDirectoryM$RootDirectory$init(void)
{
  if (SUCCESS != RootDirectoryM$lock()) 
    {

      RootDirectoryM$Console$string("ERROR ! Unable to acquire lock");
      RootDirectoryM$Console$string("\n");
      TOSH_uwait(3000);


      return FAIL;
    }

  if (RootDirectoryM$loaded == TRUE) 
    {

      TOS_post(RootDirectoryM$signalInit);
      return SUCCESS;
    }


  RootDirectoryM$page = 2;
#line 156
  RootDirectoryM$offset = 0;
  TOS_post(RootDirectoryM$recoverRoot);
  RootDirectoryM$state = RootDirectoryM$RECOVERING;

  return SUCCESS;
}

# 31 "../../tos/interfaces/RootDirectory.nc"
inline static  result_t StressTestC$RootDirectory$init(void){
#line 31
  unsigned char result;
#line 31

#line 31
  result = RootDirectoryM$RootDirectory$init();
#line 31

#line 31
  return result;
#line 31
}
#line 31
static inline  
# 184 "StressTestC.nc"
result_t StressTestC$StdControl$start(void)
{
  StressTestC$pages = 2048;

  StressTestC$RootDirectory$init();



  return SUCCESS;
}

static inline  
# 106 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/SysTimeM.nc"
result_t SysTimeM$StdControl$start(void)
{

  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)0x8A = 0x02;
  return SUCCESS;
}

# 70 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t RealMain$StdControl$start(void){
#line 70
  unsigned char result;
#line 70

#line 70
  result = SysTimeM$StdControl$start();
#line 70
  result = rcombine(result, StressTestC$StdControl$start());
#line 70
  result = rcombine(result, PageEEPROMM$StdControl$start());
#line 70
  result = rcombine(result, ChunkStorageC$StdControl$start());
#line 70

#line 70
  return result;
#line 70
}
#line 70
static inline  
# 533 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$PageEEPROM$read(eeprompage_t page, eeprompageoffset_t offset, 
void *reqdata, eeprompageoffset_t n)
#line 534
{
  return PageEEPROMM$newRequest(PageEEPROMM$R_READ, page, offset, reqdata, n, 0);
}

# 48 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$ActualEEPROM$read(eeprompage_t arg_0x862e080, eeprompageoffset_t arg_0x862e1d8, void *arg_0x862e340, eeprompageoffset_t arg_0x862e498){
#line 48
  unsigned char result;
#line 48

#line 48
  result = PageEEPROMM$PageEEPROM$read(arg_0x862e080, arg_0x862e1d8, arg_0x862e340, arg_0x862e498);
#line 48

#line 48
  return result;
#line 48
}
#line 48
static inline 
# 70 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$check(result_t requestOk)
#line 70
{
  if (requestOk != FAIL) {
    return requestOk;
    }
#line 73
  PageEEPROMShare$lastClient = 0;
  return FAIL;
}

static inline 
#line 47
int PageEEPROMShare$setClient(uint8_t client)
#line 47
{
  if (PageEEPROMShare$NCLIENTS != 1) 
    {
      if (PageEEPROMShare$lastClient) {
        return FALSE;
        }
#line 52
      PageEEPROMShare$lastClient = client + 1;
    }
  return TRUE;
}

static 
#line 132
__inline  result_t PageEEPROMShare$PageEEPROM$read(uint8_t client, eeprompage_t page, eeprompageoffset_t offset, 
void *data, eeprompageoffset_t n)
#line 133
{
  if (!PageEEPROMShare$setClient(client)) {
    return FAIL;
    }
#line 136
  return PageEEPROMShare$check(PageEEPROMShare$ActualEEPROM$read(page, offset, data, n));
}

# 48 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t FlashM$PageEEPROM$read(eeprompage_t arg_0x862e080, eeprompageoffset_t arg_0x862e1d8, void *arg_0x862e340, eeprompageoffset_t arg_0x862e498){
#line 48
  unsigned char result;
#line 48

#line 48
  result = PageEEPROMShare$PageEEPROM$read(0, arg_0x862e080, arg_0x862e1d8, arg_0x862e340, arg_0x862e498);
#line 48

#line 48
  return result;
#line 48
}
#line 48
static inline  
# 211 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$read(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *app_buff, datalen_t app_len)
{
  FlashM$state = FlashM$READ;
  FlashM$Tid = id;
#line 228
  return FlashM$PageEEPROM$read(page, offset, app_buff, app_len);
}

# 44 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t RootDirectoryM$GenericFlash$read(pageptr_t arg_0x8587298, offsetptr_t arg_0x85873e8, void *arg_0x8587558, datalen_t arg_0x85876a8){
#line 44
  unsigned char result;
#line 44

#line 44
  result = FlashM$GenericFlash$read(2, arg_0x8587298, arg_0x85873e8, arg_0x8587558, arg_0x85876a8);
#line 44

#line 44
  return result;
#line 44
}
#line 44
static inline 
# 57 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
uint8_t PageEEPROMShare$getClient(void)
#line 57
{
  uint8_t id = 0;

  if (PageEEPROMShare$NCLIENTS != 1) 
    {
      id = PageEEPROMShare$lastClient - 1;
      PageEEPROMShare$lastClient = 0;
    }

  return id;
}

static inline  
# 297 "StressTestC.nc"
result_t StressTestC$GenericFlash$readDone(result_t r)
{
  return SUCCESS;
}

static inline  
# 757 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$GenericFlash$readDone(result_t result)
{
  return SUCCESS;
}

static inline  
# 320 "StressTestC.nc"
void StressTestC$RootDirectory$restore(flashptr_t *restore_ptr)
{
  StressTestC$Console$string("Restoring...\n");
}

static inline 
# 65 "../../tos/system/CheckpointC.nc"
result_t CheckpointC$lock(void)
{
  bool localBusy;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      localBusy = CheckpointC$busy;
      CheckpointC$busy = TRUE;
    }
#line 73
    __nesc_atomic_end(__nesc_atomic); }

  if (!localBusy) 
    {
      return SUCCESS;
    }
  else 
    {
      return FAIL;
    }
}

static inline  
#line 157
void CheckpointC$RootDirectory$restore(flashptr_t *restore_ptr)
{
  CheckpointC$lock();


  nmemcpy(& CheckpointC$local[0].root, &restore_ptr[CheckpointC$local[0].id], sizeof(flashptr_t ));




  TOS_post(CheckpointC$rollBack);
}

# 49 "../../tos/interfaces/RootDirectory.nc"
inline static  void RootDirectoryM$RootDirectory$restore(flashptr_t *arg_0x8596478){
#line 49
  CheckpointC$RootDirectory$restore(arg_0x8596478);
#line 49
  StressTestC$RootDirectory$restore(arg_0x8596478);
#line 49
}
#line 49
# 29 "../../tos/interfaces/Crc8.nc"
inline static  uint8_t RootDirectoryM$Crc8$crc8(uint8_t *arg_0x85d36c8, uint16_t arg_0x85d3818, uint8_t arg_0x85d3960){
#line 29
  unsigned char result;
#line 29

#line 29
  result = Crc8C$Crc8$crc8(arg_0x85d36c8, arg_0x85d3818, arg_0x85d3960);
#line 29

#line 29
  return result;
#line 29
}
#line 29
# 11 "../../tos/interfaces/Console.nc"
inline static  result_t RootDirectoryM$Console$decimal(int32_t arg_0x8578880){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8578880);
#line 11

#line 11
  return result;
#line 11
}
#line 11
static inline  
# 163 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$GenericFlash$readDone(result_t result)
{
  switch (RootDirectoryM$state) 
    {
      case RootDirectoryM$RECOVERING: 
        if (RootDirectoryM$root.timestamp != 0xFFFF && RootDirectoryM$root.timestamp > RootDirectoryM$besttime) 
          {
            uint8_t tCrc;

            RootDirectoryM$Console$string("Latest time... time :");
            RootDirectoryM$Console$decimal(RootDirectoryM$root.timestamp);
            RootDirectoryM$Console$string(" pg:");
            RootDirectoryM$Console$decimal(RootDirectoryM$page);
            RootDirectoryM$Console$string(" off:");
            RootDirectoryM$Console$decimal(RootDirectoryM$offset);
            RootDirectoryM$Console$string("\n");
            TOSH_uwait(3000);


            tCrc = RootDirectoryM$root.crc;
            RootDirectoryM$root.crc = 0;
            if (tCrc != RootDirectoryM$Crc8$crc8((uint8_t *)&RootDirectoryM$root, sizeof(root_header ), 0)) 
              {

                RootDirectoryM$Console$string("CRC failed\n");
                TOSH_uwait(3000);
              }
            else 

              {

                RootDirectoryM$Console$string("CRC success\n");
                TOSH_uwait(3000);
              }


            RootDirectoryM$besttime = RootDirectoryM$root.timestamp;
            RootDirectoryM$bestpage = RootDirectoryM$page;
            RootDirectoryM$bestoffset = RootDirectoryM$offset;
          }


      if (256 - RootDirectoryM$offset >= sizeof(root_header )) 
        {
          RootDirectoryM$offset += sizeof(root_header );
        }
      else 
        {

          RootDirectoryM$offset = 0;
#line 212
          RootDirectoryM$page++;

          if (RootDirectoryM$page == (2 + 2) * 1) 
            {

              if (RootDirectoryM$besttime == 0) 
                {


                  RootDirectoryM$page = 2;
#line 221
                  RootDirectoryM$offset = 0;
                  TOS_post(RootDirectoryM$signalInit);

                  return SUCCESS;
                }
              else 
                {

                  RootDirectoryM$page = RootDirectoryM$bestpage;
                  RootDirectoryM$offset = RootDirectoryM$bestoffset;
                  RootDirectoryM$state = RootDirectoryM$FINAL_RECOVERING;
                }
            }
        }

      TOS_post(RootDirectoryM$recoverRoot);

      break;

      case RootDirectoryM$FINAL_RECOVERING: 


        RootDirectoryM$offset = 0;
#line 243
      RootDirectoryM$page++;
      if (RootDirectoryM$page == (2 + 2) * 1) 
        {
          RootDirectoryM$page = 2;
        }

      if (!(RootDirectoryM$page % 1)) {
        TOS_post(RootDirectoryM$eraser);
        }

      TOS_post(RootDirectoryM$signalInit);
      RootDirectoryM$RootDirectory$restore(RootDirectoryM$root.root);

      break;
    }

  return SUCCESS;
}

static inline   
# 271 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$default$readDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 46 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$readDone(uint8_t arg_0x8615d00, result_t arg_0x8587ad0){
#line 46
  unsigned char result;
#line 46

#line 46
  switch (arg_0x8615d00) {
#line 46
    case 0:
#line 46
      result = ChunkStorageC$GenericFlash$readDone(arg_0x8587ad0);
#line 46
      break;
#line 46
    case 1:
#line 46
      result = StressTestC$GenericFlash$readDone(arg_0x8587ad0);
#line 46
      break;
#line 46
    case 2:
#line 46
      result = RootDirectoryM$GenericFlash$readDone(arg_0x8587ad0);
#line 46
      break;
#line 46
    default:
#line 46
      result = FlashM$GenericFlash$default$readDone(arg_0x8615d00, arg_0x8587ad0);
#line 46
    }
#line 46

#line 46
  return result;
#line 46
}
#line 46
static inline  
# 302 "StressTestC.nc"
result_t StressTestC$GenericFlash$falReadDone(result_t r)
{
  return SUCCESS;
}

static inline  
# 446 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$GenericFlash$falReadDone(result_t result)
{
  return SUCCESS;
}

static inline   
# 281 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$default$falReadDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 42 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$falReadDone(uint8_t arg_0x8615d00, result_t arg_0x8586e90){
#line 42
  unsigned char result;
#line 42

#line 42
  switch (arg_0x8615d00) {
#line 42
    case 0:
#line 42
      result = ChunkStorageC$GenericFlash$falReadDone(arg_0x8586e90);
#line 42
      break;
#line 42
    case 1:
#line 42
      result = StressTestC$GenericFlash$falReadDone(arg_0x8586e90);
#line 42
      break;
#line 42
    case 2:
#line 42
      result = RootDirectoryM$GenericFlash$falReadDone(arg_0x8586e90);
#line 42
      break;
#line 42
    default:
#line 42
      result = FlashM$GenericFlash$default$falReadDone(arg_0x8615d00, arg_0x8586e90);
#line 42
    }
#line 42

#line 42
  return result;
#line 42
}
#line 42
static inline  
# 131 "../../tos/platform/mica2/FlashM.nc"
void FlashM$readData(void)
{
#line 144
  if (SUCCESS != FlashM$PageEEPROM$read(FlashM$Tpage, FlashM$Toffset + sizeof(chunk_header ) + FlashM$Tapp_len, 
  FlashM$Tdata_buff, FlashM$Tdata_len)) 
    {
      FlashM$GenericFlash$falReadDone(FlashM$Tid, FAIL);
    }
  else {
    FlashM$state = FlashM$FAL_TWO;
    }
}

static inline  
#line 153
result_t FlashM$PageEEPROM$readDone(result_t res)
{
  if (FlashM$state == FlashM$FAL_ONE) 
    {
      if (res == SUCCESS) 
        {
          chunk_header *h = (chunk_header *)FlashM$Theader;

#line 160
          nmemcpy(FlashM$Theader, FlashM$headerBuf, sizeof(chunk_header ));

          if (FlashM$Tapp_len > 0) 
            {







              nmemcpy(FlashM$Tapp_buff, &FlashM$headerBuf[sizeof(chunk_header )], FlashM$Tapp_len);
            }









          FlashM$Tdata_len = h->data_len - FlashM$Tapp_len;








          if (FlashM$Tdata_len > 0) {
            TOS_post(FlashM$readData);
            }
        }
      else {
#line 195
        FlashM$GenericFlash$falReadDone(FlashM$Tid, FAIL);
        }
    }
  else {
#line 197
    if (FlashM$state == FlashM$FAL_TWO) 
      {

        FlashM$GenericFlash$falReadDone(FlashM$Tid, res);
      }
    else {
#line 202
      if (FlashM$state == FlashM$READ) 
        {

          FlashM$GenericFlash$readDone(FlashM$Tid, res);
        }
      }
    }
#line 208
  return SUCCESS;
}

static inline   
# 177 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$PageEEPROM$default$readDone(uint8_t client, result_t result)
#line 177
{
  return FAIL;
}

# 50 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$PageEEPROM$readDone(uint8_t arg_0x86ac4a0, result_t arg_0x862e8c0){
#line 50
  unsigned char result;
#line 50

#line 50
  switch (arg_0x86ac4a0) {
#line 50
    case 0:
#line 50
      result = FlashM$PageEEPROM$readDone(arg_0x862e8c0);
#line 50
      break;
#line 50
    default:
#line 50
      result = PageEEPROMShare$PageEEPROM$default$readDone(arg_0x86ac4a0, arg_0x862e8c0);
#line 50
    }
#line 50

#line 50
  return result;
#line 50
}
#line 50
static 
# 139 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$ActualEEPROM$readDone(result_t result)
#line 139
{
  return PageEEPROMShare$PageEEPROM$readDone(PageEEPROMShare$getClient(), result);
}

# 50 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMM$PageEEPROM$readDone(result_t arg_0x862e8c0){
#line 50
  unsigned char result;
#line 50

#line 50
  result = PageEEPROMShare$ActualEEPROM$readDone(arg_0x862e8c0);
#line 50

#line 50
  return result;
#line 50
}
#line 50
# 29 "../../tos/interfaces/Crc8.nc"
inline static  uint8_t ChunkStorageC$Crc8$crc8(uint8_t *arg_0x85d36c8, uint16_t arg_0x85d3818, uint8_t arg_0x85d3960){
#line 29
  unsigned char result;
#line 29

#line 29
  result = Crc8C$Crc8$crc8(arg_0x85d36c8, arg_0x85d3818, arg_0x85d3960);
#line 29

#line 29
  return result;
#line 29
}
#line 29
static inline 
# 32 "../../tos/system/Crc8C.nc"
uint8_t Crc8C$CrcByte(uint8_t inCrc, uint8_t inData)
{
  uint8_t i;
  uint8_t data;

  data = inCrc ^ inData;

  for (i = 0; i < 8; i++) 
    {
      if ((data & 0x80) != 0) 
        {
          data <<= 1;
          data ^= 0x07;
        }
      else {
        data <<= 1;
        }
    }
  return data;
}

static inline  
# 374 "../../tos/system/CheckpointC.nc"
void CheckpointC$ChunkStorage$readDone(result_t res)
{
}

static inline   
# 802 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$ChunkStorage$default$readDone(uint8_t id, result_t r)
{
}

# 49 "../../tos/interfaces/ChunkStorage.nc"
inline static  void ChunkStorageC$ChunkStorage$readDone(uint8_t arg_0x8563200, result_t arg_0x856c2e8){
#line 49
  switch (arg_0x8563200) {
#line 49
    case 0:
#line 49
      StreamC$ChunkStorage$readDone(arg_0x856c2e8);
#line 49
      break;
#line 49
    case 1:
#line 49
      StackC$ChunkStorage$readDone(arg_0x856c2e8);
#line 49
      break;
#line 49
    case 2:
#line 49
      CheckpointC$ChunkStorage$readDone(arg_0x856c2e8);
#line 49
      break;
#line 49
    case 3:
#line 49
      StressTestC$ChunkStorage$readDone(arg_0x856c2e8);
#line 49
      break;
#line 49
    default:
#line 49
      ChunkStorageC$ChunkStorage$default$readDone(arg_0x8563200, arg_0x856c2e8);
#line 49
    }
#line 49
}
#line 49
static inline 
# 105 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$unlock(void)
{
  ChunkStorageC$chunkbusy = FALSE;
}

static inline  
#line 562
void ChunkStorageC$readDoneRespond(void)
{





  ChunkStorageC$unlock();
  ChunkStorageC$ChunkStorage$readDone(ChunkStorageC$if_id, ChunkStorageC$res);
}

# 11 "../../tos/interfaces/Console.nc"
inline static  result_t StressTestC$Console$decimal(int32_t arg_0x8578880){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8578880);
#line 11

#line 11
  return result;
#line 11
}
#line 11
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t StressTestC$Leds$redOn(void){
#line 64
  unsigned char result;
#line 64

#line 64
  result = LedsC$Leds$redOn();
#line 64

#line 64
  return result;
#line 64
}
#line 64
static inline  
# 151 "StressTestC.nc"
void StressTestC$Stream$nextDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Next call returned failure\n");
    }
  else 
    {
      StressTestC$Console$string("Next success : ");
      StressTestC$Console$decimal(StressTestC$j_);
      StressTestC$Console$string("\n");
      TOSH_uwait(3000);
    }
}

static inline   
# 292 "StreamC.nc"
void StreamC$Stream$default$nextDone(uint8_t id, result_t res)
{
}

# 44 "../../tos/interfaces/Stream.nc"
inline static  void StreamC$Stream$nextDone(uint8_t arg_0x8765b20, result_t arg_0x858d220){
#line 44
  switch (arg_0x8765b20) {
#line 44
    case 0:
#line 44
      StressTestC$Stream$nextDone(arg_0x858d220);
#line 44
      break;
#line 44
    default:
#line 44
      StreamC$Stream$default$nextDone(arg_0x8765b20, arg_0x858d220);
#line 44
    }
#line 44
}
#line 44
# 39 "../../tos/interfaces/Stack.nc"
inline static  result_t StreamC$Stack$pop(void *arg_0x872f048, datalen_t *arg_0x872f1b0){
#line 39
  unsigned char result;
#line 39

#line 39
  result = StackC$Stack$pop(1, arg_0x872f048, arg_0x872f1b0);
#line 39

#line 39
  return result;
#line 39
}
#line 39
# 45 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StackC$ChunkStorage$read(flashptr_t *arg_0x8573628, void *arg_0x8573790, datalen_t arg_0x85738e0, void *arg_0x8573a48, datalen_t *arg_0x8573bb0, bool arg_0x8573d10, bool *arg_0x8573e70){
#line 45
  unsigned char result;
#line 45

#line 45
  result = ChunkStorageC$ChunkStorage$read(1, arg_0x8573628, arg_0x8573790, arg_0x85738e0, arg_0x8573a48, arg_0x8573bb0, arg_0x8573d10, arg_0x8573e70);
#line 45

#line 45
  return result;
#line 45
}
#line 45
static inline 
# 660 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$readBuffer(offsetptr_t cacheptr)
{
  chunk_header *header;
  datalen_t data2_len;









  header = (chunk_header *)&ChunkStorageC$write_buffer[cacheptr];


  data2_len = header->data_len - ChunkStorageC$len1;
#line 688
  if (data2_len > 0 && ChunkStorageC$data2 != (void *)0) 
    {
      nmemcpy(ChunkStorageC$data2, &ChunkStorageC$write_buffer[cacheptr + sizeof(chunk_header ) + ChunkStorageC$len1], data2_len);
    }

  if (ChunkStorageC$rlen2 != (void *)0) {
    *ChunkStorageC$rlen2 = data2_len;
    }

  if (ChunkStorageC$len1 > 0) 
    {
      nmemcpy(ChunkStorageC$data1, &ChunkStorageC$write_buffer[cacheptr + sizeof(chunk_header )], ChunkStorageC$len1);
    }

  return SUCCESS;
}

static inline  
# 107 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$falRead(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *header, 
void *app_buff, datalen_t app_len, 
void *data_buff)
{
  FlashM$state = FlashM$FAL_ONE;
  FlashM$Theader = header;
#line 113
  FlashM$Tapp_buff = app_buff;
#line 113
  FlashM$Tdata_buff = data_buff;
  FlashM$Tapp_len = app_len;
#line 114
  FlashM$Tpage = page;
#line 114
  FlashM$Toffset = offset;
  FlashM$Tid = id;
#line 128
  return FlashM$PageEEPROM$read(page, offset, FlashM$headerBuf, sizeof(chunk_header ) + app_len);
}

# 38 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$falRead(pageptr_t arg_0x8586370, offsetptr_t arg_0x85864c0, void *arg_0x8586628, void *arg_0x8586798, datalen_t arg_0x85868e8, void *arg_0x8586a58){
#line 38
  unsigned char result;
#line 38

#line 38
  result = FlashM$GenericFlash$falRead(0, arg_0x8586370, arg_0x85864c0, arg_0x8586628, arg_0x8586798, arg_0x85868e8, arg_0x8586a58);
#line 38

#line 38
  return result;
#line 38
}
#line 38
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t StackC$Leds$redOn(void){
#line 64
  unsigned char result;
#line 64

#line 64
  result = LedsC$Leds$redOn();
#line 64

#line 64
  return result;
#line 64
}
#line 64
# 34 "../../tos/interfaces/Stack.nc"
inline static  result_t StreamC$Stack$push(void *arg_0x872e568, datalen_t arg_0x872e6b8, flashptr_t *arg_0x872e828){
#line 34
  unsigned char result;
#line 34

#line 34
  result = StackC$Stack$push(1, arg_0x872e568, arg_0x872e6b8, arg_0x872e828);
#line 34

#line 34
  return result;
#line 34
}
#line 34
# 37 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StackC$ChunkStorage$write(void *arg_0x8572708, datalen_t arg_0x8572858, void *arg_0x85729c0, datalen_t arg_0x8572b10, bool arg_0x8572c70, flashptr_t *arg_0x8572de0){
#line 37
  unsigned char result;
#line 37

#line 37
  result = ChunkStorageC$ChunkStorage$write(1, arg_0x8572708, arg_0x8572858, arg_0x85729c0, arg_0x8572b10, arg_0x8572c70, arg_0x8572de0);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline  
# 370 "../../tos/system/CheckpointC.nc"
void CheckpointC$ChunkStorage$writeDone(result_t res)
{
}

static inline   
# 805 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$ChunkStorage$default$writeDone(uint8_t id, result_t r)
{
}

# 40 "../../tos/interfaces/ChunkStorage.nc"
inline static  void ChunkStorageC$ChunkStorage$writeDone(uint8_t arg_0x8563200, result_t arg_0x8573208){
#line 40
  switch (arg_0x8563200) {
#line 40
    case 0:
#line 40
      StreamC$ChunkStorage$writeDone(arg_0x8573208);
#line 40
      break;
#line 40
    case 1:
#line 40
      StackC$ChunkStorage$writeDone(arg_0x8573208);
#line 40
      break;
#line 40
    case 2:
#line 40
      CheckpointC$ChunkStorage$writeDone(arg_0x8573208);
#line 40
      break;
#line 40
    case 3:
#line 40
      StressTestC$ChunkStorage$writeDone(arg_0x8573208);
#line 40
      break;
#line 40
    default:
#line 40
      ChunkStorageC$ChunkStorage$default$writeDone(arg_0x8563200, arg_0x8573208);
#line 40
    }
#line 40
}
#line 40
static inline  
# 435 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$writeDoneRespond(void)
{








  ChunkStorageC$unlock();
  ChunkStorageC$ChunkStorage$writeDone(ChunkStorageC$if_id, ChunkStorageC$res);
}

static inline  
# 120 "StressTestC.nc"
void StressTestC$Stream$appendDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Append call returned failure\n");
    }
  else 
    {
      StressTestC$Console$string("Append success : ");
      StressTestC$Console$decimal(StressTestC$j);
      StressTestC$Console$string(" page:");
      StressTestC$Console$decimal(StressTestC$someptr.page);
      StressTestC$Console$string(" off:");
      StressTestC$Console$decimal(StressTestC$someptr.offset);
      StressTestC$Console$string("\n");
      TOSH_uwait(3000);

      StressTestC$j++;
    }
}

static inline   
# 496 "StreamC.nc"
void StreamC$Stream$default$appendDone(uint8_t id, result_t res)
{
}

# 36 "../../tos/interfaces/Stream.nc"
inline static  void StreamC$Stream$appendDone(uint8_t arg_0x8765b20, result_t arg_0x858c470){
#line 36
  switch (arg_0x8765b20) {
#line 36
    case 0:
#line 36
      StressTestC$Stream$appendDone(arg_0x858c470);
#line 36
      break;
#line 36
    default:
#line 36
      StreamC$Stream$default$appendDone(arg_0x8765b20, arg_0x858c470);
#line 36
    }
#line 36
}
#line 36
# 10 "../../tos/interfaces/Console.nc"
inline static  result_t CheckpointC$Console$string(char *arg_0x8578480){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8578480);
#line 10

#line 10
  return result;
#line 10
}
#line 10
# 35 "../../tos/interfaces/RootDirectory.nc"
inline static  result_t CheckpointC$RootDirectory$setRoot(uint8_t arg_0x8581150, flashptr_t *arg_0x85812b8){
#line 35
  unsigned char result;
#line 35

#line 35
  result = RootDirectoryM$RootDirectory$setRoot(arg_0x8581150, arg_0x85812b8);
#line 35

#line 35
  return result;
#line 35
}
#line 35
# 10 "../../tos/interfaces/Console.nc"
inline static  result_t StackC$Console$string(char *arg_0x8578480){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8578480);
#line 10

#line 10
  return result;
#line 10
}
#line 10

inline static  result_t StackC$Console$decimal(int32_t arg_0x8578880){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8578880);
#line 11

#line 11
  return result;
#line 11
}
#line 11
static inline  
# 282 "../../tos/system/StackC.nc"
void StackC$RootPtrAccess$getPtr(uint8_t id, flashptr_t *getPtr)
{
  nmemcpy(getPtr, & StackC$local[id].head, sizeof(flashptr_t ));


  StackC$Console$string("Got stack root ptr, pg=");
  StackC$Console$decimal(StackC$local[id].head.page);
  StackC$Console$string(" off=");
  StackC$Console$decimal(StackC$local[id].head.offset);
  StackC$Console$string("\n");
  TOSH_uwait(50000);
}

# 34 "../../tos/interfaces/RootPtrAccess.nc"
inline static  void CheckpointC$RootPtrAccess$getPtr(flashptr_t *arg_0x8728248){
#line 34
  StackC$RootPtrAccess$getPtr(0, arg_0x8728248);
#line 34
}
#line 34
# 10 "../../tos/interfaces/Console.nc"
inline static  result_t StreamC$Console$string(char *arg_0x8578480){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8578480);
#line 10

#line 10
  return result;
#line 10
}
#line 10

inline static  result_t StreamC$Console$decimal(int32_t arg_0x8578880){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8578880);
#line 11

#line 11
  return result;
#line 11
}
#line 11
static inline  
# 273 "StreamC.nc"
result_t StreamC$Serialize$restore(uint8_t id, uint8_t *buffer, datalen_t *len)
{
  nmemcpy(& StreamC$local[id].tail, &buffer[*len], sizeof(flashptr_t ));
  *len += sizeof(flashptr_t );


  StreamC$Console$string("Restored Stream, id=");
  StreamC$Console$decimal(id);
  StreamC$Console$string(" pg=");
  StreamC$Console$decimal(StreamC$local[id].tail.page);
  StreamC$Console$string(" off=");
  StreamC$Console$decimal(StreamC$local[id].tail.offset);
  StreamC$Console$string("\n");
  TOSH_uwait(50000);


  return SUCCESS;
}

# 10 "../../tos/interfaces/Console.nc"
inline static  result_t ChunkStorageC$Console$string(char *arg_0x8578480){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8578480);
#line 10

#line 10
  return result;
#line 10
}
#line 10

inline static  result_t ChunkStorageC$Console$decimal(int32_t arg_0x8578880){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8578880);
#line 11

#line 11
  return result;
#line 11
}
#line 11
static inline  
# 781 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$Serialize$restore(uint8_t *buffer, datalen_t *len)
{
  nmemcpy(&ChunkStorageC$page_ptr, &buffer[*len], sizeof(pageptr_t ));
  *len += sizeof(pageptr_t );




  ChunkStorageC$Console$string("Restored ChunkStorage, pg=");
  ChunkStorageC$Console$decimal(ChunkStorageC$page_ptr);


  ChunkStorageC$Console$string("\n");
  TOSH_uwait(50000);

  ChunkStorageC$page_ptr++;

  return SUCCESS;
}

# 33 "../../tos/interfaces/Serialize.nc"
inline static  result_t CheckpointC$Serialize$restore(uint8_t *arg_0x85c70d8, datalen_t *arg_0x85c7240){
#line 33
  unsigned char result;
#line 33

#line 33
  result = ChunkStorageC$Serialize$restore(arg_0x85c70d8, arg_0x85c7240);
#line 33
  result = rcombine(result, StreamC$Serialize$restore(0, arg_0x85c70d8, arg_0x85c7240));
#line 33

#line 33
  return result;
#line 33
}
#line 33
static inline  
# 194 "../../tos/system/CheckpointC.nc"
void CheckpointC$Stack$popDone(result_t res)
{
#line 213
  if (res == SUCCESS) 
    {
      datalen_t len = 0;

#line 216
      CheckpointC$Serialize$restore(CheckpointC$local[0].state.state_buffer, &len);
    }



  CheckpointC$RootPtrAccess$getPtr(& CheckpointC$local[0].root);


  if (SUCCESS != CheckpointC$RootDirectory$setRoot(CheckpointC$local[0].id, & CheckpointC$local[0].root)) 
    {

      CheckpointC$Console$string("ERROR ! Root dir set failed\n");

      CheckpointC$tempResult = res;
      TOS_post(CheckpointC$signaler);
    }
}

# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t StreamC$Leds$redOn(void){
#line 64
  unsigned char result;
#line 64

#line 64
  result = LedsC$Leds$redOn();
#line 64

#line 64
  return result;
#line 64
}
#line 64
# 45 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StreamC$ChunkStorage$read(flashptr_t *arg_0x8573628, void *arg_0x8573790, datalen_t arg_0x85738e0, void *arg_0x8573a48, datalen_t *arg_0x8573bb0, bool arg_0x8573d10, bool *arg_0x8573e70){
#line 45
  unsigned char result;
#line 45

#line 45
  result = ChunkStorageC$ChunkStorage$read(0, arg_0x8573628, arg_0x8573790, arg_0x85738e0, arg_0x8573a48, arg_0x8573bb0, arg_0x8573d10, arg_0x8573e70);
#line 45

#line 45
  return result;
#line 45
}
#line 45
static inline  
# 407 "StreamC.nc"
void StreamC$getDataStack2(void)
{

  if (SUCCESS != StreamC$ChunkStorage$read(&StreamC$compact_ptr, 
  &StreamC$ptr, sizeof(stream_header ), 
  StreamC$buff, &StreamC$dlen, FALSE, FALSE)) 
    {



      StreamC$Leds$redOn();
    }
  else 
    {






      StreamC$state = StreamC$COMPACT_TRAVERSE2;
    }
}

static inline  
void StreamC$Stack$popDone(result_t res)
{
  if (res != SUCCESS) 
    {



      StreamC$Leds$redOn();
    }
  else 
    {
#line 455
      TOS_post(StreamC$getDataStack2);
    }
}

static inline   
# 306 "../../tos/system/StackC.nc"
void StackC$Stack$default$popDone(uint8_t id, result_t res)
{
}

# 41 "../../tos/interfaces/Stack.nc"
inline static  void StackC$Stack$popDone(uint8_t arg_0x871b3a0, result_t arg_0x872f5b0){
#line 41
  switch (arg_0x871b3a0) {
#line 41
    case 0:
#line 41
      CheckpointC$Stack$popDone(arg_0x872f5b0);
#line 41
      break;
#line 41
    case 1:
#line 41
      StreamC$Stack$popDone(arg_0x872f5b0);
#line 41
      break;
#line 41
    default:
#line 41
      StackC$Stack$default$popDone(arg_0x871b3a0, arg_0x872f5b0);
#line 41
    }
#line 41
}
#line 41
static inline   
# 53 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/SysTimeM.nc"
uint16_t SysTimeM$SysTime$getTime16(void)
{
  return ({
#line 55
    uint16_t __t;
#line 55
    bool bStatus;

#line 55
    bStatus = * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x3F + 0x20) & (1 << 7);
#line 55
     __asm volatile ("cli");__t = * (volatile unsigned int *)(unsigned int )& * (volatile unsigned char *)0x88;
#line 55
    if (bStatus) {
#line 55
       __asm volatile ("sei");
      }
#line 55
    __t;
  }
  );
}

# 38 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/SysTime.nc"
inline static   uint16_t RootDirectoryM$SysTime$getTime16(void){
#line 38
  unsigned int result;
#line 38

#line 38
  result = SysTimeM$SysTime$getTime16();
#line 38

#line 38
  return result;
#line 38
}
#line 38
static inline  
# 566 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$PageEEPROM$write(eeprompage_t page, eeprompageoffset_t offset, 
void *reqdata, eeprompageoffset_t n)
#line 567
{
#line 598
  return PageEEPROMM$newRequest(PageEEPROMM$R_WRITE, page, offset, reqdata, n, 0);
}

# 33 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$ActualEEPROM$write(eeprompage_t arg_0x8627500, eeprompageoffset_t arg_0x8627658, void *arg_0x86277c0, eeprompageoffset_t arg_0x8627918){
#line 33
  unsigned char result;
#line 33

#line 33
  result = PageEEPROMM$PageEEPROM$write(arg_0x8627500, arg_0x8627658, arg_0x86277c0, arg_0x8627918);
#line 33

#line 33
  return result;
#line 33
}
#line 33
static 
# 79 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$PageEEPROM$write(uint8_t client, eeprompage_t page, eeprompageoffset_t offset, 
void *data, eeprompageoffset_t n)
#line 80
{
  if (!PageEEPROMShare$setClient(client)) {
    return FAIL;
    }
#line 83
  return PageEEPROMShare$check(PageEEPROMShare$ActualEEPROM$write(page, offset, data, n));
}

# 33 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t FlashM$PageEEPROM$write(eeprompage_t arg_0x8627500, eeprompageoffset_t arg_0x8627658, void *arg_0x86277c0, eeprompageoffset_t arg_0x8627918){
#line 33
  unsigned char result;
#line 33

#line 33
  result = PageEEPROMShare$PageEEPROM$write(0, arg_0x8627500, arg_0x8627658, arg_0x86277c0, arg_0x8627918);
#line 33

#line 33
  return result;
#line 33
}
#line 33
static inline  
# 64 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$write(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *data, datalen_t len)
{
  FlashM$Tpage = page;
  FlashM$Tid = id;
  return FlashM$PageEEPROM$write(page, offset, data, len);
}

# 34 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t RootDirectoryM$GenericFlash$write(pageptr_t arg_0x8567720, offsetptr_t arg_0x8567870, void *arg_0x85679d8, datalen_t arg_0x8567b28){
#line 34
  unsigned char result;
#line 34

#line 34
  result = FlashM$GenericFlash$write(2, arg_0x8567720, arg_0x8567870, arg_0x85679d8, arg_0x8567b28);
#line 34

#line 34
  return result;
#line 34
}
#line 34
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t RootDirectoryM$Leds$redOn(void){
#line 64
  unsigned char result;
#line 64

#line 64
  result = LedsC$Leds$redOn();
#line 64

#line 64
  return result;
#line 64
}
#line 64
static inline  
# 82 "StressTestC.nc"
void StressTestC$Checkpoint$checkpointDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Checkpoint returned failure\n");
    }
}

# 37 "../../tos/interfaces/Checkpoint.nc"
inline static  void CheckpointC$Checkpoint$checkpointDone(result_t arg_0x858b160){
#line 37
  StressTestC$Checkpoint$checkpointDone(arg_0x858b160);
#line 37
}
#line 37
static inline  
# 101 "StressTestC.nc"
void StressTestC$Checkpoint$rollbackDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Rollback returned failure\n");
    }
}

# 39 "../../tos/interfaces/Checkpoint.nc"
inline static  void CheckpointC$Checkpoint$rollbackDone(result_t arg_0x858b560){
#line 39
  StressTestC$Checkpoint$rollbackDone(arg_0x858b560);
#line 39
}
#line 39
static inline  
# 378 "../../tos/system/CheckpointC.nc"
void CheckpointC$Stack$topDone(result_t res)
{
}

static inline  
# 537 "StreamC.nc"
void StreamC$Stack$topDone(result_t res)
{
}

static inline   
# 309 "../../tos/system/StackC.nc"
void StackC$Stack$default$topDone(uint8_t id, result_t res)
{
}

# 46 "../../tos/interfaces/Stack.nc"
inline static  void StackC$Stack$topDone(uint8_t arg_0x871b3a0, result_t arg_0x872ff28){
#line 46
  switch (arg_0x871b3a0) {
#line 46
    case 0:
#line 46
      CheckpointC$Stack$topDone(arg_0x872ff28);
#line 46
      break;
#line 46
    case 1:
#line 46
      StreamC$Stack$topDone(arg_0x872ff28);
#line 46
      break;
#line 46
    default:
#line 46
      StackC$Stack$default$topDone(arg_0x871b3a0, arg_0x872ff28);
#line 46
    }
#line 46
}
#line 46
# 54 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t CheckpointC$ChunkStorage$flush(void){
#line 54
  unsigned char result;
#line 54

#line 54
  result = ChunkStorageC$ChunkStorage$flush(2);
#line 54

#line 54
  return result;
#line 54
}
#line 54
static inline  
# 304 "../../tos/system/CheckpointC.nc"
void CheckpointC$Stack$pushDone(result_t res)
{
  if (res == FAIL) 
    {

      CheckpointC$Console$string("ERROR ! Stack state pushing failed\n");

      CheckpointC$tempResult = res;
      TOS_post(CheckpointC$signaler);
      return;
    }


  if (SUCCESS != (CheckpointC$tempResult = CheckpointC$ChunkStorage$flush())) 
    {

      CheckpointC$Console$string("ERROR ! Chunk flush failed\n");

      TOS_post(CheckpointC$signaler);
      return;
    }
}

static inline  
# 299 "StreamC.nc"
void StreamC$getData(void)
{

  if (SUCCESS != StreamC$ChunkStorage$read(&StreamC$compact_ptr, 
  &StreamC$ptr, sizeof(stream_header ), 
  (void *)0, 0, FALSE, FALSE)) 
    {



      StreamC$Leds$redOn();
    }
  else 
    {
      StreamC$state = StreamC$COMPACT_TRAVERSE;
    }
}

static inline  
#line 345
void StreamC$Stack$pushDone(result_t res)
{
  if (res != SUCCESS) 
    {



      StreamC$Leds$redOn();
    }
  else 
    {
#line 368
      TOS_post(StreamC$getData);
    }
}

static inline   
# 303 "../../tos/system/StackC.nc"
void StackC$Stack$default$pushDone(uint8_t id, result_t res)
{
}

# 36 "../../tos/interfaces/Stack.nc"
inline static  void StackC$Stack$pushDone(uint8_t arg_0x871b3a0, result_t arg_0x872ec38){
#line 36
  switch (arg_0x871b3a0) {
#line 36
    case 0:
#line 36
      CheckpointC$Stack$pushDone(arg_0x872ec38);
#line 36
      break;
#line 36
    case 1:
#line 36
      StreamC$Stack$pushDone(arg_0x872ec38);
#line 36
      break;
#line 36
    default:
#line 36
      StackC$Stack$default$pushDone(arg_0x871b3a0, arg_0x872ec38);
#line 36
    }
#line 36
}
#line 36
static inline  
# 296 "../../tos/system/StackC.nc"
void StackC$ChunkStorage$flushDone(result_t res)
{
}

static inline  
# 251 "StreamC.nc"
void StreamC$ChunkStorage$flushDone(result_t res)
{
}

static inline   
# 808 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$ChunkStorage$default$flushDone(uint8_t id, result_t r)
{
}

# 55 "../../tos/interfaces/ChunkStorage.nc"
inline static  void ChunkStorageC$ChunkStorage$flushDone(uint8_t arg_0x8563200, result_t arg_0x856c998){
#line 55
  switch (arg_0x8563200) {
#line 55
    case 0:
#line 55
      StreamC$ChunkStorage$flushDone(arg_0x856c998);
#line 55
      break;
#line 55
    case 1:
#line 55
      StackC$ChunkStorage$flushDone(arg_0x856c998);
#line 55
      break;
#line 55
    case 2:
#line 55
      CheckpointC$ChunkStorage$flushDone(arg_0x856c998);
#line 55
      break;
#line 55
    case 3:
#line 55
      StressTestC$ChunkStorage$flushDone(arg_0x856c998);
#line 55
      break;
#line 55
    default:
#line 55
      ChunkStorageC$ChunkStorage$default$flushDone(arg_0x8563200, arg_0x856c998);
#line 55
    }
#line 55
}
#line 55
static inline  
# 155 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$flushDoneRespond(void)
{








  ChunkStorageC$unlock();
  ChunkStorageC$ChunkStorage$flushDone(ChunkStorageC$if_id, ChunkStorageC$res);
}

# 34 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$write(pageptr_t arg_0x8567720, offsetptr_t arg_0x8567870, void *arg_0x85679d8, datalen_t arg_0x8567b28){
#line 34
  unsigned char result;
#line 34

#line 34
  result = FlashM$GenericFlash$write(0, arg_0x8567720, arg_0x8567870, arg_0x85679d8, arg_0x8567b28);
#line 34

#line 34
  return result;
#line 34
}
#line 34
# 37 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StreamC$ChunkStorage$write(void *arg_0x8572708, datalen_t arg_0x8572858, void *arg_0x85729c0, datalen_t arg_0x8572b10, bool arg_0x8572c70, flashptr_t *arg_0x8572de0){
#line 37
  unsigned char result;
#line 37

#line 37
  result = ChunkStorageC$ChunkStorage$write(0, arg_0x8572708, arg_0x8572858, arg_0x85729c0, arg_0x8572b10, arg_0x8572c70, arg_0x8572de0);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline  
# 459 "StreamC.nc"
void StreamC$writeDataStream(void)
{





  if (StreamC$compact_first_write == TRUE) 
    {
      StreamC$local[StreamC$streamif_id].tail.page = ~0;
      StreamC$local[StreamC$streamif_id].tail.offset = ~0;
      StreamC$compact_first_write = FALSE;
    }

  StreamC$header.prev_ptr.page = StreamC$local[StreamC$streamif_id].tail.page;
  StreamC$header.prev_ptr.offset = StreamC$local[StreamC$streamif_id].tail.offset;

  if (SUCCESS != StreamC$ChunkStorage$write(&StreamC$header, sizeof(stream_header ), 
  StreamC$buff, StreamC$dlen, StreamC$local[StreamC$streamif_id].doEcc, 
  & StreamC$local[StreamC$streamif_id].tail)) 
    {



      StreamC$Leds$redOn();
    }
  else 
    {
    }
}

static inline  
# 602 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$PageEEPROM$erase(eeprompage_t page, uint8_t eraseKind)
#line 602
{
  return PageEEPROMM$newRequest(PageEEPROMM$R_ERASE, page, eraseKind, (void *)0, 0, 0);
}

# 37 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$ActualEEPROM$erase(eeprompage_t arg_0x8628160, uint8_t arg_0x86282b0){
#line 37
  unsigned char result;
#line 37

#line 37
  result = PageEEPROMM$PageEEPROM$erase(arg_0x8628160, arg_0x86282b0);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static 
# 90 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$PageEEPROM$erase(uint8_t client, eeprompage_t page, uint8_t eraseKind)
#line 90
{
  if (!PageEEPROMShare$setClient(client)) {
    return FAIL;
    }
#line 93
  return PageEEPROMShare$check(PageEEPROMShare$ActualEEPROM$erase(page, eraseKind));
}

# 37 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t FlashM$PageEEPROM$erase(eeprompage_t arg_0x8628160, uint8_t arg_0x86282b0){
#line 37
  unsigned char result;
#line 37

#line 37
  result = PageEEPROMShare$PageEEPROM$erase(0, arg_0x8628160, arg_0x86282b0);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline  
# 231 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$erase(uint8_t id, pageptr_t page)
{






  FlashM$Tid = id;

  return FlashM$PageEEPROM$erase(page, TOS_EEPROM_ERASE);
}

# 48 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t RootDirectoryM$GenericFlash$erase(pageptr_t arg_0x8587ed8){
#line 48
  unsigned char result;
#line 48

#line 48
  result = FlashM$GenericFlash$erase(2, arg_0x8587ed8);
#line 48

#line 48
  return result;
#line 48
}
#line 48
static inline  
# 316 "StressTestC.nc"
void StressTestC$RootDirectory$getRootDone(result_t res)
{
}

# 39 "../../tos/interfaces/Stack.nc"
inline static  result_t CheckpointC$Stack$pop(void *arg_0x872f048, datalen_t *arg_0x872f1b0){
#line 39
  unsigned char result;
#line 39

#line 39
  result = StackC$Stack$pop(0, arg_0x872f048, arg_0x872f1b0);
#line 39

#line 39
  return result;
#line 39
}
#line 39
static inline  
# 268 "../../tos/system/StackC.nc"
void StackC$RootPtrAccess$setPtr(uint8_t id, flashptr_t *setPtr)
{

  StackC$Console$string("Setting stack root ptr, pg=");
  StackC$Console$decimal(setPtr->page);
  StackC$Console$string(" off=");
  StackC$Console$decimal(setPtr->offset);
  StackC$Console$string("\n");
  TOSH_uwait(50000);


  nmemcpy(& StackC$local[id].head, setPtr, sizeof(flashptr_t ));
}

# 32 "../../tos/interfaces/RootPtrAccess.nc"
inline static  void CheckpointC$RootPtrAccess$setPtr(flashptr_t *arg_0x872be18){
#line 32
  StackC$RootPtrAccess$setPtr(0, arg_0x872be18);
#line 32
}
#line 32
static inline  
# 170 "../../tos/system/CheckpointC.nc"
void CheckpointC$RootDirectory$getRootDone(result_t res)
{
  if (res != SUCCESS) 
    {
      CheckpointC$tempResult = res;
      TOS_post(CheckpointC$signaler);
      return;
    }



  CheckpointC$RootPtrAccess$setPtr(& CheckpointC$local[0].root);


  if (SUCCESS != CheckpointC$Stack$pop(CheckpointC$local[0].state.state_buffer, (void *)0)) 
    {

      CheckpointC$Console$string("ERROR ! Unable to pop state stack\n");

      CheckpointC$tempResult = FAIL;
      TOS_post(CheckpointC$signaler);
    }
}

# 41 "../../tos/interfaces/RootDirectory.nc"
inline static  void RootDirectoryM$RootDirectory$getRootDone(result_t arg_0x8596060){
#line 41
  CheckpointC$RootDirectory$getRootDone(arg_0x8596060);
#line 41
  StressTestC$RootDirectory$getRootDone(arg_0x8596060);
#line 41
}
#line 41
static inline  
# 393 "../../tos/system/RootDirectoryM.nc"
void RootDirectoryM$signalGetRoot(void)
{
  RootDirectoryM$unlock();

  RootDirectoryM$RootDirectory$getRootDone(SUCCESS);
}

static inline  result_t RootDirectoryM$RootDirectory$getRoot(uint8_t id, flashptr_t *ptr)
{
  if (SUCCESS != RootDirectoryM$lock()) {
    return FAIL;
    }
#line 434
  nmemcpy(ptr, &RootDirectoryM$root.root[id], sizeof(flashptr_t ));

  TOS_post(RootDirectoryM$signalGetRoot);

  return SUCCESS;
}

# 39 "../../tos/interfaces/RootDirectory.nc"
inline static  result_t CheckpointC$RootDirectory$getRoot(uint8_t arg_0x8581ac0, flashptr_t *arg_0x8581c28){
#line 39
  unsigned char result;
#line 39

#line 39
  result = RootDirectoryM$RootDirectory$getRoot(arg_0x8581ac0, arg_0x8581c28);
#line 39

#line 39
  return result;
#line 39
}
#line 39
static inline  
# 256 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$PageEEPROM$computeCrcDone(result_t result, uint16_t crc)
{
  return SUCCESS;
}

static inline   
# 181 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$PageEEPROM$default$computeCrcDone(uint8_t client, result_t result, uint16_t crc)
#line 181
{
  return FAIL;
}

# 56 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$PageEEPROM$computeCrcDone(uint8_t arg_0x86ac4a0, result_t arg_0x862fc70, uint16_t arg_0x862fdc0){
#line 56
  unsigned char result;
#line 56

#line 56
  switch (arg_0x86ac4a0) {
#line 56
    case 0:
#line 56
      result = FlashM$PageEEPROM$computeCrcDone(arg_0x862fc70, arg_0x862fdc0);
#line 56
      break;
#line 56
    default:
#line 56
      result = PageEEPROMShare$PageEEPROM$default$computeCrcDone(arg_0x86ac4a0, arg_0x862fc70, arg_0x862fdc0);
#line 56
    }
#line 56

#line 56
  return result;
#line 56
}
#line 56
static 
# 150 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$ActualEEPROM$computeCrcDone(result_t result, uint16_t crc)
#line 150
{
  return PageEEPROMShare$PageEEPROM$computeCrcDone(PageEEPROMShare$getClient(), result, crc);
}

# 56 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMM$PageEEPROM$computeCrcDone(result_t arg_0x862fc70, uint16_t arg_0x862fdc0){
#line 56
  unsigned char result;
#line 56

#line 56
  result = PageEEPROMShare$ActualEEPROM$computeCrcDone(arg_0x862fc70, arg_0x862fdc0);
#line 56

#line 56
  return result;
#line 56
}
#line 56
static inline  
# 292 "StressTestC.nc"
result_t StressTestC$GenericFlash$writeDone(result_t r)
{
  return SUCCESS;
}

static inline   
# 266 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$default$writeDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 36 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$writeDone(uint8_t arg_0x8615d00, result_t arg_0x8567f50){
#line 36
  unsigned char result;
#line 36

#line 36
  switch (arg_0x8615d00) {
#line 36
    case 0:
#line 36
      result = ChunkStorageC$GenericFlash$writeDone(arg_0x8567f50);
#line 36
      break;
#line 36
    case 1:
#line 36
      result = StressTestC$GenericFlash$writeDone(arg_0x8567f50);
#line 36
      break;
#line 36
    case 2:
#line 36
      result = RootDirectoryM$GenericFlash$writeDone(arg_0x8567f50);
#line 36
      break;
#line 36
    default:
#line 36
      result = FlashM$GenericFlash$default$writeDone(arg_0x8615d00, arg_0x8567f50);
#line 36
    }
#line 36

#line 36
  return result;
#line 36
}
#line 36
static inline  
# 251 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
void PageEEPROMM$taskSuccess(void)
#line 251
{
  PageEEPROMM$requestDone(SUCCESS);
}

static inline  void PageEEPROMM$taskFail(void)
#line 255
{
  PageEEPROMM$requestDone(FAIL);
}

static inline 
#line 606
result_t PageEEPROMM$syncOrFlush(eeprompage_t page, uint8_t newReq)
#line 606
{
  if (PageEEPROMM$request != PageEEPROMM$IDLE) {
    return FAIL;
    }
#line 609
  PageEEPROMM$request = newReq;

  if (PageEEPROMM$broken) 
    {
      TOS_post(PageEEPROMM$taskFail);
      return SUCCESS;
    }
  else {
#line 616
    if (PageEEPROMM$buffer[0].page == page) {
      PageEEPROMM$selected = 0;
      }
    else {
#line 618
      if (PageEEPROMM$buffer[1].page == page) {
        PageEEPROMM$selected = 1;
        }
      else {
          TOS_post(PageEEPROMM$taskSuccess);
          return SUCCESS;
        }
      }
    }
#line 626
  PageEEPROMM$buffer[PageEEPROMM$selected].unchecked = 0;
  PageEEPROMM$handleRWRequest();

  return SUCCESS;
}

static inline  



result_t PageEEPROMM$PageEEPROM$flush(eeprompage_t page)
#line 636
{
  return PageEEPROMM$syncOrFlush(page, PageEEPROMM$R_FLUSH);
}

# 44 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$ActualEEPROM$flush(eeprompage_t arg_0x8629598){
#line 44
  unsigned char result;
#line 44

#line 44
  result = PageEEPROMM$PageEEPROM$flush(arg_0x8629598);
#line 44

#line 44
  return result;
#line 44
}
#line 44
static 
# 116 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$PageEEPROM$flush(uint8_t client, eeprompage_t page)
#line 116
{
  if (!PageEEPROMShare$setClient(client)) {
    return FAIL;
    }
#line 119
  return PageEEPROMShare$check(PageEEPROMShare$ActualEEPROM$flush(page));
}

# 44 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t FlashM$PageEEPROM$flush(eeprompage_t arg_0x8629598){
#line 44
  unsigned char result;
#line 44

#line 44
  result = PageEEPROMShare$PageEEPROM$flush(0, arg_0x8629598);
#line 44

#line 44
  return result;
#line 44
}
#line 44
static inline  
# 72 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$PageEEPROM$writeDone(result_t res)
{
  if (res == SUCCESS) 
    {
      if (SUCCESS != FlashM$PageEEPROM$flush(FlashM$Tpage)) 
        {
          FlashM$GenericFlash$writeDone(FlashM$Tid, FAIL);
        }
    }
  else 
    {
      FlashM$GenericFlash$writeDone(FlashM$Tid, FAIL);
    }

  return SUCCESS;
}

static inline   
# 161 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$PageEEPROM$default$writeDone(uint8_t client, result_t result)
#line 161
{
  return FAIL;
}

# 35 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$PageEEPROM$writeDone(uint8_t arg_0x86ac4a0, result_t arg_0x8627d40){
#line 35
  unsigned char result;
#line 35

#line 35
  switch (arg_0x86ac4a0) {
#line 35
    case 0:
#line 35
      result = FlashM$PageEEPROM$writeDone(arg_0x8627d40);
#line 35
      break;
#line 35
    default:
#line 35
      result = PageEEPROMShare$PageEEPROM$default$writeDone(arg_0x86ac4a0, arg_0x8627d40);
#line 35
    }
#line 35

#line 35
  return result;
#line 35
}
#line 35
static 
# 86 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$ActualEEPROM$writeDone(result_t result)
#line 86
{
  return PageEEPROMShare$PageEEPROM$writeDone(PageEEPROMShare$getClient(), result);
}

# 35 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMM$PageEEPROM$writeDone(result_t arg_0x8627d40){
#line 35
  unsigned char result;
#line 35

#line 35
  result = PageEEPROMShare$ActualEEPROM$writeDone(arg_0x8627d40);
#line 35

#line 35
  return result;
#line 35
}
#line 35
# 131 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline void TOSH_CLR_FLASH_SELECT_PIN(void)
#line 131
{
#line 131
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x1B + 0x20) &= ~(1 << 3);
}

static inline   
# 83 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
result_t HPLFlash$FlashSelect$low(void)
#line 83
{
  TOSH_CLR_FLASH_CLK_PIN();
  TOSH_CLR_FLASH_SELECT_PIN();
  return SUCCESS;
}

# 51 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/SlavePin.nc"
inline static   result_t PageEEPROMM$FlashSelect$low(void){
#line 51
  unsigned char result;
#line 51

#line 51
  result = HPLFlash$FlashSelect$low();
#line 51

#line 51
  return result;
#line 51
}
#line 51
static inline 
# 157 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
void PageEEPROMM$selectFlash(void)
#line 157
{
  PageEEPROMM$FlashSelect$low();
}

# 59 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/FastSPI.nc"
inline static   uint8_t PageEEPROMM$FlashSPI$txByte(uint8_t arg_0x8665508){
#line 59
  unsigned char result;
#line 59

#line 59
  result = HPLFlash$FlashSPI$txByte(arg_0x8665508);
#line 59

#line 59
  return result;
#line 59
}
#line 59
# 134 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline int TOSH_READ_FLASH_IN_PIN(void)
#line 134
{
#line 134
  return (* (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x10 + 0x20) & (1 << 2)) != 0;
}

static inline  
# 145 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
result_t HPLFlash$FlashIdle$wait(void)
#line 145
{
  result_t waits;


  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      * (volatile unsigned char *)(0x38 + 0x20) = 1 << 2;
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x39 + 0x20) |= 1 << 2;
      TOSH_CLR_FLASH_CLK_PIN();




      TOSH_uwait(2);

      if (TOSH_READ_FLASH_IN_PIN()) 
        {

          * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x39 + 0x20) &= ~(1 << 2);
          waits = FAIL;
        }
      else {
        waits = SUCCESS;
        }
    }
#line 169
    __nesc_atomic_end(__nesc_atomic); }
#line 169
  return waits;
}

# 32 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Resource.nc"
inline static  result_t PageEEPROMM$FlashIdle$wait(void){
#line 32
  unsigned char result;
#line 32

#line 32
  result = HPLFlash$FlashIdle$wait();
#line 32

#line 32
  return result;
#line 32
}
#line 32
static inline  
# 361 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$FlashSelect$notifyHigh(void)
#line 361
{
  if (PageEEPROMM$deselectRequested) 
    {
      PageEEPROMM$deselectRequested = FALSE;
      PageEEPROMM$flashCommandComplete();
    }
  return SUCCESS;
}

# 66 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/SlavePin.nc"
inline static  result_t HPLFlash$FlashSelect$notifyHigh(void){
#line 66
  unsigned char result;
#line 66

#line 66
  result = PageEEPROMM$FlashSelect$notifyHigh();
#line 66

#line 66
  return result;
#line 66
}
#line 66
static inline  
# 89 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
void HPLFlash$sigHigh(void)
#line 89
{
  HPLFlash$FlashSelect$notifyHigh();
}

static inline   result_t HPLFlash$FlashSelect$high(bool needEvent)
#line 93
{
  TOSH_SET_FLASH_SELECT_PIN();
  if (needEvent) {
    TOS_post(HPLFlash$sigHigh);
    }
#line 97
  return SUCCESS;
}

# 61 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/SlavePin.nc"
inline static   result_t PageEEPROMM$FlashSelect$high(bool arg_0x8659af0){
#line 61
  unsigned char result;
#line 61

#line 61
  result = HPLFlash$FlashSelect$high(arg_0x8659af0);
#line 61

#line 61
  return result;
#line 61
}
#line 61
static inline 
# 162 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
void PageEEPROMM$requestDeselect(void)
#line 162
{
  PageEEPROMM$deselectRequested = TRUE;
  PageEEPROMM$FlashSelect$high(TRUE);
}

# 132 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/hardware.h"
static __inline void TOSH_SET_FLASH_CLK_PIN(void)
#line 132
{
#line 132
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) |= 1 << 5;
}

static inline  
# 178 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
bool HPLFlash$getCompareStatus(void)
#line 178
{
  TOSH_SET_FLASH_CLK_PIN();
  TOSH_CLR_FLASH_CLK_PIN();

   __asm volatile ("nop");
   __asm volatile ("nop");
  return !TOSH_READ_FLASH_IN_PIN();
}

# 43 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
inline static  bool PageEEPROMM$getCompareStatus(void){
#line 43
  unsigned char result;
#line 43

#line 43
  result = HPLFlash$getCompareStatus();
#line 43

#line 43
  return result;
#line 43
}
#line 43
static inline  
#line 167
result_t PageEEPROMM$FlashIdle$available(void)
#line 167
{
  if (PageEEPROMM$cmdPhase == PageEEPROMM$P_COMPARE_CHECK) {
    PageEEPROMM$compareOk = PageEEPROMM$getCompareStatus();
    }
#line 170
  PageEEPROMM$requestDeselect();
  return SUCCESS;
}

static inline 
# 66 "/tinyos-1.1.0/tinyos-1.x/tos/platform/avrmote/crc.h"
uint16_t crcByte(uint16_t oldCrc, uint8_t byte)
{

  uint16_t *table = crcTable;
  uint16_t newCrc;

   __asm ("eor %1,%B3\n"
  "\tlsl %1\n"
  "\tadc %B2, __zero_reg__\n"
  "\tadd %A2, %1\n"
  "\tadc %B2, __zero_reg__\n"
  "\tlpm\n"
  "\tmov %B0, %A3\n"
  "\tmov %A0, r0\n"
  "\tadiw r30,1\n"
  "\tlpm\n"
  "\teor %B0, r0" : 
  "=r"(newCrc), "+r"(byte), "+z"(table) : "r"(oldCrc));
  return newCrc;
}

static inline 
# 640 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$syncOrFlushAll(uint8_t newReq)
#line 640
{
  if (PageEEPROMM$request != PageEEPROMM$IDLE) {
    return FAIL;
    }
#line 643
  PageEEPROMM$request = newReq;

  if (PageEEPROMM$broken) 
    {
      TOS_post(PageEEPROMM$taskFail);
      return SUCCESS;
    }
  else {
#line 650
    if (! PageEEPROMM$buffer[0].clean) {
      PageEEPROMM$selected = 0;
      }
    else {
#line 652
      if (! PageEEPROMM$buffer[1].clean) {
        PageEEPROMM$selected = 1;
        }
      else {
          TOS_post(PageEEPROMM$taskSuccess);
          return SUCCESS;
        }
      }
    }
#line 660
  PageEEPROMM$buffer[PageEEPROMM$selected].unchecked = 0;
  PageEEPROMM$handleRWRequest();

  return SUCCESS;
}

static inline 
#line 385
void PageEEPROMM$execRWBuffer(uint8_t reqCmd, uint8_t dontCare, eeprompageoffset_t offset)
#line 385
{
  PageEEPROMM$execCommand(PageEEPROMM$buffer[PageEEPROMM$selected].busy, reqCmd, dontCare, 0, offset);
}

static inline  
# 312 "StressTestC.nc"
void StressTestC$RootDirectory$setRootDone(result_t result)
{
}

static inline  
# 351 "../../tos/system/CheckpointC.nc"
void CheckpointC$RootDirectory$setRootDone(result_t result)
{
  CheckpointC$tempResult = result;

  TOS_post(CheckpointC$signaler);
}

# 37 "../../tos/interfaces/RootDirectory.nc"
inline static  void RootDirectoryM$RootDirectory$setRootDone(result_t arg_0x85816c0){
#line 37
  CheckpointC$RootDirectory$setRootDone(arg_0x85816c0);
#line 37
  StressTestC$RootDirectory$setRootDone(arg_0x85816c0);
#line 37
}
#line 37
static inline  
# 305 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$Compaction$compactionDone(result_t r)
{
}

static inline   
# 534 "StreamC.nc"
void StreamC$Compaction$default$compactionDone(uint8_t id, result_t res)
{
}

# 30 "../../tos/interfaces/Compaction.nc"
inline static  void StreamC$Compaction$compactionDone(uint8_t arg_0x8760a08, result_t arg_0x85d2460){
#line 30
  switch (arg_0x8760a08) {
#line 30
    case 0:
#line 30
      ChunkStorageC$Compaction$compactionDone(arg_0x85d2460);
#line 30
      break;
#line 30
    default:
#line 30
      StreamC$Compaction$default$compactionDone(arg_0x8760a08, arg_0x85d2460);
#line 30
    }
#line 30
}
#line 30
static inline  
# 500 "StreamC.nc"
void StreamC$trivialReturn(void)
{
  StreamC$Compaction$compactionDone(StreamC$streamif_id, SUCCESS);
}

static inline  
result_t StreamC$Compaction$compact(uint8_t id, uint8_t againgHint)
{






  StreamC$streamif_id = id;

  if (StreamC$local[id].tail.page == 0xFFFF && 
  StreamC$local[id].tail.offset == 0xFF) 
    {

      TOS_post(StreamC$trivialReturn);
      return SUCCESS;
    }


  nmemcpy(&StreamC$compact_ptr, & StreamC$local[id].tail, sizeof(flashptr_t ));
  StreamC$compact_count = 0;


  TOS_post(StreamC$writeDataStack);

  return SUCCESS;
}

# 28 "../../tos/interfaces/Compaction.nc"
inline static  result_t ChunkStorageC$Compaction$compact(uint8_t arg_0x85d2060){
#line 28
  unsigned char result;
#line 28

#line 28
  result = StreamC$Compaction$compact(0, arg_0x85d2060);
#line 28

#line 28
  return result;
#line 28
}
#line 28
# 48 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$erase(pageptr_t arg_0x8587ed8){
#line 48
  unsigned char result;
#line 48

#line 48
  result = FlashM$GenericFlash$erase(0, arg_0x8587ed8);
#line 48

#line 48
  return result;
#line 48
}
#line 48
static inline  
# 247 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$eraser(void)
{
  pageptr_t page = ChunkStorageC$page_ptr + 1;

  if (page == ChunkStorageC$total_pages) {
    page = 2 + 2;
    }
  if (SUCCESS != ChunkStorageC$GenericFlash$erase(page)) 
    {






      ChunkStorageC$Leds$redOn();
    }
}

static inline  
# 251 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$PageEEPROM$syncDone(result_t result)
{
  return SUCCESS;
}

static inline   
# 169 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$PageEEPROM$default$syncDone(uint8_t client, result_t result)
#line 169
{
  return FAIL;
}

# 42 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$PageEEPROM$syncDone(uint8_t arg_0x86ac4a0, result_t arg_0x8629190){
#line 42
  unsigned char result;
#line 42

#line 42
  switch (arg_0x86ac4a0) {
#line 42
    case 0:
#line 42
      result = FlashM$PageEEPROM$syncDone(arg_0x8629190);
#line 42
      break;
#line 42
    default:
#line 42
      result = PageEEPROMShare$PageEEPROM$default$syncDone(arg_0x86ac4a0, arg_0x8629190);
#line 42
    }
#line 42

#line 42
  return result;
#line 42
}
#line 42
static 
# 112 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$ActualEEPROM$syncDone(result_t result)
#line 112
{
  return PageEEPROMShare$PageEEPROM$syncDone(PageEEPROMShare$getClient(), result);
}

# 42 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMM$PageEEPROM$syncDone(result_t arg_0x8629190){
#line 42
  unsigned char result;
#line 42

#line 42
  result = PageEEPROMShare$ActualEEPROM$syncDone(arg_0x8629190);
#line 42

#line 42
  return result;
#line 42
}
#line 42
static inline  
# 89 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$PageEEPROM$flushDone(result_t res)
{
  FlashM$GenericFlash$writeDone(FlashM$Tid, res);

  return SUCCESS;
}

static inline   
# 173 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$PageEEPROM$default$flushDone(uint8_t client, result_t result)
#line 173
{
  return FAIL;
}

# 46 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$PageEEPROM$flushDone(uint8_t arg_0x86ac4a0, result_t arg_0x8629c60){
#line 46
  unsigned char result;
#line 46

#line 46
  switch (arg_0x86ac4a0) {
#line 46
    case 0:
#line 46
      result = FlashM$PageEEPROM$flushDone(arg_0x8629c60);
#line 46
      break;
#line 46
    default:
#line 46
      result = PageEEPROMShare$PageEEPROM$default$flushDone(arg_0x86ac4a0, arg_0x8629c60);
#line 46
    }
#line 46

#line 46
  return result;
#line 46
}
#line 46
static 
# 128 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$ActualEEPROM$flushDone(result_t result)
#line 128
{
  return PageEEPROMShare$PageEEPROM$flushDone(PageEEPROMShare$getClient(), result);
}

# 46 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMM$PageEEPROM$flushDone(result_t arg_0x8629c60){
#line 46
  unsigned char result;
#line 46

#line 46
  result = PageEEPROMShare$ActualEEPROM$flushDone(arg_0x8629c60);
#line 46

#line 46
  return result;
#line 46
}
#line 46
static inline  
# 257 "StressTestC.nc"
result_t StressTestC$GenericFlash$eraseDone(result_t r)
{
  if (SUCCESS != r) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("ERROR ! erase call failure - pg: ");
      StressTestC$Console$decimal(StressTestC$current);
      StressTestC$Console$string("\n");
      return FAIL;
    }
  else 
    {
      if (StressTestC$current < StressTestC$pages) 
        {
          TOS_post(StressTestC$format);
        }
      else 

        {
          StressTestC$Console$string("Flash formatted... Ready\n");

          StressTestC$current = 0;
        }
    }


  return SUCCESS;
}

static inline  
# 750 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$GenericFlash$eraseDone(result_t result)
{


  return SUCCESS;
}

static inline  
# 441 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$GenericFlash$eraseDone(result_t result)
{
  return SUCCESS;
}

static inline   
# 276 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$GenericFlash$default$eraseDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 49 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$eraseDone(uint8_t arg_0x8615d00, result_t arg_0x8584300){
#line 49
  unsigned char result;
#line 49

#line 49
  switch (arg_0x8615d00) {
#line 49
    case 0:
#line 49
      result = ChunkStorageC$GenericFlash$eraseDone(arg_0x8584300);
#line 49
      break;
#line 49
    case 1:
#line 49
      result = StressTestC$GenericFlash$eraseDone(arg_0x8584300);
#line 49
      break;
#line 49
    case 2:
#line 49
      result = RootDirectoryM$GenericFlash$eraseDone(arg_0x8584300);
#line 49
      break;
#line 49
    default:
#line 49
      result = FlashM$GenericFlash$default$eraseDone(arg_0x8615d00, arg_0x8584300);
#line 49
    }
#line 49

#line 49
  return result;
#line 49
}
#line 49
static inline  
# 244 "../../tos/platform/mica2/FlashM.nc"
result_t FlashM$PageEEPROM$eraseDone(result_t res)
{
  FlashM$GenericFlash$eraseDone(FlashM$Tid, res);

  return SUCCESS;
}

static inline   
# 165 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
result_t PageEEPROMShare$PageEEPROM$default$eraseDone(uint8_t client, result_t result)
#line 165
{
  return FAIL;
}

# 38 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMShare$PageEEPROM$eraseDone(uint8_t arg_0x86ac4a0, result_t arg_0x86286c8){
#line 38
  unsigned char result;
#line 38

#line 38
  switch (arg_0x86ac4a0) {
#line 38
    case 0:
#line 38
      result = FlashM$PageEEPROM$eraseDone(arg_0x86286c8);
#line 38
      break;
#line 38
    default:
#line 38
      result = PageEEPROMShare$PageEEPROM$default$eraseDone(arg_0x86ac4a0, arg_0x86286c8);
#line 38
    }
#line 38

#line 38
  return result;
#line 38
}
#line 38
static 
# 96 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROMShare.nc"
__inline  result_t PageEEPROMShare$ActualEEPROM$eraseDone(result_t result)
#line 96
{
  return PageEEPROMShare$PageEEPROM$eraseDone(PageEEPROMShare$getClient(), result);
}

# 38 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/AT45DB/PageEEPROM.nc"
inline static  result_t PageEEPROMM$PageEEPROM$eraseDone(result_t arg_0x86286c8){
#line 38
  unsigned char result;
#line 38

#line 38
  result = PageEEPROMShare$ActualEEPROM$eraseDone(arg_0x86286c8);
#line 38

#line 38
  return result;
#line 38
}
#line 38
# 48 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t StressTestC$GenericFlash$erase(pageptr_t arg_0x8587ed8){
#line 48
  unsigned char result;
#line 48

#line 48
  result = FlashM$GenericFlash$erase(1, arg_0x8587ed8);
#line 48

#line 48
  return result;
#line 48
}
#line 48
static 
# 187 "/tinyos-1.1.0/tinyos-1.x/tos/platform/avrmote/avrhardware.h"
__inline void __nesc_enable_interrupt(void)
#line 187
{
   __asm volatile ("sei");}

#line 172
__inline void  __nesc_atomic_end(__nesc_atomic_t oldSreg)
{
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x3F + 0x20) = oldSreg;
}

static inline 
#line 150
void TOSH_wait(void)
{
   __asm volatile ("nop");
   __asm volatile ("nop");}

static 
#line 179
__inline void __nesc_atomic_sleep(void)
{

   __asm volatile ("sei");
   __asm volatile ("sleep");
  TOSH_wait();
}

#line 165
__inline __nesc_atomic_t  __nesc_atomic_start(void )
{
  __nesc_atomic_t result = * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x3F + 0x20);

#line 168
   __asm volatile ("cli");
  return result;
}

static inline 
# 136 "/tinyos-1.1.0/tinyos-1.x/tos/system/sched.c"
bool TOSH_run_next_task(void)
{
  __nesc_atomic_t fInterruptFlags;
  uint8_t old_full;
  void (*func)(void );

  fInterruptFlags = __nesc_atomic_start();
  old_full = TOSH_sched_full;
  func = TOSH_queue[old_full].tp;
  if (func == (void *)0) 
    {
      __nesc_atomic_sleep();
      return 0;
    }

  TOSH_queue[old_full].tp = (void *)0;
  TOSH_sched_full = (old_full + 1) & TOSH_TASK_BITMASK;
  __nesc_atomic_end(fInterruptFlags);
  func();

  return 1;
}

static inline void TOSH_run_task(void)
#line 159
{
  for (; ; ) 
    TOSH_run_next_task();
}

static inline  
# 141 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
void HPLFlash$avail(void)
#line 141
{
  HPLFlash$FlashIdle$available();
}

#line 173
void __attribute((signal))   __vector_3(void)
#line 173
{
  * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x39 + 0x20) &= ~(1 << 2);
  TOS_post(HPLFlash$avail);
}

# 88 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t HPLUART0M$UART$get(uint8_t arg_0x8704f80){
#line 88
  unsigned char result;
#line 88

#line 88
  result = ConsoleC$HPLUART$get(arg_0x8704f80);
#line 88

#line 88
  return result;
#line 88
}
#line 88
# 90 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLUART0M.nc"
void __attribute((signal))   __vector_18(void)
#line 90
{
  if (* (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x0B + 0x20) & (1 << 7)) {
    HPLUART0M$UART$get(* (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x0C + 0x20));
    }
}

static inline  
# 366 "../../tos/system/CheckpointC.nc"
void CheckpointC$Console$input(char *s)
{
}

static inline  
# 456 "../../tos/system/RootDirectoryM.nc"
void RootDirectoryM$Console$input(char *s)
{
}

static inline  
# 811 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$Console$input(char *s)
{
}

static inline  
# 299 "../../tos/system/StackC.nc"
void StackC$Console$input(char *s)
{
}

static inline  
# 295 "StreamC.nc"
void StreamC$Console$input(char *s)
{
}

static inline  
# 141 "../../tos/system/CheckpointC.nc"
result_t CheckpointC$Checkpoint$rollback(void)
{
  if (CheckpointC$lock() != SUCCESS) 
    {

      CheckpointC$Console$string("ERROR ! Unable to acquire lock\n");

      return FAIL;
    }

  TOS_post(CheckpointC$rollBack);

  return SUCCESS;
}

# 35 "../../tos/interfaces/Checkpoint.nc"
inline static  result_t StressTestC$Checkpoint$rollback(void){
#line 35
  unsigned char result;
#line 35

#line 35
  result = CheckpointC$Checkpoint$rollback();
#line 35

#line 35
  return result;
#line 35
}
#line 35
static inline  
# 91 "StressTestC.nc"
void StressTestC$check_rollback(void)
{
  if (SUCCESS != StressTestC$Checkpoint$rollback()) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Rollback error...\n");
      TOSH_uwait(3000);
    }
}

# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
inline static   result_t CheckpointC$Leds$redOn(void){
#line 64
  unsigned char result;
#line 64

#line 64
  result = LedsC$Leds$redOn();
#line 64

#line 64
  return result;
#line 64
}
#line 64
static inline 
# 85 "../../tos/system/CheckpointC.nc"
void CheckpointC$unlock(void)
{
  CheckpointC$busy = FALSE;
}

# 11 "../../tos/interfaces/Console.nc"
inline static  result_t CheckpointC$Console$decimal(int32_t arg_0x8578880){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8578880);
#line 11

#line 11
  return result;
#line 11
}
#line 11
# 34 "../../tos/interfaces/Stack.nc"
inline static  result_t CheckpointC$Stack$push(void *arg_0x872e568, datalen_t arg_0x872e6b8, flashptr_t *arg_0x872e828){
#line 34
  unsigned char result;
#line 34

#line 34
  result = StackC$Stack$push(0, arg_0x872e568, arg_0x872e6b8, arg_0x872e828);
#line 34

#line 34
  return result;
#line 34
}
#line 34
static inline  
# 254 "StreamC.nc"
result_t StreamC$Serialize$checkpoint(uint8_t id, uint8_t *buffer, datalen_t *len)
{

  StreamC$Console$string("Checkpointing Stream, len=");
  StreamC$Console$decimal(*len);
  StreamC$Console$string(" pg=");
  StreamC$Console$decimal(StreamC$local[id].tail.page);
  StreamC$Console$string(" off=");
  StreamC$Console$decimal(StreamC$local[id].tail.offset);
  StreamC$Console$string("\n");
  TOSH_uwait(50000);


  nmemcpy(&buffer[*len], & StreamC$local[id].tail, sizeof(flashptr_t ));
  *len += sizeof(flashptr_t );

  return SUCCESS;
}

static inline  
# 762 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$Serialize$checkpoint(uint8_t *buffer, datalen_t *len)
{

  ChunkStorageC$Console$string("Checkpointing ChunkStorage, pg=");
  ChunkStorageC$Console$decimal(ChunkStorageC$page_ptr);


  ChunkStorageC$Console$string("\n");
  TOSH_uwait(50000);


  nmemcpy(&buffer[*len], &ChunkStorageC$page_ptr, sizeof(pageptr_t ));
  *len += sizeof(pageptr_t );



  return SUCCESS;
}

# 31 "../../tos/interfaces/Serialize.nc"
inline static  result_t CheckpointC$Serialize$checkpoint(uint8_t *arg_0x85c6b50, datalen_t *arg_0x85c6cb8){
#line 31
  unsigned char result;
#line 31

#line 31
  result = ChunkStorageC$Serialize$checkpoint(arg_0x85c6b50, arg_0x85c6cb8);
#line 31
  result = rcombine(result, StreamC$Serialize$checkpoint(0, arg_0x85c6b50, arg_0x85c6cb8));
#line 31

#line 31
  return result;
#line 31
}
#line 31
static inline 
# 262 "../../tos/system/CheckpointC.nc"
result_t CheckpointC$saveData(void)
{
  datalen_t len = 0;


  CheckpointC$Serialize$checkpoint(CheckpointC$local[0].state.state_buffer, &len);
#line 290
  if (SUCCESS != CheckpointC$Stack$push(CheckpointC$local[0].state.state_buffer, 
  len, & CheckpointC$local[0].root)) 
    {

      CheckpointC$Console$string("ERROR ! Unable to push data on the state stack. len:");
      CheckpointC$Console$decimal(len);
      CheckpointC$Console$string("\n");

      return FAIL;
    }

  return SUCCESS;
}

static inline  
#line 237
result_t CheckpointC$Checkpoint$checkpoint(void)
{
  if (CheckpointC$lock() != SUCCESS) 
    {

      CheckpointC$Console$string("ERROR ! Unable to acquire lock\n");

      return FAIL;
    }

  CheckpointC$local[0].trans_state = CheckpointC$CHECKPOINTING;

  if (SUCCESS != CheckpointC$saveData()) 
    {
      CheckpointC$unlock();

      CheckpointC$Console$string("ERROR ! Unable to save state\n");

      CheckpointC$Leds$redOn();
      return FAIL;
    }

  return SUCCESS;
}

# 33 "../../tos/interfaces/Checkpoint.nc"
inline static  result_t StressTestC$Checkpoint$checkpoint(void){
#line 33
  unsigned char result;
#line 33

#line 33
  result = CheckpointC$Checkpoint$checkpoint();
#line 33

#line 33
  return result;
#line 33
}
#line 33
static inline  
# 72 "StressTestC.nc"
void StressTestC$check_checkpt(void)
{
  if (SUCCESS != StressTestC$Checkpoint$checkpoint()) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Checkpoint error...\n");
      TOSH_uwait(3000);
    }
}

static inline  
# 64 "../../tos/system/StackC.nc"
result_t StackC$Stack$init(uint8_t id, bool ecc)
{
  StackC$local[id].doEcc = ecc;
  StackC$local[id].head.page = ~0;
  StackC$local[id].head.offset = ~0;

  return SUCCESS;
}

# 31 "../../tos/interfaces/Stack.nc"
inline static  result_t CheckpointC$Stack$init(bool arg_0x872e158){
#line 31
  unsigned char result;
#line 31

#line 31
  result = StackC$Stack$init(0, arg_0x872e158);
#line 31

#line 31
  return result;
#line 31
}
#line 31
static inline  
# 90 "../../tos/system/CheckpointC.nc"
result_t CheckpointC$Checkpoint$init(uint8_t id_)
{
  CheckpointC$unlock();
  CheckpointC$local[0].id = id_;
  CheckpointC$Stack$init(FALSE);

  return SUCCESS;
}

# 31 "../../tos/interfaces/Checkpoint.nc"
inline static  result_t StressTestC$Checkpoint$init(uint8_t arg_0x858a7f0){
#line 31
  unsigned char result;
#line 31

#line 31
  result = CheckpointC$Checkpoint$init(arg_0x858a7f0);
#line 31

#line 31
  return result;
#line 31
}
#line 31
static inline  
# 154 "StreamC.nc"
result_t StreamC$Stream$next(uint8_t id, void *data, datalen_t *len)
{
  uint8_t ecc;

  if (StreamC$local[id].traverse.page == 0xFFFF && 
  StreamC$local[id].traverse.offset == 0xFF) 
    {

      StreamC$Console$string("No more data in the stream\n");
      TOSH_uwait(4000);

      return FAIL;
    }


  StreamC$Console$string("Traversing stream from- page:");
  StreamC$Console$decimal(StreamC$local[id].traverse.page);
  StreamC$Console$string(" off:");
  StreamC$Console$decimal(StreamC$local[id].traverse.offset);
  StreamC$Console$string("\n");
  TOSH_uwait(4000);


  if (SUCCESS != StreamC$ChunkStorage$read(& StreamC$local[id].traverse, 
  & StreamC$local[id].traverse, sizeof(stream_header ), 
  data, len, StreamC$local[id].doEcc, &ecc)) 
    {

      StreamC$Console$string("ERROR ! chunk read failed while trying to get data while traversing stream\n");

      StreamC$Leds$redOn();
      return FAIL;
    }
  else 
    {
      StreamC$streamif_id = id;
      StreamC$state = StreamC$TRAVERSE;

      return SUCCESS;
    }
}

# 42 "../../tos/interfaces/Stream.nc"
inline static  result_t StressTestC$Stream$next(void *arg_0x858ccb0, datalen_t *arg_0x858ce18){
#line 42
  unsigned char result;
#line 42

#line 42
  result = StreamC$Stream$next(0, arg_0x858ccb0, arg_0x858ce18);
#line 42

#line 42
  return result;
#line 42
}
#line 42
static inline  
# 142 "StressTestC.nc"
void StressTestC$check_stream_next(void)
{
  if (SUCCESS != StressTestC$Stream$next(&StressTestC$j_, &StressTestC$len)) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Error getting next stream element...\n");
    }
}

static inline  
# 87 "StreamC.nc"
result_t StreamC$Stream$append(uint8_t id, void *data, datalen_t len, 
flashptr_t *save_ptr)
{


  StreamC$header.prev_ptr.page = StreamC$local[id].tail.page;
  StreamC$header.prev_ptr.offset = StreamC$local[id].tail.offset;

  if (SUCCESS != StreamC$ChunkStorage$write(&StreamC$header, 
  sizeof(stream_header ), data, 
  len, StreamC$local[id].doEcc, 
  & StreamC$local[id].tail)) 
    {

      StreamC$Console$string("ERROR ! chunk write failed while trying to append to stream\n");

      StreamC$Leds$redOn();
      return FAIL;
    }
  else 
    {
      StreamC$streamif_id = id;
      StreamC$Tsave_ptr = save_ptr;
      StreamC$state = StreamC$APPEND;

      return SUCCESS;
    }
}

# 34 "../../tos/interfaces/Stream.nc"
inline static  result_t StressTestC$Stream$append(void *arg_0x8591d60, datalen_t arg_0x8591eb0, flashptr_t *arg_0x858c060){
#line 34
  unsigned char result;
#line 34

#line 34
  result = StreamC$Stream$append(0, arg_0x8591d60, arg_0x8591eb0, arg_0x858c060);
#line 34

#line 34
  return result;
#line 34
}
#line 34
static inline  
# 110 "StressTestC.nc"
void StressTestC$check_stream_append(void)
{
  if (SUCCESS != StressTestC$Stream$append(&StressTestC$j, 2, &StressTestC$someptr)) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Error appending...\n");
    }
}

static inline  
# 144 "StreamC.nc"
result_t StreamC$Stream$start_traversal(uint8_t id, flashptr_t *start_ptr)
{
  if (start_ptr == (void *)0) {
    nmemcpy(& StreamC$local[id].traverse, & StreamC$local[id].tail, sizeof(flashptr_t ));
    }
  else {
#line 149
    nmemcpy(& StreamC$local[id].traverse, start_ptr, sizeof(flashptr_t ));
    }
  return SUCCESS;
}

# 39 "../../tos/interfaces/Stream.nc"
inline static  result_t StressTestC$Stream$start_traversal(flashptr_t *arg_0x858c8a0){
#line 39
  unsigned char result;
#line 39

#line 39
  result = StreamC$Stream$start_traversal(0, arg_0x858c8a0);
#line 39

#line 39
  return result;
#line 39
}
#line 39
static inline  
# 78 "StreamC.nc"
result_t StreamC$Stream$init(uint8_t id, bool ecc)
{
  StreamC$local[id].doEcc = ecc;
  StreamC$local[id].traverse.page = StreamC$local[id].traverse.offset = 
  StreamC$local[id].tail.page = StreamC$local[id].tail.offset = ~0;

  return SUCCESS;
}

# 31 "../../tos/interfaces/Stream.nc"
inline static  result_t StressTestC$Stream$init(bool arg_0x8591950){
#line 31
  unsigned char result;
#line 31

#line 31
  result = StreamC$Stream$init(0, arg_0x8591950);
#line 31

#line 31
  return result;
#line 31
}
#line 31
# 54 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StressTestC$ChunkStorage$flush(void){
#line 54
  unsigned char result;
#line 54

#line 54
  result = ChunkStorageC$ChunkStorage$flush(3);
#line 54

#line 54
  return result;
#line 54
}
#line 54
static inline  
# 35 "StressTestC.nc"
void StressTestC$write_flush(void)
{
  if (SUCCESS != StressTestC$ChunkStorage$flush()) 
    {
      StressTestC$Console$string("Flush call failed\n");
      StressTestC$Leds$redOn();
    }
}

static inline  
#line 200
void StressTestC$Console$input(char *s)
{
  if (s[0] == 'f') 
    {
      StressTestC$Console$string("write flush test...\n");
      TOS_post(StressTestC$write_flush);
    }

  if (s[0] == 'f' && s[1] == 'f') 
    {
      StressTestC$Console$string("formatting flash...\n");
      TOS_post(StressTestC$format);
    }

  if (s[0] == 'd' && s[1] == 'i') {
    StressTestC$Stream$init(FALSE);
    }
  if (s[0] == 'd' && s[1] == 's') {
    StressTestC$Stream$start_traversal((void *)0);
    }
  if (s[0] == 'd' && s[1] == 'a') 
    {
      TOS_post(StressTestC$check_stream_append);
    }

  if (s[0] == 'd' && s[1] == 'n') 
    {
      TOS_post(StressTestC$check_stream_next);
    }

  if (s[0] == 'c' && s[1] == 'i') {
    StressTestC$Checkpoint$init(0);
    }
  if (s[0] == 'c' && s[1] == 'c') 
    {
      TOS_post(StressTestC$check_checkpt);
    }

  if (s[0] == 'c' && s[1] == 'r') 
    {
      TOS_post(StressTestC$check_rollback);
    }

  StressTestC$Console$string("ok...\n");
}

# 15 "../../tos/interfaces/Console.nc"
inline static  void ConsoleC$Console$input(char *arg_0x8579730){
#line 15
  StressTestC$Console$input(arg_0x8579730);
#line 15
  StreamC$Console$input(arg_0x8579730);
#line 15
  StackC$Console$input(arg_0x8579730);
#line 15
  ChunkStorageC$Console$input(arg_0x8579730);
#line 15
  RootDirectoryM$Console$input(arg_0x8579730);
#line 15
  CheckpointC$Console$input(arg_0x8579730);
#line 15
}
#line 15
static inline  
# 147 "../../tos/lib/Util/ConsoleC.nc"
void ConsoleC$do_cmd(void)
#line 147
{
  ConsoleC$Console$input(ConsoleC$cmd);
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 149
    {
      ConsoleC$ptr = ConsoleC$cmd;
      *ConsoleC$ptr = 0;
    }
#line 152
    __nesc_atomic_end(__nesc_atomic); }
}

# 96 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t HPLUART0M$UART$putDone(void){
#line 96
  unsigned char result;
#line 96

#line 96
  result = ConsoleC$HPLUART$putDone();
#line 96

#line 96
  return result;
#line 96
}
#line 96
# 100 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLUART0M.nc"
void __attribute((interrupt))   __vector_20(void)
#line 100
{
  HPLUART0M$UART$putDone();
}

# 83 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/SysTimeM.nc"
void __attribute((signal))   __vector_29(void)
{
  ++SysTimeM$currentTime;
}

# 102 "/tinyos-1.1.0/tinyos-1.x/tos/system/sched.c"
bool  TOS_post(void (*tp)(void))
#line 102
{
  __nesc_atomic_t fInterruptFlags;
  uint8_t tmp;



  fInterruptFlags = __nesc_atomic_start();

  tmp = TOSH_sched_free;

  if (TOSH_queue[tmp].tp == (void *)0) {
      TOSH_sched_free = (tmp + 1) & TOSH_TASK_BITMASK;
      TOSH_queue[tmp].tp = tp;
      __nesc_atomic_end(fInterruptFlags);

      return TRUE;
    }
  else {
      __nesc_atomic_end(fInterruptFlags);

      return FALSE;
    }
}

# 54 "/tinyos-1.1.0/tinyos-1.x/tos/system/RealMain.nc"
int   main(void)
#line 54
{
  RealMain$hardwareInit();
  RealMain$Pot$init(10);
  TOSH_sched_init();

  RealMain$StdControl$init();
  RealMain$StdControl$start();
  __nesc_enable_interrupt();

  while (1) {
      TOSH_run_task();
    }
}

static   
# 58 "/tinyos-1.1.0/tinyos-1.x/tos/system/LedsC.nc"
result_t LedsC$Leds$init(void)
#line 58
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 59
    {
      LedsC$ledsOn = 0;
      {
      }
#line 61
      ;
      TOSH_MAKE_RED_LED_OUTPUT();
      TOSH_MAKE_YELLOW_LED_OUTPUT();
      TOSH_MAKE_GREEN_LED_OUTPUT();
      TOSH_SET_RED_LED_PIN();
      TOSH_SET_YELLOW_LED_PIN();
      TOSH_SET_GREEN_LED_PIN();
    }
#line 68
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

static  
# 67 "../../tos/lib/Util/ConsoleC.nc"
result_t ConsoleC$Console$string(char *str)
#line 67
{
  ConsoleC$status = SUCCESS;
  while (*str != 0) {
      if (*str == '\n') {
          ConsoleC$buffer('\r');
#line 71
          ConsoleC$buffer(* str++);
        }
      else {
        ConsoleC$buffer(* str++);
        }
    }
#line 76
  ConsoleC$kick();
  return ConsoleC$status;
}

static 
#line 26
void ConsoleC$buffer(char c)
#line 26
{
  uint8_t next;

#line 28
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 28
    {
      next = (ConsoleC$head + 1) % 128;
      if (next == ConsoleC$tail) {
        ConsoleC$status = FAIL;
        }
      else 
#line 32
        {
          ConsoleC$buf[ConsoleC$head] = c;
          ConsoleC$head = next;
        }
    }
#line 36
    __nesc_atomic_end(__nesc_atomic); }
}

static void ConsoleC$kick(void)
#line 39
{
  char c = 0;

#line 41
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 41
    {
      if (!ConsoleC$busy) {
          c = ConsoleC$buf[ConsoleC$tail];
          ConsoleC$tail = (ConsoleC$tail + 1) % 128;
          ConsoleC$busy = 1;
        }
    }
#line 47
    __nesc_atomic_end(__nesc_atomic); }
  if (c != 0) {
    ConsoleC$HPLUART$put(c);
    }
}

static  
# 108 "../../tos/system/RootDirectoryM.nc"
void RootDirectoryM$recoverRoot(void)
{

  RootDirectoryM$Console$string("Looking for root chunk at pg:");
  RootDirectoryM$Console$decimal(RootDirectoryM$page);
  RootDirectoryM$Console$string(" off:");
  RootDirectoryM$Console$decimal(RootDirectoryM$offset);
  RootDirectoryM$Console$string("\n");
  TOSH_uwait(20000);



  if (SUCCESS != RootDirectoryM$GenericFlash$read(RootDirectoryM$page, RootDirectoryM$offset, 
  &RootDirectoryM$root, sizeof(root_header ))) 
    {

      RootDirectoryM$Console$string("ERROR ! Root chunk load failed from pg:");
      RootDirectoryM$Console$decimal(RootDirectoryM$page);
      RootDirectoryM$Console$string(" off:");
      RootDirectoryM$Console$decimal(RootDirectoryM$offset);
      RootDirectoryM$Console$string("\n");
      TOSH_uwait(3000);

      RootDirectoryM$Leds$redOn();
    }
}

static  
# 111 "../../tos/lib/Util/ConsoleC.nc"
result_t ConsoleC$Console$decimal(int32_t n)
#line 111
{
  char a;
#line 112
  char b;
#line 112
  char c;
#line 112
  char d;
#line 112
  char e;
  bool t = 0;



  for (a = '0' - 1; n >= 0; n -= 100000) ++a;
  for (b = '9' + 1; n < 0; n += 10000) --b;
  for (c = '0' - 1; n >= 0; n -= 1000) ++c;
  for (d = '9' + 1; n < 0; n += 100) --d;
  for (e = '0' - 1; n >= 0; n -= 10) ++e;
  n = '9' + 1 + n;

  ConsoleC$status = SUCCESS;

  if (a != '0') {
#line 126
    ConsoleC$buffer(a), t = 1;
    }
#line 127
  if (b != '0' || t) {
#line 127
    ConsoleC$buffer(b), t = 1;
    }
#line 128
  if (c != '0' || t) {
#line 128
    ConsoleC$buffer(c), t = 1;
    }
#line 129
  if (d != '0' || t) {
#line 129
    ConsoleC$buffer(d), t = 1;
    }
#line 130
  if (e != '0' || t) {
#line 130
    ConsoleC$buffer(e);
    }
#line 131
  ConsoleC$buffer(n);
  ConsoleC$kick();

  return ConsoleC$status;
}

static 
# 495 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
result_t PageEEPROMM$newRequest(uint8_t req, eeprompage_t page, 
eeprompageoffset_t offset, 
void *reqdata, eeprompageoffset_t n, 
uint16_t crc)
#line 498
{


  if (((
#line 500
  page >= TOS_EEPROM_MAX_PAGES || offset >= TOS_EEPROM_PAGE_SIZE) || 
  n > TOS_EEPROM_PAGE_SIZE) || offset + n > TOS_EEPROM_PAGE_SIZE) {
    return FAIL;
    }

  if (PageEEPROMM$request != PageEEPROMM$IDLE) {
    return FAIL;
    }
#line 507
  PageEEPROMM$request = req;

  if (PageEEPROMM$broken) 
    {
      TOS_post(PageEEPROMM$taskFail);
      return SUCCESS;
    }

  PageEEPROMM$reqBuf = reqdata;
  PageEEPROMM$reqBytes = n;
  PageEEPROMM$reqPage = page;
  PageEEPROMM$reqOffset = offset;
  PageEEPROMM$computedCrc = crc;

  if (page == PageEEPROMM$buffer[0].page) {
    PageEEPROMM$selected = 0;
    }
  else {
#line 523
    if (page == PageEEPROMM$buffer[1].page) {
      PageEEPROMM$selected = 1;
      }
    else {
#line 526
      PageEEPROMM$selected = !PageEEPROMM$selected;
      }
    }
#line 528
  PageEEPROMM$handleRWRequest();

  return SUCCESS;
}

static 
#line 480
void PageEEPROMM$requestDone(result_t result)
#line 480
{
  uint8_t orequest = PageEEPROMM$request;

  PageEEPROMM$request = PageEEPROMM$IDLE;
  switch (orequest) 
    {
      case PageEEPROMM$R_READ: PageEEPROMM$PageEEPROM$readDone(result);
#line 486
      break;
      case PageEEPROMM$R_READCRC: PageEEPROMM$PageEEPROM$computeCrcDone(result, PageEEPROMM$computedCrc);
#line 487
      break;
      case PageEEPROMM$R_WRITE: PageEEPROMM$PageEEPROM$writeDone(result);
#line 488
      break;
      case PageEEPROMM$R_SYNC: case PageEEPROMM$R_SYNCALL: PageEEPROMM$PageEEPROM$syncDone(result);
#line 489
      break;
      case PageEEPROMM$R_FLUSH: case PageEEPROMM$R_FLUSHALL: PageEEPROMM$PageEEPROM$flushDone(result);
#line 490
      break;
      case PageEEPROMM$R_ERASE: PageEEPROMM$PageEEPROM$eraseDone(result);
#line 491
      break;
    }
}

static 
# 149 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
void *nmemcpy(void *to, const void *from, size_t n)
{
  char *cto = to;
  const char *cfrom = from;

  while (n--) * cto++ = * cfrom++;

  return to;
}

static  
# 709 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$GenericFlash$falReadDone(result_t result)
{
  ChunkStorageC$res = result;

  if (result == SUCCESS && ChunkStorageC$rlen2 != (void *)0) 
    {
      chunk_header *header = (chunk_header *)ChunkStorageC$header_buffer;

#line 716
      *ChunkStorageC$rlen2 = header->data_len - ChunkStorageC$len1;

      if (ChunkStorageC$computeEcc) 
        {
          uint8_t Ecc = ChunkStorageC$Crc8$crc8(ChunkStorageC$data1, ChunkStorageC$len1, 0);

#line 721
          Ecc = ChunkStorageC$Crc8$crc8(ChunkStorageC$data2, *ChunkStorageC$rlen2, Ecc);

          if (ChunkStorageC$ecc != (void *)0 && Ecc == header->ecc) 
            {
              *ChunkStorageC$ecc = TRUE;
            }
          else 




            {
              *ChunkStorageC$ecc = FALSE;
            }
        }
    }





  TOS_post(ChunkStorageC$readDoneRespond);

  return SUCCESS;
}

static  
# 53 "../../tos/system/Crc8C.nc"
uint8_t Crc8C$Crc8$crc8(uint8_t *ptr, uint16_t len, uint8_t crc_)
{
  uint8_t crc;

  crc = crc_;

  while (len > 0) 
    {
      crc = Crc8C$CrcByte(crc, * ptr++);
      len--;
    }

  return crc;
}

static  
# 196 "StreamC.nc"
void StreamC$ChunkStorage$readDone(result_t res)
{
  if (res != SUCCESS) 
    {
      StreamC$Leds$redOn();
    }
  else 



    {
      if (StreamC$state == StreamC$TRAVERSE) {
        StreamC$Stream$nextDone(StreamC$streamif_id, res);
        }
      else {
#line 209
        if (StreamC$state == StreamC$COMPACT_TRAVERSE) 
          {
            nmemcpy(&StreamC$compact_ptr, &StreamC$ptr, sizeof(flashptr_t ));







            if (StreamC$compact_ptr.page == 0xFFFF && 
            StreamC$compact_ptr.offset == 0xFF) 
              {







                TOS_post(StreamC$getDataStack);
              }
            else 
              {

                TOS_post(StreamC$writeDataStack);
              }
          }
        else {
#line 237
          if (StreamC$state == StreamC$COMPACT_TRAVERSE2) 
            {







              TOS_post(StreamC$writeDataStream);
            }
          }
        }
    }
}

static  
#line 372
void StreamC$getDataStack(void)
{
  if (StreamC$compact_count == 0) 
    {




      StreamC$compact_first_write = TRUE;

      StreamC$Compaction$compactionDone(StreamC$streamif_id, SUCCESS);
    }
  else 
    {
      if (SUCCESS != StreamC$Stack$pop(&StreamC$compact_ptr, (void *)0)) 
        {



          StreamC$Leds$redOn();
        }
      else 

        {
          StreamC$compact_count--;
        }
    }
}

static  
# 140 "../../tos/system/StackC.nc"
result_t StackC$Stack$pop(uint8_t id, void *data, datalen_t *len)
{
  uint8_t ecc;

  if (StackC$local[id].head.page == 0xFFFF && StackC$local[id].head.offset == 0xFF) 
    {

      StackC$Console$string("Nothing more in the stack\n");
      TOSH_uwait(5000);

      return FAIL;
    }


  StackC$Console$string("Calling ChunkStorage.read in Stack.pop\n");
  StackC$Console$string("2Stack header - page:");
  StackC$Console$decimal(StackC$local[id].head.page);
  StackC$Console$string(" offset:");
  StackC$Console$decimal(StackC$local[id].head.offset);
  StackC$Console$string(" id:");
  StackC$Console$decimal(id);

  StackC$Console$string("\n");
  TOSH_uwait(10000);

  if (SUCCESS != StackC$ChunkStorage$read(& StackC$local[id].head, 
  & StackC$local[id].head, sizeof(stack_header ), 
  data, len, FALSE, &ecc)) 
    {

      StackC$Console$string("ERROR ! Read failed while tryin to pop data\n");
      TOSH_uwait(10000);

      StackC$Leds$redOn();
      return FAIL;
    }
  else 
    {
      StackC$stackif_id = id;
      StackC$state = StackC$POP;

      StackC$Tlen = len;

      return SUCCESS;
    }
}

static  
# 579 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$ChunkStorage$read(uint8_t id, flashptr_t *ptr_, 
void *data1_, datalen_t len1_, 
void *data2_, datalen_t *len2_, 
bool checkEcc_, bool *ecc_)
{


  if (ChunkStorageC$lock() != SUCCESS) 
    {




      return FAIL;
    }





  ChunkStorageC$state = ChunkStorageC$READING1;
  ChunkStorageC$if_id = id;


  ChunkStorageC$seekptr.page = ptr_->page;
  ChunkStorageC$seekptr.offset = ptr_->offset;
  ChunkStorageC$data1 = data1_;
  ChunkStorageC$len1 = len1_;
  ChunkStorageC$data2 = data2_;
  ChunkStorageC$rlen2 = len2_;
  ChunkStorageC$computeEcc = checkEcc_;
  ChunkStorageC$ecc = ecc_;
#line 624
  if (
#line 623
  ChunkStorageC$seekptr.page == ChunkStorageC$page_ptr && ChunkStorageC$seekptr.offset >= ChunkStorageC$offset_ptr && 
  ChunkStorageC$seekptr.offset < ChunkStorageC$offset_ptr + 256 && ChunkStorageC$writeBufferValid == TRUE) 
    {

      ChunkStorageC$readBuffer(ChunkStorageC$seekptr.offset - ChunkStorageC$offset_ptr);

      ChunkStorageC$res = SUCCESS;
      TOS_post(ChunkStorageC$readDoneRespond);

      return SUCCESS;
    }







  if (SUCCESS != ChunkStorageC$GenericFlash$falRead(ChunkStorageC$seekptr.page, ChunkStorageC$seekptr.offset, 
  ChunkStorageC$header_buffer, 
  data1_, ChunkStorageC$len1, 
  data2_)) 
    {




      ChunkStorageC$unlock();
      return FAIL;
    }

  return SUCCESS;
}

static 
#line 85
result_t ChunkStorageC$lock(void)
{
  bool localBusy;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      localBusy = ChunkStorageC$chunkbusy;
      ChunkStorageC$chunkbusy = TRUE;
    }
#line 93
    __nesc_atomic_end(__nesc_atomic); }

  if (TRUE != localBusy) 
    {
      return SUCCESS;
    }
  else 
    {
      return FAIL;
    }
}

static  
# 324 "StreamC.nc"
void StreamC$writeDataStack(void)
{
  if (SUCCESS != StreamC$Stack$push(&StreamC$compact_ptr, sizeof(flashptr_t ), (void *)0)) 
    {



      StreamC$Leds$redOn();
    }
  else 
    {
      StreamC$compact_count++;
    }
}

static  
# 76 "../../tos/system/StackC.nc"
result_t StackC$Stack$push(uint8_t id, void *data, datalen_t len, 
flashptr_t *save_ptr)
{
  StackC$header.prev_ptr.page = StackC$local[id].head.page;
  StackC$header.prev_ptr.offset = StackC$local[id].head.offset;

  if (SUCCESS != StackC$ChunkStorage$write(&StackC$header, sizeof(stack_header ), 
  data, len, 
  StackC$local[id].doEcc, & StackC$local[id].head)) 
    {

      StackC$Console$string("ERROR ! Unable to write stack push to flash\n");

      StackC$Leds$redOn();
      return FAIL;
    }
  else 
    {
      StackC$Tsave_ptr = save_ptr;
      StackC$stackif_id = id;
      StackC$state = StackC$PUSH;
      return SUCCESS;
    }
}

static  
# 348 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$ChunkStorage$write(uint8_t id, void *data1_, datalen_t len1_, 
void *data2_, datalen_t len2_, 
bool computeEcc_, 
flashptr_t *save_ptr_)
{
  datalen_t chunk_len;

  if (ChunkStorageC$lock() != SUCCESS) 
    {




      return FAIL;
    }





  ChunkStorageC$state = ChunkStorageC$WRITING;
  ChunkStorageC$if_id = id;

  chunk_len = len1_ + len2_ + sizeof(chunk_header );




  if (chunk_len > 256) 
    {




      ChunkStorageC$unlock();
      return FAIL;
    }


  ChunkStorageC$data1 = data1_;
  ChunkStorageC$len1 = len1_;
  ChunkStorageC$data2 = data2_;
  ChunkStorageC$len_data = len2_;
  ChunkStorageC$computeEcc = computeEcc_;
  ChunkStorageC$save_ptr = save_ptr_;





  if (chunk_len > 256 - ChunkStorageC$cache_ptr) 
    {
#line 412
      if (ChunkStorageC$flush_write_buffer() != SUCCESS) 
        {




          ChunkStorageC$unlock();
          return FAIL;
        }
    }
  else 
    {

      ChunkStorageC$write_to_cache();
    }

  return SUCCESS;
}

static 
#line 178
result_t ChunkStorageC$flush_write_buffer(void)
{
  if (ChunkStorageC$cache_ptr == 0) 
    {

      if (ChunkStorageC$state == ChunkStorageC$WRITING) {
        ChunkStorageC$write_to_cache();
        }
      else {
          ChunkStorageC$res = SUCCESS;
          TOS_post(ChunkStorageC$flushDoneRespond);
        }

      return SUCCESS;
    }
#line 218
  if (SUCCESS != ChunkStorageC$GenericFlash$write(ChunkStorageC$page_ptr, ChunkStorageC$offset_ptr, 
  ChunkStorageC$write_buffer, 
  ChunkStorageC$cache_ptr)) 
    {










      return FAIL;
    }

  return SUCCESS;
}

static 
#line 455
void ChunkStorageC$write_to_cache(void)
{
  uint8_t Ecc = 0;
  chunk_header *header;


  ChunkStorageC$save_ptr->page = ChunkStorageC$page_ptr;
  ChunkStorageC$save_ptr->offset = ChunkStorageC$offset_ptr + ChunkStorageC$cache_ptr;









  header = (chunk_header *)&ChunkStorageC$write_buffer[ChunkStorageC$cache_ptr];


  header->data_len = ChunkStorageC$len1 + ChunkStorageC$len_data;

  ChunkStorageC$cache_ptr += sizeof(chunk_header );


  if (ChunkStorageC$len1 > 0) 
    {
      nmemcpy(&ChunkStorageC$write_buffer[ChunkStorageC$cache_ptr], ChunkStorageC$data1, ChunkStorageC$len1);
      ChunkStorageC$cache_ptr += ChunkStorageC$len1;

      if (ChunkStorageC$computeEcc) 
        {
          Ecc = ChunkStorageC$Crc8$crc8(ChunkStorageC$data1, ChunkStorageC$len1, 0);
        }
    }

  if (ChunkStorageC$len_data > 0) 
    {
      nmemcpy(&ChunkStorageC$write_buffer[ChunkStorageC$cache_ptr], ChunkStorageC$data2, ChunkStorageC$len_data);
      ChunkStorageC$cache_ptr += ChunkStorageC$len_data;

      if (ChunkStorageC$computeEcc) 
        {
          Ecc = ChunkStorageC$Crc8$crc8(ChunkStorageC$data2, ChunkStorageC$len_data, Ecc);
        }
    }

  header->ecc = Ecc;
  ChunkStorageC$res = SUCCESS;
  ChunkStorageC$writeBufferValid = TRUE;

  TOS_post(ChunkStorageC$writeDoneRespond);
}

static  
# 117 "StreamC.nc"
void StreamC$ChunkStorage$writeDone(result_t res)
{
  if (StreamC$state == StreamC$APPEND) 
    {
      if (res == SUCCESS && StreamC$Tsave_ptr != (void *)0) {
        nmemcpy(StreamC$Tsave_ptr, & StreamC$local[StreamC$streamif_id].tail, sizeof(flashptr_t ));
        }
      StreamC$Stream$appendDone(StreamC$streamif_id, res);
    }
  else 
    {

      if (res != SUCCESS) 
        {




          StreamC$Leds$redOn();
        }
      else 
        {
          TOS_post(StreamC$getDataStack);
        }
    }
}

static  
# 116 "../../tos/system/StackC.nc"
void StackC$ChunkStorage$writeDone(result_t res)
{
  if (res == SUCCESS && StackC$Tsave_ptr != (void *)0) {
    nmemcpy(StackC$Tsave_ptr, & StackC$local[StackC$stackif_id].head, sizeof(flashptr_t ));
    }
#line 120
  StackC$Tresult = res;

  StackC$Console$string("1Stack header - page:");
  StackC$Console$decimal(StackC$local[StackC$stackif_id].head.page);
  TOSH_uwait(10000);
  StackC$Console$string(" offset:");
  StackC$Console$decimal(StackC$local[StackC$stackif_id].head.offset);
  TOSH_uwait(10000);
  StackC$Console$string(" id:");
  StackC$Console$decimal(StackC$stackif_id);
  StackC$Console$string("\n");
  TOSH_uwait(10000);


  TOS_post(StackC$stackRespond);
}

static  
#line 101
void StackC$stackRespond(void)
{
  switch (StackC$state) 
    {
      case StackC$POP: 
        StackC$Stack$popDone(StackC$stackif_id, StackC$Tresult);
      break;
      case StackC$TOP: 
        StackC$Stack$topDone(StackC$stackif_id, StackC$Tresult);
      break;
      case StackC$PUSH: 
        StackC$Stack$pushDone(StackC$stackif_id, StackC$Tresult);
    }
}

static  
# 264 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$RootDirectory$setRoot(uint8_t id, flashptr_t *save)
{
  if (SUCCESS != RootDirectoryM$lock()) {
    return FAIL;
    }
  nmemcpy(&RootDirectoryM$root.root[id], save, sizeof(flashptr_t ));

  RootDirectoryM$root.timestamp = RootDirectoryM$SysTime$getTime16();




  RootDirectoryM$root.crc = 0;
  RootDirectoryM$root.crc = RootDirectoryM$Crc8$crc8((uint8_t *)&RootDirectoryM$root, sizeof(root_header ), 0);
#line 308
  if (SUCCESS != RootDirectoryM$GenericFlash$write(RootDirectoryM$page, RootDirectoryM$offset, 
  &RootDirectoryM$root, sizeof(root_header ))) 
    {

      RootDirectoryM$Console$string("ERROR ! Root dir commit failed to page number:");
      RootDirectoryM$Console$decimal(RootDirectoryM$page);
      RootDirectoryM$Console$string(" off:");
      RootDirectoryM$Console$decimal(RootDirectoryM$offset);
      RootDirectoryM$Console$string("\n");
      TOSH_uwait(3000);

      RootDirectoryM$Leds$redOn();
    }
  else {
    RootDirectoryM$state = RootDirectoryM$SETTING;
    }
  return SUCCESS;
}

static  
# 104 "../../tos/system/CheckpointC.nc"
void CheckpointC$signaler(void)
{
  CheckpointC$unlock();

  switch (CheckpointC$local[0].trans_state) 
    {
      case CheckpointC$CHECKPOINTING: 
        CheckpointC$Checkpoint$checkpointDone(CheckpointC$tempResult);
      break;

      case CheckpointC$ROLLING_BACK: 
        CheckpointC$Checkpoint$rollbackDone(CheckpointC$tempResult);
      break;
    }
}

static  
# 312 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$ChunkStorage$flush(uint8_t id)
{
  result_t result;

  if (ChunkStorageC$lock() != SUCCESS) 
    {




      return FAIL;
    }




  ChunkStorageC$state = ChunkStorageC$FLUSHING;
  ChunkStorageC$if_id = id;

  if ((result = ChunkStorageC$flush_write_buffer()) != SUCCESS) 
    {




      ChunkStorageC$unlock();
    }

  return result;
}

static  
# 44 "StressTestC.nc"
void StressTestC$ChunkStorage$writeDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Write call returned failure\n");
    }
}

static  
# 327 "../../tos/system/CheckpointC.nc"
void CheckpointC$ChunkStorage$flushDone(result_t res)
{
  if (res != SUCCESS) 
    {

      CheckpointC$Console$string("ERROR ! Chunk flush failure\n");

      CheckpointC$tempResult = res;
      TOS_post(CheckpointC$signaler);
    }
  else 
    {

      if (SUCCESS != CheckpointC$RootDirectory$setRoot(CheckpointC$local[0].id, & CheckpointC$local[0].root)) 
        {

          CheckpointC$Console$string("ERROR ! Root dir set failed\n");

          CheckpointC$tempResult = res;
          TOS_post(CheckpointC$signaler);
        }
    }
}

static  
# 53 "StressTestC.nc"
void StressTestC$ChunkStorage$flushDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Console$string("flush call returned failure\n");
      StressTestC$Leds$redOn();
    }
}

static  
# 188 "../../tos/system/StackC.nc"
void StackC$ChunkStorage$readDone(result_t res)
{
  StackC$Tresult = res;


  StackC$Console$string("Popped data length:");
  StackC$Console$decimal(*StackC$Tlen);
  StackC$Console$string("\n");
  TOSH_uwait(10000);


  TOS_post(StackC$stackRespond);
}

static  
# 62 "StressTestC.nc"
void StressTestC$ChunkStorage$readDone(result_t res)
{
  if (res == FAIL) 
    {
      StressTestC$Leds$redOn();
      StressTestC$Console$string("Read call returned failure\n");
    }
}

static  
# 377 "../../tos/system/RootDirectoryM.nc"
void RootDirectoryM$eraser(void)
{
  if (SUCCESS != RootDirectoryM$GenericFlash$erase(RootDirectoryM$page)) 
    {
      RootDirectoryM$Leds$redOn();

      RootDirectoryM$Console$string("ERROR ! Erase failed on pg:");
      RootDirectoryM$Console$decimal(RootDirectoryM$page);
      RootDirectoryM$Console$string("\n");
      TOSH_uwait(3000);
    }
}

static  
# 122 "../../tos/system/CheckpointC.nc"
void CheckpointC$rollBack(void)
{

  CheckpointC$local[0].trans_state = CheckpointC$ROLLING_BACK;

  if (SUCCESS != CheckpointC$RootDirectory$getRoot(CheckpointC$local[0].id, & CheckpointC$local[0].root)) 
    {

      CheckpointC$Console$string("ERROR ! Unable to get root dir data\n");


      CheckpointC$tempResult = FAIL;
      TOS_post(CheckpointC$signaler);
    }
}

static 
# 391 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
void PageEEPROMM$handleRWRequest(void)
#line 391
{
  if (PageEEPROMM$reqPage == PageEEPROMM$buffer[PageEEPROMM$selected].page) {
    switch (PageEEPROMM$request) 
      {
        case PageEEPROMM$R_ERASE: 
          switch (PageEEPROMM$reqOffset) 
            {
              case TOS_EEPROM_ERASE: 
                PageEEPROMM$cmdPhase = PageEEPROMM$P_ERASE;
              PageEEPROMM$execCommand(TRUE, PageEEPROMM$C_ERASE_PAGE, 0, PageEEPROMM$reqPage, 0);
              break;
              case TOS_EEPROM_PREVIOUSLY_ERASED: 

                PageEEPROMM$buffer[PageEEPROMM$selected].erased = TRUE;

              case TOS_EEPROM_DONT_ERASE: 



                PageEEPROMM$buffer[PageEEPROMM$selected].clean = TRUE;
              PageEEPROMM$requestDone(SUCCESS);
              break;
            }
        break;

        case PageEEPROMM$R_SYNC: case PageEEPROMM$R_SYNCALL: 
            if (PageEEPROMM$buffer[PageEEPROMM$selected].clean && PageEEPROMM$buffer[PageEEPROMM$selected].unchecked) 
              {
                PageEEPROMM$checkBuffer(PageEEPROMM$selected);
                return;
              }

        case PageEEPROMM$R_FLUSH: case PageEEPROMM$R_FLUSHALL: 
            if (! PageEEPROMM$buffer[PageEEPROMM$selected].clean) {
              PageEEPROMM$flushBuffer();
              }
            else {
#line 426
              if (PageEEPROMM$request == PageEEPROMM$R_FLUSH || PageEEPROMM$request == PageEEPROMM$R_SYNC) {
                TOS_post(PageEEPROMM$taskSuccess);
                }
              else {

                  uint8_t oreq = PageEEPROMM$request;

                  PageEEPROMM$request = PageEEPROMM$IDLE;
                  PageEEPROMM$syncOrFlushAll(oreq);
                }
              }
#line 436
        break;

        case PageEEPROMM$R_READ: 
          PageEEPROMM$data = PageEEPROMM$reqBuf;
        PageEEPROMM$dataCount = PageEEPROMM$reqBytes;
        PageEEPROMM$cmdPhase = PageEEPROMM$P_READ;
        PageEEPROMM$execRWBuffer(PageEEPROMM$selected ? PageEEPROMM$C_READ_BUFFER1 : PageEEPROMM$C_READ_BUFFER2, 2, PageEEPROMM$reqOffset);
        break;

        case PageEEPROMM$R_READCRC: 
          PageEEPROMM$dataCount = PageEEPROMM$reqBytes;
        PageEEPROMM$cmdPhase = PageEEPROMM$P_READCRC;
        PageEEPROMM$execRWBuffer(PageEEPROMM$selected ? PageEEPROMM$C_READ_BUFFER1 : PageEEPROMM$C_READ_BUFFER2, 2, PageEEPROMM$reqOffset);
        break;

        case PageEEPROMM$R_WRITE: 
          PageEEPROMM$data = PageEEPROMM$reqBuf;
        PageEEPROMM$dataCount = PageEEPROMM$reqBytes;
        PageEEPROMM$cmdPhase = PageEEPROMM$P_WRITE;
        PageEEPROMM$buffer[PageEEPROMM$selected].clean = FALSE;
        PageEEPROMM$buffer[PageEEPROMM$selected].unchecked = 0;
        PageEEPROMM$execRWBuffer(PageEEPROMM$selected ? PageEEPROMM$C_WRITE_BUFFER1 : PageEEPROMM$C_WRITE_BUFFER2, 0, PageEEPROMM$reqOffset);
        break;
      }
    }
  else {
#line 460
    if (! PageEEPROMM$buffer[PageEEPROMM$selected].clean) {
      PageEEPROMM$flushBuffer();
      }
    else {
#line 462
      if (PageEEPROMM$buffer[PageEEPROMM$selected].unchecked) {
        PageEEPROMM$checkBuffer(PageEEPROMM$selected);
        }
      else {

          if (PageEEPROMM$request == PageEEPROMM$R_ERASE) 
            {
              PageEEPROMM$buffer[PageEEPROMM$selected].page = PageEEPROMM$reqPage;
              PageEEPROMM$handleRWRequest();
            }
          else 
            {
              PageEEPROMM$cmdPhase = PageEEPROMM$P_FILL;
              PageEEPROMM$execCommand(TRUE, PageEEPROMM$selected ? PageEEPROMM$C_FILL_BUFFER1 : PageEEPROMM$C_FILL_BUFFER2, 0, PageEEPROMM$reqPage, 0);
            }
        }
      }
    }
}

static 
#line 370
void PageEEPROMM$execCommand(bool wait, uint8_t reqCmd, uint8_t dontCare, 
eeprompage_t page, eeprompageoffset_t offset)
#line 371
{

  PageEEPROMM$cmd[0] = reqCmd;
  PageEEPROMM$cmd[1] = page >> 7;
  PageEEPROMM$cmd[2] = (page << 1) | (offset >> 8);
  PageEEPROMM$cmd[3] = offset;
  PageEEPROMM$cmdCount = 4 + dontCare;

  if (wait && PageEEPROMM$flashBusy) {
    PageEEPROMM$requestFlashStatus();
    }
  else {
#line 382
    PageEEPROMM$sendFlashCommand();
    }
}

static 
#line 174
void PageEEPROMM$requestFlashStatus(void)
#line 174
{
  PageEEPROMM$waiting = TRUE;
  PageEEPROMM$selectFlash();

  ;
  PageEEPROMM$FlashSPI$txByte(PageEEPROMM$C_REQ_STATUS);
  if (PageEEPROMM$FlashIdle$wait() == FAIL) {
    PageEEPROMM$FlashIdle$available();
    }
}

static   
# 113 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica2/HPLFlash.nc"
uint8_t HPLFlash$FlashSPI$txByte(uint8_t spiOut)
#line 113
{
  uint8_t spiIn = 0;


  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      uint8_t clrClkAndData = * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) & ~0x28;

      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 121
       __asm volatile ("sbrc %2,""7""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""7""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 122
       __asm volatile ("sbrc %2,""6""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""6""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 123
       __asm volatile ("sbrc %2,""5""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""5""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 124
       __asm volatile ("sbrc %2,""4""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""4""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 125
       __asm volatile ("sbrc %2,""3""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""3""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 126
       __asm volatile ("sbrc %2,""2""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""2""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 127
       __asm volatile ("sbrc %2,""1""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""1""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));
      * (volatile unsigned char *)(unsigned int )& * (volatile unsigned char *)(0x12 + 0x20) = clrClkAndData;
#line 128
       __asm volatile ("sbrc %2,""0""\n""\tsbi 18,3\n""\tsbi 18,5\n""\tsbic 16,2\n""\tori %0,1<<""0""\n" : "=d"(spiIn) : "0"(spiIn), "r"(spiOut));}
#line 128
    __nesc_atomic_end(__nesc_atomic); }


  return spiIn;
}

static 
# 278 "/tinyos-1.1.0/tinyos-1.x/tos/platform/mica/PageEEPROMM.nc"
void PageEEPROMM$flashCommandComplete(void)
#line 278
{
  if (PageEEPROMM$waiting) 
    {
      PageEEPROMM$waiting = PageEEPROMM$flashBusy = PageEEPROMM$buffer[0].busy = PageEEPROMM$buffer[1].busy = FALSE;

      if (PageEEPROMM$cmdPhase == PageEEPROMM$P_COMPARE_CHECK) 
        {
          if (PageEEPROMM$compareOk) {
            PageEEPROMM$buffer[PageEEPROMM$checking].unchecked = 0;
            }
          else {
#line 287
            if (PageEEPROMM$buffer[PageEEPROMM$checking].unchecked < 2) {
              PageEEPROMM$buffer[PageEEPROMM$checking].clean = FALSE;
              }
            else {
                PageEEPROMM$broken = TRUE;
                PageEEPROMM$requestDone(FAIL);
                return;
              }
            }
#line 295
          PageEEPROMM$handleRWRequest();
        }
      else 
        {


          if ((PageEEPROMM$buffer[0].unchecked || PageEEPROMM$buffer[1].unchecked) && 
          !(PageEEPROMM$cmdPhase == PageEEPROMM$P_COMPARE || PageEEPROMM$cmdPhase == PageEEPROMM$P_COMPARE_CHECK)) {
            PageEEPROMM$checkBuffer(PageEEPROMM$buffer[0].unchecked ? 0 : 1);
            }
          else {
            PageEEPROMM$sendFlashCommand();
            }
        }
#line 308
      return;
    }
  switch (PageEEPROMM$cmdPhase) 
    {
      default: 
        PageEEPROMM$requestDone(FAIL);
      break;

      case PageEEPROMM$P_READ: case PageEEPROMM$P_READCRC: case PageEEPROMM$P_WRITE: 
            PageEEPROMM$requestDone(SUCCESS);
      break;

      case PageEEPROMM$P_FLUSH: 
        PageEEPROMM$flashBusy = TRUE;
      PageEEPROMM$buffer[PageEEPROMM$selected].clean = PageEEPROMM$buffer[PageEEPROMM$selected].busy = TRUE;
      PageEEPROMM$buffer[PageEEPROMM$selected].unchecked++;
      PageEEPROMM$buffer[PageEEPROMM$selected].erased = FALSE;
      PageEEPROMM$handleRWRequest();
      break;

      case PageEEPROMM$P_COMPARE: 
        PageEEPROMM$cmdPhase = PageEEPROMM$P_COMPARE_CHECK;
      PageEEPROMM$flashBusy = TRUE;
      PageEEPROMM$buffer[PageEEPROMM$checking].busy = TRUE;




      TOSH_uwait(10);
      PageEEPROMM$requestFlashStatus();
      break;

      case PageEEPROMM$P_FILL: 
        PageEEPROMM$flashBusy = TRUE;
      PageEEPROMM$buffer[PageEEPROMM$selected].page = PageEEPROMM$reqPage;
      PageEEPROMM$buffer[PageEEPROMM$selected].clean = PageEEPROMM$buffer[PageEEPROMM$selected].busy = TRUE;
      PageEEPROMM$buffer[PageEEPROMM$selected].erased = FALSE;
      PageEEPROMM$handleRWRequest();
      break;

      case PageEEPROMM$P_ERASE: 
        PageEEPROMM$flashBusy = TRUE;



      PageEEPROMM$buffer[PageEEPROMM$selected].page = PageEEPROMM$reqPage;
      PageEEPROMM$buffer[PageEEPROMM$selected].clean = TRUE;
      PageEEPROMM$buffer[PageEEPROMM$selected].erased = TRUE;
      PageEEPROMM$requestDone(SUCCESS);
      break;
    }
}

static 
#line 263
void PageEEPROMM$checkBuffer(uint8_t buf)
#line 263
{
  PageEEPROMM$cmdPhase = PageEEPROMM$P_COMPARE;
  PageEEPROMM$checking = buf;
  PageEEPROMM$execCommand(TRUE, buf ? PageEEPROMM$C_COMPARE_BUFFER1 : PageEEPROMM$C_COMPARE_BUFFER2, 0, 
  PageEEPROMM$buffer[buf].page, 0);
}

static 
#line 184
void PageEEPROMM$sendFlashCommand(void)
#line 184
{
  uint8_t in = 0;
#line 185
  uint8_t out = 0;
  uint8_t *ptr = PageEEPROMM$cmd;
  eeprompageoffset_t count = PageEEPROMM$cmdCount;
  uint16_t crc = PageEEPROMM$computedCrc;
  uint8_t lphase = PageEEPROMM$P_SEND_CMD;







  ;

  PageEEPROMM$selectFlash();

  for (; ; ) 
    {
      if (lphase == PageEEPROMM$P_READCRC) 
        {
          crc = crcByte(crc, in);

          --count;
          if (!count) 
            {
              PageEEPROMM$computedCrc = crc;
              break;
            }
        }
      else {
#line 214
        if (lphase == PageEEPROMM$P_SEND_CMD) 
          {
            out = * ptr++;
            count--;
            if (!count) 
              {
                lphase = PageEEPROMM$cmdPhase;
                ptr = PageEEPROMM$data;
                count = PageEEPROMM$dataCount;
              }
          }
        else {
#line 225
          if (lphase == PageEEPROMM$P_READ) 
            {
              * ptr++ = in;
              --count;
              if (!count) {
                break;
                }
            }
          else {
#line 232
            if (lphase == PageEEPROMM$P_WRITE) 
              {
                if (!count) {
                  break;
                  }
                out = * ptr++;
                --count;
              }
            else {
              break;
              }
            }
          }
        }
#line 243
      in = PageEEPROMM$FlashSPI$txByte(out);
    }

  PageEEPROMM$requestDeselect();
}

static 
#line 270
void PageEEPROMM$flushBuffer(void)
#line 270
{
  PageEEPROMM$cmdPhase = PageEEPROMM$P_FLUSH;
  PageEEPROMM$execCommand(TRUE, PageEEPROMM$buffer[PageEEPROMM$selected].erased ? 
  PageEEPROMM$selected ? PageEEPROMM$C_QFLUSH_BUFFER1 : PageEEPROMM$C_QFLUSH_BUFFER2 : 
  PageEEPROMM$selected ? PageEEPROMM$C_FLUSH_BUFFER1 : PageEEPROMM$C_FLUSH_BUFFER2, 0, 
  PageEEPROMM$buffer[PageEEPROMM$selected].page, 0);
}

static  
# 328 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$GenericFlash$writeDone(result_t result)
{

  if (result == SUCCESS) {
    RootDirectoryM$Console$string("Root dir committed to pg:");
    }
  else {
#line 334
    RootDirectoryM$Console$string("Root dir NOT committed to pg:");
    }
  RootDirectoryM$Console$decimal(RootDirectoryM$page);
  RootDirectoryM$Console$string(" off:");
  RootDirectoryM$Console$decimal(RootDirectoryM$offset);
  RootDirectoryM$Console$string("\n");
  TOSH_uwait(3000);



  if (256 - RootDirectoryM$offset >= sizeof(root_header )) 
    {
      RootDirectoryM$offset += sizeof(root_header );
    }
  else 
    {

      RootDirectoryM$offset = 0;
#line 351
      RootDirectoryM$page++;

      if (RootDirectoryM$page == (2 + 2) * 1) 
        {

          RootDirectoryM$page = 2;
        }



      RootDirectoryM$Console$string("Rootdir: Need to erase pg#");
      RootDirectoryM$Console$decimal(RootDirectoryM$page);
      RootDirectoryM$Console$string("\n");

      if (!(RootDirectoryM$page % 1)) {
        TOS_post(RootDirectoryM$eraser);
        }
    }
  RootDirectoryM$unlock();

  RootDirectoryM$RootDirectory$setRootDone(result);

  return SUCCESS;
}

static  
# 514 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$GenericFlash$writeDone(result_t result)
{
  ChunkStorageC$res = result;

  if (ChunkStorageC$state == ChunkStorageC$WRITING) 
    {

      if (result == SUCCESS) 
        {
          ChunkStorageC$post_flushing_buffer();
          ChunkStorageC$write_to_cache();
        }
      else 
        {




          TOS_post(ChunkStorageC$writeDoneRespond);
        }
    }
  else {
#line 535
    if (ChunkStorageC$state == ChunkStorageC$FLUSHING) 
      {

        if (result == SUCCESS) {
          ChunkStorageC$post_flushing_buffer();
          }
        else {
          }





        TOS_post(ChunkStorageC$flushDoneRespond);
      }
    }
  return SUCCESS;
}

static 
#line 270
void ChunkStorageC$post_flushing_buffer(void)
{

  nmemset(ChunkStorageC$write_buffer, 0xFF, ChunkStorageC$cache_ptr);

  ChunkStorageC$offset_ptr += ChunkStorageC$cache_ptr;
  ChunkStorageC$cache_ptr = 0;

  if (256 - ChunkStorageC$offset_ptr < 256) 
    {

      ChunkStorageC$offset_ptr = 0;
      ChunkStorageC$page_ptr++;


      if (ChunkStorageC$page_ptr == ChunkStorageC$total_pages / 2 || ChunkStorageC$page_ptr == ChunkStorageC$total_pages) 
        {
          uint8_t agingHint = 0;

#line 288
          ChunkStorageC$Compaction$compact(agingHint);
        }

      if (ChunkStorageC$page_ptr == ChunkStorageC$total_pages) 
        {
          ChunkStorageC$flashFull = TRUE;
          ChunkStorageC$page_ptr = 2 + 2;
        }

      if (ChunkStorageC$flashFull == TRUE || ChunkStorageC$page_ptr == ChunkStorageC$total_pages - 1) 
        {

          TOS_post(ChunkStorageC$eraser);
        }
    }
}

static  
# 246 "StressTestC.nc"
void StressTestC$format(void)
{
  if (SUCCESS != StressTestC$GenericFlash$erase(StressTestC$current)) 
    {
      StressTestC$Console$string("ERROR ! erase call failed\n");
      StressTestC$Leds$redOn();
    }

  StressTestC$current += 1;
}

# 33 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Resource.nc"
static  result_t HPLFlash$FlashIdle$available(void){
#line 33
  unsigned char result;
#line 33

#line 33
  result = PageEEPROMM$FlashIdle$available();
#line 33

#line 33
  return result;
#line 33
}
#line 33
static   
# 158 "../../tos/lib/Util/ConsoleC.nc"
result_t ConsoleC$HPLUART$get(uint8_t t)
#line 158
{
  if (t == '\r' || t == '\n') {
    TOS_post(ConsoleC$do_cmd);
    }
  else {
#line 161
    if (ConsoleC$ptr < &ConsoleC$cmd[9]) {
        * ConsoleC$ptr++ = t;
        *ConsoleC$ptr = 0;
      }
    }
#line 165
  return SUCCESS;
}

static   
#line 52
result_t ConsoleC$HPLUART$putDone(void)
#line 52
{
  char c = 0;

#line 54
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 54
    {
      if (ConsoleC$head != ConsoleC$tail) {
          c = ConsoleC$buf[ConsoleC$tail];
          ConsoleC$tail = (ConsoleC$tail + 1) % 128;
        }
      else {
        ConsoleC$busy = 0;
        }
    }
#line 62
    __nesc_atomic_end(__nesc_atomic); }
#line 62
  if (c != 0) {
    ConsoleC$HPLUART$put(c);
    }
#line 64
  return SUCCESS;
}

