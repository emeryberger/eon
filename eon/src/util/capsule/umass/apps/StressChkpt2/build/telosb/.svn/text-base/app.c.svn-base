#define dbg(mode, format, ...) ((void)0)
#define dbg_clear(mode, format, ...) ((void)0)
#define dbg_active(mode) 0
# 38 "/opt/msp430/msp430/include/sys/inttypes.h"
typedef signed char int8_t;
typedef unsigned char uint8_t;

typedef int int16_t;
typedef unsigned int uint16_t;

typedef long int32_t;
typedef unsigned long uint32_t;

typedef long long int64_t;
typedef unsigned long long uint64_t;




typedef int16_t intptr_t;
typedef uint16_t uintptr_t;
# 151 "/opt/msp430/lib/gcc-lib/msp430/3.2.3/include/stddef.h" 3
typedef int ptrdiff_t;
#line 213
typedef unsigned int size_t;
#line 325
typedef int wchar_t;
# 41 "/opt/msp430/msp430/include/sys/types.h"
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef unsigned short ushort;
typedef unsigned int uint;

typedef uint8_t u_int8_t;
typedef uint16_t u_int16_t;
typedef uint32_t u_int32_t;
typedef uint64_t u_int64_t;

typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t *qaddr_t;

typedef char *caddr_t;
typedef const char *c_caddr_t;
typedef volatile char *v_caddr_t;
typedef u_int32_t fixpt_t;
typedef u_int32_t gid_t;
typedef u_int32_t in_addr_t;
typedef u_int16_t in_port_t;
typedef u_int32_t ino_t;
typedef long key_t;
typedef u_int16_t mode_t;
typedef u_int16_t nlink_t;
typedef quad_t rlim_t;
typedef int32_t segsz_t;
typedef int32_t swblk_t;
typedef int32_t ufs_daddr_t;
typedef int32_t ufs_time_t;
typedef u_int32_t uid_t;
# 64 "/opt/msp430/msp430/include/string.h"
extern void bzero(void *, size_t );
# 56 "/opt/msp430/msp430/include/stdlib.h"
typedef struct __nesc_unnamed4242 {
  int quot;
  int rem;
} div_t;




typedef struct __nesc_unnamed4243 {
  long quot;
  long rem;
} ldiv_t;
# 122 "/opt/msp430/msp430/include/sys/config.h" 3
typedef long int __int32_t;
typedef unsigned long int __uint32_t;
# 12 "/opt/msp430/msp430/include/sys/_types.h"
typedef long _off_t;
typedef long _ssize_t;
# 28 "/opt/msp430/msp430/include/sys/reent.h" 3
typedef __uint32_t __ULong;


struct _glue {

  struct _glue *_next;
  int _niobs;
  struct __sFILE *_iobs;
};

struct _Bigint {

  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm {

  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _atexit {
  struct _atexit *_next;
  int _ind;
  void (*_fns[32])(void );
};








struct __sbuf {
  unsigned char *_base;
  int _size;
};






typedef long _fpos_t;
#line 116
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;


  void *_cookie;

  int (*_read)(void *_cookie, char *_buf, int _n);
  int (*_write)(void *_cookie, const char *_buf, int _n);

  _fpos_t (*_seek)(void *_cookie, _fpos_t _offset, int _whence);
  int (*_close)(void *_cookie);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;

  struct _reent *_data;
};
#line 174
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;
};









struct _reent {


  int _errno;




  struct __sFILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (*__cleanup)(struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union __nesc_unnamed4244 {

    struct __nesc_unnamed4245 {

      unsigned int _unused_rand;
      char *_strtok_last;
      char _asctime_buf[26];
      struct __tm _localtime_buf;
      int _gamma_signgam;
      __extension__ unsigned long long _rand_next;
      struct _rand48 _r48;
    } _reent;



    struct __nesc_unnamed4246 {


      unsigned char *_nextf[30];
      unsigned int _nmalloc[30];
    } _unused;
  } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**_sig_func)(int );




  struct _glue __sglue;
  struct __sFILE __sf[3];
};
#line 273
struct _reent;
# 18 "/opt/msp430/msp430/include/math.h"
union __dmath {

  __uint32_t i[2];
  double d;
};




union __dmath;
#line 208
struct exception {


  int type;
  char *name;
  double arg1;
  double arg2;
  double retval;
  int err;
};
#line 261
enum __fdlibm_version {

  __fdlibm_ieee = -1, 
  __fdlibm_svid, 
  __fdlibm_xopen, 
  __fdlibm_posix
};




enum __fdlibm_version;
# 91 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
typedef unsigned char bool;






enum __nesc_unnamed4247 {
  FALSE = 0, 
  TRUE = 1
};



enum __nesc_unnamed4248 {
  FAIL = 0, 
  SUCCESS = 1
};
static inline 

uint8_t rcombine(uint8_t r1, uint8_t r2);
typedef uint8_t  result_t;
static inline 






result_t rcombine(result_t r1, result_t r2);
#line 140
enum __nesc_unnamed4249 {
  NULL = 0x0
};
# 27 "/opt/msp430/msp430/include/msp430/iostructures.h"
typedef union port {
  volatile unsigned char reg_p;
  volatile struct __nesc_unnamed4250 {
    unsigned char __p0 : 1, 
    __p1 : 1, 
    __p2 : 1, 
    __p3 : 1, 
    __p4 : 1, 
    __p5 : 1, 
    __p6 : 1, 
    __p7 : 1;
  } __pin;
} __attribute((packed))  ioregister_t;
# 106 "/opt/msp430/msp430/include/msp430/iostructures.h" 3
struct port_full_t {
  ioregister_t in;
  ioregister_t out;
  ioregister_t dir;
  ioregister_t ifg;
  ioregister_t ies;
  ioregister_t ie;
  ioregister_t sel;
};




struct port_simple_t {
  ioregister_t in;
  ioregister_t out;
  ioregister_t dir;
  ioregister_t sel;
};




struct port_full_t;



struct port_full_t;



struct port_simple_t;



struct port_simple_t;



struct port_simple_t;



struct port_simple_t;
# 103 "/opt/msp430/msp430/include/msp430/gpio.h" 3
volatile unsigned char P1OUT __asm ("0x0021");

volatile unsigned char P1DIR __asm ("0x0022");





volatile unsigned char P1IE __asm ("0x0025");

volatile unsigned char P1SEL __asm ("0x0026");






volatile unsigned char P2OUT __asm ("0x0029");

volatile unsigned char P2DIR __asm ("0x002A");





volatile unsigned char P2IE __asm ("0x002D");

volatile unsigned char P2SEL __asm ("0x002E");






volatile unsigned char P3OUT __asm ("0x0019");

volatile unsigned char P3DIR __asm ("0x001A");

volatile unsigned char P3SEL __asm ("0x001B");






volatile unsigned char P4OUT __asm ("0x001D");

volatile unsigned char P4DIR __asm ("0x001E");

volatile unsigned char P4SEL __asm ("0x001F");






volatile unsigned char P5OUT __asm ("0x0031");

volatile unsigned char P5DIR __asm ("0x0032");

volatile unsigned char P5SEL __asm ("0x0033");






volatile unsigned char P6OUT __asm ("0x0035");

volatile unsigned char P6DIR __asm ("0x0036");

volatile unsigned char P6SEL __asm ("0x0037");
# 85 "/opt/msp430/msp430/include/msp430/usart.h"
volatile unsigned char U0CTL __asm ("0x0070");

volatile unsigned char U0TCTL __asm ("0x0071");



volatile unsigned char U0MCTL __asm ("0x0073");

volatile unsigned char U0BR0 __asm ("0x0074");

volatile unsigned char U0BR1 __asm ("0x0075");

volatile unsigned char U0RXBUF __asm ("0x0076");
#line 254
volatile unsigned char U1CTL __asm ("0x0078");

volatile unsigned char U1TCTL __asm ("0x0079");

volatile unsigned char U1RCTL __asm ("0x007A");

volatile unsigned char U1MCTL __asm ("0x007B");

volatile unsigned char U1BR0 __asm ("0x007C");

volatile unsigned char U1BR1 __asm ("0x007D");

volatile unsigned char U1RXBUF __asm ("0x007E");
# 22 "/opt/msp430/msp430/include/msp430/timera.h"
volatile unsigned int TA0IV __asm ("0x012E");

volatile unsigned int TA0CTL __asm ("0x0160");







volatile unsigned int TA0R __asm ("0x0170");
# 105 "/opt/msp430/msp430/include/msp430/timera.h" 3
typedef struct __nesc_unnamed4251 {
  volatile unsigned 
  taifg : 1, 
  taie : 1, 
  taclr : 1, 
  dummy : 1, 
  tamc : 2, 
  taid : 2, 
  tassel : 2;
} __attribute((packed))  tactl_t;

typedef struct __nesc_unnamed4252 {
  volatile unsigned 
  ccifg : 1, 
  cov : 1, 
  out : 1, 
  cci : 1, 
  ccie : 1, 
  outmod : 3, 
  cap : 1, 
  dummy : 1, 
  scci : 1, 
  scs : 1, 
  ccis : 2, 
  cm : 2;
} __attribute((packed))  tacctl_t;


struct timera_t {
  tactl_t ctl;
  tacctl_t cctl0;
  tacctl_t cctl1;
  tacctl_t cctl2;
  volatile unsigned dummy[4];
  volatile unsigned tar;
  volatile unsigned taccr0;
  volatile unsigned taccr1;
  volatile unsigned taccr2;
};



struct timera_t;
# 22 "/opt/msp430/msp430/include/msp430/timerb.h"
volatile unsigned int TBIV __asm ("0x011E");

volatile unsigned int TBCTL __asm ("0x0180");

volatile unsigned int TBCCTL0 __asm ("0x0182");





volatile unsigned int TBR __asm ("0x0190");

volatile unsigned int TBCCR0 __asm ("0x0192");
#line 63
typedef struct __nesc_unnamed4253 {
  volatile unsigned 
  tbifg : 1, 
  tbie : 1, 
  tbclr : 1, 
  dummy1 : 1, 
  tbmc : 2, 
  tbid : 2, 
  tbssel : 2, 
  dummy2 : 1, 
  tbcntl : 2, 
  tbclgrp : 2;
} __attribute((packed))  tbctl_t;

typedef struct __nesc_unnamed4254 {
  volatile unsigned 
  ccifg : 1, 
  cov : 1, 
  out : 1, 
  cci : 1, 
  ccie : 1, 
  outmod : 3, 
  cap : 1, 
  clld : 2, 
  scs : 1, 
  ccis : 2, 
  cm : 2;
} __attribute((packed))  tbcctl_t;


struct timerb_t {
  tbctl_t ctl;
  tbcctl_t cctl0;
  tbcctl_t cctl1;
  tbcctl_t cctl2;

  tbcctl_t cctl3;
  tbcctl_t cctl4;
  tbcctl_t cctl5;
  tbcctl_t cctl6;



  volatile unsigned tbr;
  volatile unsigned tbccr0;
  volatile unsigned tbccr1;
  volatile unsigned tbccr2;

  volatile unsigned tbccr3;
  volatile unsigned tbccr4;
  volatile unsigned tbccr5;
  volatile unsigned tbccr6;
};





struct timerb_t;
# 18 "/opt/msp430/msp430/include/msp430/basic_clock.h"
volatile unsigned char DCOCTL __asm ("0x0056");

volatile unsigned char BCSCTL1 __asm ("0x0057");

volatile unsigned char BCSCTL2 __asm ("0x0058");
# 18 "/opt/msp430/msp430/include/msp430/adc12.h"
volatile unsigned int ADC12CTL0 __asm ("0x01A0");

volatile unsigned int ADC12CTL1 __asm ("0x01A2");









typedef struct __nesc_unnamed4255 {
  volatile unsigned 
  adc12sc : 1, 
  enc : 1, 
  adc12tovie : 1, 
  adc12ovie : 1, 
  adc12on : 1, 
  refon : 1, 
  r2_5v : 1, 
  msc : 1, 
  sht0 : 4, 
  sht1 : 4;
} __attribute((packed))  adc12ctl0_t;

typedef struct __nesc_unnamed4256 {
  volatile unsigned 
  adc12busy : 1, 
  conseq : 2, 
  adc12ssel : 2, 
  adc12div : 3, 
  issh : 1, 
  shp : 1, 
  shs : 2, 
  cstartadd : 4;
} __attribute((packed))  adc12ctl1_t;

typedef struct __nesc_unnamed4257 {
  volatile unsigned 
  bit0 : 1, 
  bit1 : 1, 
  bit2 : 1, 
  bit3 : 1, 
  bit4 : 1, 
  bit5 : 1, 
  bit6 : 1, 
  bit7 : 1, 
  bit8 : 1, 
  bit9 : 1, 
  bit10 : 1, 
  bit11 : 1, 
  bit12 : 1, 
  bit13 : 1, 
  bit14 : 1, 
  bit15 : 1;
} __attribute((packed))  adc12xflg_t;


struct adc12_t {
  adc12ctl0_t ctl0;
  adc12ctl1_t ctl1;
  adc12xflg_t ifg;
  adc12xflg_t ie;
  adc12xflg_t iv;
};




struct adc12_t;
# 61 "/opt/msp430/msp430/include/msp430x16x.h"
volatile unsigned char IE2 __asm ("0x0001");









volatile unsigned char ME1 __asm ("0x0004");





volatile unsigned char ME2 __asm ("0x0005");
 
# 148 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/msp430hardware.h"
static volatile uint8_t U0CTLnr __asm ("0x0070");
 static volatile uint8_t I2CTCTLnr __asm ("0x0071");
 static volatile uint8_t I2CDCTLnr __asm ("0x0072");
static 









__inline void TOSH_wait(void );
static 
#line 174
__inline void TOSH_uwait(uint16_t u);
static inline 
#line 196
void __nesc_disable_interrupt(void);
static inline 




void __nesc_enable_interrupt(void);
static inline 



bool are_interrupts_enabled(void);




typedef bool __nesc_atomic_t;
static inline 
__nesc_atomic_t __nesc_atomic_start(void );
static inline void __nesc_atomic_end(__nesc_atomic_t oldSreg);
static inline 


__nesc_atomic_t __nesc_atomic_start(void );
static inline 





void __nesc_atomic_end(__nesc_atomic_t reenable_interrupts);
 







bool LPMode_disabled = FALSE;
static 








__inline void __nesc_atomic_sleep(void);
# 105 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ADC12.h"
typedef struct __nesc_unnamed4258 {

  unsigned int refVolt2_5 : 1;
  unsigned int clockSourceSHT : 2;
  unsigned int clockSourceSAMPCON : 2;
  unsigned int clockDivSAMPCON : 2;
  unsigned int referenceVoltage : 3;
  unsigned int clockDivSHT : 3;
  unsigned int inputChannel : 4;
  unsigned int sampleHoldTime : 4;
  unsigned int  : 0;
} MSP430ADC12Settings_t;

typedef enum __nesc_unnamed4259 {

  MSP430ADC12_FAIL = 0, 
  MSP430ADC12_SUCCESS = 1, 
  MSP430ADC12_DELAYED = 2
} msp430ADCresult_t;

enum refVolt2_5_enum {

  REFVOLT_LEVEL_1_5 = 0, 
  REFVOLT_LEVEL_2_5 = 1
};

enum clockDivSHT_enum {

  SHT_CLOCK_DIV_1 = 0, 
  SHT_CLOCK_DIV_2 = 1, 
  SHT_CLOCK_DIV_3 = 2, 
  SHT_CLOCK_DIV_4 = 3, 
  SHT_CLOCK_DIV_5 = 4, 
  SHT_CLOCK_DIV_6 = 5, 
  SHT_CLOCK_DIV_7 = 6, 
  SHT_CLOCK_DIV_8 = 7
};

enum clockDivSAMPCON_enum {

  SAMPCON_CLOCK_DIV_1 = 0, 
  SAMPCON_CLOCK_DIV_2 = 1, 
  SAMPCON_CLOCK_DIV_3 = 2, 
  SAMPCON_CLOCK_DIV_4 = 3
};

enum clockSourceSAMPCON_enum {

  SAMPCON_SOURCE_TACLK = 0, 
  SAMPCON_SOURCE_ACLK = 1, 
  SAMPCON_SOURCE_SMCLK = 2, 
  SAMPCON_SOURCE_INCLK = 3
};

enum inputChannel_enum {


  INPUT_CHANNEL_A0 = 0, 
  INPUT_CHANNEL_A1 = 1, 
  INPUT_CHANNEL_A2 = 2, 
  INPUT_CHANNEL_A3 = 3, 
  INPUT_CHANNEL_A4 = 4, 
  INPUT_CHANNEL_A5 = 5, 
  INPUT_CHANNEL_A6 = 6, 
  INPUT_CHANNEL_A7 = 7, 
  EXTERNAL_REFERENCE_VOLTAGE = 8, 
  REFERENCE_VOLTAGE_NEGATIVE_TERMINAL = 9, 
  INTERNAL_TEMPERATURE = 10, 
  INTERNAL_VOLTAGE = 11
};

enum referenceVoltage_enum {

  REFERENCE_AVcc_AVss = 0, 
  REFERENCE_VREFplus_AVss = 1, 
  REFERENCE_VeREFplus_AVss = 2, 
  REFERENCE_AVcc_VREFnegterm = 4, 
  REFERENCE_VREFplus_VREFnegterm = 5, 
  REFERENCE_VeREFplus_VREFnegterm = 6
};

enum clockSourceSHT_enum {

  SHT_SOURCE_ADC12OSC = 0, 
  SHT_SOURCE_ACLK = 1, 
  SHT_SOURCE_MCLK = 2, 
  SHT_SOURCE_SMCLK = 3
};

enum sampleHold_enum {

  SAMPLE_HOLD_4_CYCLES = 0, 
  SAMPLE_HOLD_8_CYCLES = 1, 
  SAMPLE_HOLD_16_CYCLES = 2, 
  SAMPLE_HOLD_32_CYCLES = 3, 
  SAMPLE_HOLD_64_CYCLES = 4, 
  SAMPLE_HOLD_96_CYCLES = 5, 
  SAMPLE_HOLD_123_CYCLES = 6, 
  SAMPLE_HOLD_192_CYCLES = 7, 
  SAMPLE_HOLD_256_CYCLES = 8, 
  SAMPLE_HOLD_384_CYCLES = 9, 
  SAMPLE_HOLD_512_CYCLES = 10, 
  SAMPLE_HOLD_768_CYCLES = 11, 
  SAMPLE_HOLD_1024_CYCLES = 12
};






typedef union __nesc_unnamed4260 {
  uint32_t i;
  MSP430ADC12Settings_t s;
} MSP430ADC12Settings_ut;








enum __nesc_unnamed4261 {

  ADC_IDLE = 0, 
  SINGLE_CHANNEL = 1, 
  REPEAT_SINGLE_CHANNEL = 2, 
  SEQUENCE_OF_CHANNELS = 4, 
  REPEAT_SEQUENCE_OF_CHANNELS = 8, 
  TIMER_USED = 16, 
  RESERVED = 32, 
  VREF_WAIT = 64
};
#line 255
typedef struct __nesc_unnamed4262 {

  volatile unsigned 
  inch : 4, 
  sref : 3, 
  eos : 1;
} __attribute((packed))  adc12memctl_t;

typedef struct __nesc_unnamed4263 {

  unsigned int refVolt2_5 : 1;
  unsigned int gotRefVolt : 1;
  unsigned int result_16bit : 1;
  unsigned int clockSourceSHT : 2;
  unsigned int clockSourceSAMPCON : 2;
  unsigned int clockDivSAMPCON : 2;
  unsigned int clockDivSHT : 3;
  unsigned int sampleHoldTime : 4;
  adc12memctl_t memctl;
} __attribute((packed))  adc12settings_t;
# 58 "/tinyos-1.1.0/tinyos-1.x/tos/lib/CC2420Radio/CC2420Const.h"
enum __nesc_unnamed4264 {
  CC2420_TIME_BIT = 4, 
  CC2420_TIME_BYTE = CC2420_TIME_BIT << 3, 
  CC2420_TIME_SYMBOL = 16
};
#line 76
enum __nesc_unnamed4265 {
  CC2420_MIN_CHANNEL = 11, 
  CC2420_MAX_CHANNEL = 26
};
#line 261
enum __nesc_unnamed4266 {
  CP_MAIN = 0, 
  CP_MDMCTRL0, 
  CP_MDMCTRL1, 
  CP_RSSI, 
  CP_SYNCWORD, 
  CP_TXCTRL, 
  CP_RXCTRL0, 
  CP_RXCTRL1, 
  CP_FSCTRL, 
  CP_SECCTRL0, 
  CP_SECCTRL1, 
  CP_BATTMON, 
  CP_IOCFG0, 
  CP_IOCFG1
};
# 46 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/AM.h"
enum __nesc_unnamed4267 {
  TOS_BCAST_ADDR = 0xffff, 
  TOS_UART_ADDR = 0x007e
};





enum __nesc_unnamed4268 {
  TOS_DEFAULT_AM_GROUP = 0x7d
};
#line 71
typedef struct TOS_Msg {


  uint8_t length;
  uint8_t fcfhi;
  uint8_t fcflo;
  uint8_t dsn;
  uint16_t destpan;
  uint16_t addr;
  uint8_t type;
  uint8_t group;
  int8_t data[128];







  uint8_t strength;
  uint8_t lqi;
  bool crc;
  bool ack;
  uint16_t time;
} __attribute((packed))  TOS_Msg;

enum __nesc_unnamed4269 {

  MSG_HEADER_SIZE = (size_t )& ((struct TOS_Msg *)0)->data - 1, 

  MSG_FOOTER_SIZE = 2, 

  MSG_DATA_SIZE = (size_t )& ((struct TOS_Msg *)0)->strength + sizeof(uint16_t ), 

  DATA_LENGTH = 128, 

  LENGTH_BYTE_NUMBER = (size_t )& ((struct TOS_Msg *)0)->length + 1
};

typedef TOS_Msg *TOS_MsgPtr;
static inline 
# 12 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SET_RED_LED_PIN(void);
static inline 
#line 12
void TOSH_CLR_RED_LED_PIN(void);
static inline 
#line 12
void TOSH_MAKE_RED_LED_OUTPUT(void);
static inline void TOSH_SET_GREEN_LED_PIN(void);
static inline 
#line 13
void TOSH_MAKE_GREEN_LED_OUTPUT(void);
static inline void TOSH_SET_YELLOW_LED_PIN(void);
static inline 
#line 14
void TOSH_MAKE_YELLOW_LED_OUTPUT(void);
static inline 
#line 34
void TOSH_SEL_SOMI0_MODFUNC(void);
static inline void TOSH_SET_SIMO0_PIN(void);
static inline 
#line 35
void TOSH_CLR_SIMO0_PIN(void);
static inline 
#line 35
void TOSH_MAKE_SIMO0_OUTPUT(void);
static inline 
#line 35
void TOSH_MAKE_SIMO0_INPUT(void);
static inline 
#line 35
void TOSH_SEL_SIMO0_MODFUNC(void);
static inline void TOSH_SET_UCLK0_PIN(void);
static inline 
#line 36
void TOSH_CLR_UCLK0_PIN(void);
static inline 
#line 36
void TOSH_MAKE_UCLK0_OUTPUT(void);
static inline 
#line 36
void TOSH_MAKE_UCLK0_INPUT(void);
static inline 
#line 36
void TOSH_SEL_UCLK0_MODFUNC(void);
static inline void TOSH_SEL_UTXD0_IOFUNC(void);
static inline 
#line 37
bool TOSH_IS_UTXD0_MODFUNC(void);
static inline 
#line 37
bool TOSH_IS_UTXD0_IOFUNC(void);
static inline void TOSH_SEL_URXD0_IOFUNC(void);
static inline 
#line 38
bool TOSH_IS_URXD0_MODFUNC(void);
static inline 
#line 38
bool TOSH_IS_URXD0_IOFUNC(void);
static inline void TOSH_SEL_UTXD1_MODFUNC(void);
static inline 
#line 39
void TOSH_SEL_UTXD1_IOFUNC(void);
static inline 
#line 39
bool TOSH_IS_UTXD1_MODFUNC(void);
static inline 
#line 39
bool TOSH_IS_UTXD1_IOFUNC(void);
static inline void TOSH_SEL_URXD1_MODFUNC(void);
static inline 
#line 40
void TOSH_SEL_URXD1_IOFUNC(void);
static inline 
#line 40
bool TOSH_IS_URXD1_MODFUNC(void);
static inline 
#line 40
bool TOSH_IS_URXD1_IOFUNC(void);
static inline void TOSH_SEL_UCLK1_IOFUNC(void);
static inline void TOSH_SEL_SOMI1_IOFUNC(void);
static inline void TOSH_SEL_SIMO1_IOFUNC(void);
static inline 
#line 71
void TOSH_SET_FLASH_CS_PIN(void);
static inline 
#line 71
void TOSH_CLR_FLASH_CS_PIN(void);
static inline 
#line 71
void TOSH_MAKE_FLASH_CS_OUTPUT(void);
static inline void TOSH_SET_FLASH_HOLD_PIN(void);
static inline 
#line 72
void TOSH_CLR_FLASH_HOLD_PIN(void);
static inline 
#line 72
void TOSH_MAKE_FLASH_HOLD_OUTPUT(void);
static inline 









void TOSH_FLASH_M25P_DP_bit(bool set);
static inline 









void TOSH_FLASH_M25P_DP(void);
static inline 
#line 129
void TOSH_SET_PIN_DIRECTIONS(void );
# 54 "/tinyos-1.1.0/tinyos-1.x/tos/types/dbg_modes.h"
typedef long long TOS_dbg_mode;



enum __nesc_unnamed4270 {
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
typedef struct __nesc_unnamed4271 {
  void (*tp)(void);
} TOSH_sched_entry_T;

enum __nesc_unnamed4272 {






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
enum __nesc_unnamed4273 {

  IDENT_MAX_PROGRAM_NAME_LENGTH = 16
};

typedef struct __nesc_unnamed4274 {

  uint32_t unix_time;
  uint32_t user_hash;
  char program_name[IDENT_MAX_PROGRAM_NAME_LENGTH];
} Ident_t;
# 36 "../../tos/platform/telosb/platform.h"
typedef uint16_t pageptr_t;
typedef uint8_t offsetptr_t;
typedef uint8_t datalen_t;
# 33 "../../tos/types/common_header.h"
struct flashptr_t {

  pageptr_t page;
  offsetptr_t offset;
};

typedef struct flashptr_t flashptr_t;
# 28 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.h"
enum __nesc_unnamed4275 {
  MSP430TIMER_CM_NONE = 0, 
  MSP430TIMER_CM_RISING = 1, 
  MSP430TIMER_CM_FALLING = 2, 
  MSP430TIMER_CM_BOTH = 3, 

  MSP430TIMER_STOP_MODE = 0, 
  MSP430TIMER_UP_MODE = 1, 
  MSP430TIMER_CONTINUOUS_MODE = 2, 
  MSP430TIMER_UPDOWN_MODE = 3, 

  MSP430TIMER_TACLK = 0, 
  MSP430TIMER_TBCLK = 0, 
  MSP430TIMER_ACLK = 1, 
  MSP430TIMER_SMCLK = 2, 
  MSP430TIMER_INCLK = 3, 

  MSP430TIMER_CLOCKDIV_1 = 0, 
  MSP430TIMER_CLOCKDIV_2 = 1, 
  MSP430TIMER_CLOCKDIV_4 = 2, 
  MSP430TIMER_CLOCKDIV_8 = 3
};

typedef struct __nesc_unnamed4276 {

  int ccifg : 1;
  int cov : 1;
  int out : 1;
  int cci : 1;
  int ccie : 1;
  int outmod : 3;
  int cap : 1;
  int clld : 2;
  int scs : 1;
  int ccis : 2;
  int cm : 2;
} MSP430CompareControl_t;

typedef struct __nesc_unnamed4277 {

  int taifg : 1;
  int taie : 1;
  int taclr : 1;
  int _unused0 : 1;
  int mc : 2;
  int id : 2;
  int tassel : 2;
  int _unused1 : 6;
} MSP430TimerAControl_t;

typedef struct __nesc_unnamed4278 {

  int tbifg : 1;
  int tbie : 1;
  int tbclr : 1;
  int _unused0 : 1;
  int mc : 2;
  int id : 2;
  int tbssel : 2;
  int _unused1 : 1;
  int cntl : 2;
  int tbclgrp : 2;
  int _unused2 : 1;
} MSP430TimerBControl_t;
# 40 "../../tos/types/chunk_header.h"
struct chunk_header {

  datalen_t data_len;
  uint8_t ecc;
};
typedef struct chunk_header chunk_header;
# 26 "../../tos/types/PageNAND.h"
enum __nesc_unnamed4279 {
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
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/Storage.h"
enum __nesc_unnamed4280 {
  STORAGE_OK, 
  STORAGE_FAIL, 
  STORAGE_INVALID_SIGNATURE, 
  STORAGE_INVALID_CRC
};

enum __nesc_unnamed4281 {
  STORAGE_INVALID_ADDR = (uint32_t )0xffff
};

typedef uint8_t volume_t;
typedef uint8_t volume_id_t;
typedef uint8_t storage_result_t;
# 33 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.h"
enum __nesc_unnamed4282 {
  STM25P_PAGE_SIZE = 256, 
  STM25P_SECTOR_SIZE_LOG2 = 16, 
  STM25P_SECTOR_SIZE = 1L << STM25P_SECTOR_SIZE_LOG2, 
  STM25P_NUM_SECTORS = 16, 
  STM25P_POWEROFF_DELAY = 1024
};

enum __nesc_unnamed4283 {
  STM25P_INVALID_SIG = 0xff, 
  STM25P_INVALID_VOLUME_ID = 0xff, 
  STM25P_INVALID_SECTOR = 0xff
};

enum __nesc_unnamed4284 {
  STM25P_CMD_SIZE = 1, 
  STM25P_ADDR_SIZE = 3, 
  STM25P_FR_DUMMY_BYTES = 1, 
  STM25P_RES_DUMMY_BYTES = 3
};

typedef struct stm25p_cmd_t {
  uint8_t cmd;
  uint8_t address : 2;
  uint8_t dummy : 2;
  bool transmit : 1;
  bool receive : 1;
  bool write : 1;
  bool reserved : 1;
} stm25p_cmd_t;

enum __nesc_unnamed4285 {
  STM25P_WREN = 0, 
  STM25P_WRDI = 1, 
  STM25P_RDSR = 2, 
  STM25P_WRSR = 3, 
  STM25P_READ = 4, 
  STM25P_FAST_READ = 5, 
  STM25P_PP = 6, 
  STM25P_SE = 7, 
  STM25P_BE = 8, 
  STM25P_DP = 9, 
  STM25P_RES = 10, 
  STM25P_CRC = 11
};

static const stm25p_cmd_t STM25P_CMDS[12] = { 
{ .cmd = 0x06, 
.address = 0, 
.dummy = 0, 
.transmit = FALSE, 
.receive = FALSE, 
.write = FALSE }, 
{ .cmd = 0x04, 
.address = 0, 
.dummy = 0, 
.transmit = FALSE, 
.receive = FALSE, 
.write = FALSE }, 
{ .cmd = 0x05, 
.address = 0, 
.dummy = 0, 
.transmit = FALSE, 
.receive = TRUE, 
.write = FALSE }, 
{ .cmd = 0x01, 
.address = 0, 
.dummy = 0, 
.transmit = TRUE, 
.receive = FALSE, 
.write = TRUE }, 
{ .cmd = 0x03, 
.address = STM25P_ADDR_SIZE, 
.dummy = 0, 
.transmit = FALSE, 
.receive = TRUE, 
.write = FALSE }, 
{ .cmd = 0x0b, 
.address = STM25P_ADDR_SIZE, 
.dummy = STM25P_FR_DUMMY_BYTES, 
.transmit = FALSE, 
.receive = TRUE, 
.write = FALSE }, 
{ .cmd = 0x02, 
.address = STM25P_ADDR_SIZE, 
.dummy = 0, 
.transmit = TRUE, 
.receive = FALSE, 
.write = TRUE }, 
{ .cmd = 0xd8, 
.address = STM25P_ADDR_SIZE, 
.dummy = 0, 
.transmit = FALSE, 
.receive = FALSE, 
.write = TRUE }, 
{ .cmd = 0xc7, 
.address = 0, 
.dummy = 0, 
.transmit = FALSE, 
.receive = FALSE, 
.write = TRUE }, 
{ .cmd = 0xb9, 
.address = 0, 
.dummy = 0, 
.transmit = FALSE, 
.receive = FALSE, 
.write = FALSE }, 
{ .cmd = 0xab, 
.address = 0, 
.dummy = 3, 
.transmit = FALSE, 
.receive = TRUE, 
.write = FALSE }, 
{ .cmd = 0x03, 
.address = STM25P_ADDR_SIZE, 
.dummy = 0, 
.transmit = FALSE, 
.receive = TRUE, 
.write = FALSE } };


typedef uint8_t stm25p_status_t;
typedef uint32_t stm25p_addr_t;
typedef uint8_t stm25p_sig_t;

typedef struct __nesc_unnamed4286 {
  volume_id_t volumeId;
} SectorMetadata;

typedef struct __nesc_unnamed4287 {
  SectorMetadata sector[STM25P_NUM_SECTORS];
  uint16_t crc;
} SectorTable;

enum __nesc_unnamed4288 {
  STM25P_INVALID_VERSION = 0xffff
};

enum __nesc_unnamed4289 {
  STM25P_INVALID_ADDR = 0xffffffff
};

enum __nesc_unnamed4290 {
  STORAGE_BLOCK_SIZE = STM25P_SECTOR_SIZE
};

typedef stm25p_addr_t storage_addr_t;
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/crc.h"
uint16_t const ccitt_crc16_table[256] = { 
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

uint16_t crcByte(uint16_t fcs, uint8_t c);
# 39 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Timer.h"
enum __nesc_unnamed4291 {
  TIMER_REPEAT = 0, 
  TIMER_ONE_SHOT = 1, 
  NUM_TIMERS = 1
};
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/msp430usart.h"
typedef enum __nesc_unnamed4292 {

  USART_NONE = 0, 
  USART_UART = 1, 
  USART_UART_TX = 2, 
  USART_UART_RX = 3, 
  USART_SPI = 4, 
  USART_I2C = 5
} msp430_usartmode_t;
# 19 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/msp430baudrates.h"
enum __nesc_unnamed4293 {

  UBR_ACLK_1200 = 0x001B, UMCTL_ACLK_1200 = 0x94, 
  UBR_ACLK_1800 = 0x0012, UMCTL_ACLK_1800 = 0x84, 
  UBR_ACLK_2400 = 0x000D, UMCTL_ACLK_2400 = 0x6D, 
  UBR_ACLK_4800 = 0x0006, UMCTL_ACLK_4800 = 0x77, 
  UBR_ACLK_9600 = 0x0003, UMCTL_ACLK_9600 = 0x29, 


  UBR_SMCLK_1200 = 0x0369, UMCTL_SMCLK_1200 = 0x7B, 
  UBR_SMCLK_1800 = 0x0246, UMCTL_SMCLK_1800 = 0x55, 
  UBR_SMCLK_2400 = 0x01B4, UMCTL_SMCLK_2400 = 0xDF, 
  UBR_SMCLK_4800 = 0x00DA, UMCTL_SMCLK_4800 = 0xAA, 
  UBR_SMCLK_9600 = 0x006D, UMCTL_SMCLK_9600 = 0x44, 
  UBR_SMCLK_19200 = 0x0036, UMCTL_SMCLK_19200 = 0xB5, 
  UBR_SMCLK_38400 = 0x001B, UMCTL_SMCLK_38400 = 0x94, 
  UBR_SMCLK_57600 = 0x0012, UMCTL_SMCLK_57600 = 0x84, 
  UBR_SMCLK_76800 = 0x000D, UMCTL_SMCLK_76800 = 0x6D, 
  UBR_SMCLK_115200 = 0x0009, UMCTL_SMCLK_115200 = 0x10, 
  UBR_SMCLK_230400 = 0x0004, UMCTL_SMCLK_230400 = 0x55, 
  UBR_SMCLK_262144 = 4, UMCTL_SMCLK_262144 = 0
};
static  result_t HPLInitM$init(void);
static  void MSP430ClockM$MSP430ClockInit$default$initTimerB(void);
static  void MSP430ClockM$MSP430ClockInit$defaultInitTimerA(void);
static  void MSP430ClockM$MSP430ClockInit$default$initTimerA(void);
static  void MSP430ClockM$MSP430ClockInit$defaultInitTimerB(void);
static  void MSP430ClockM$MSP430ClockInit$default$initClocks(void);
static  void MSP430ClockM$MSP430ClockInit$defaultInitClocks(void);
static  result_t MSP430ClockM$StdControl$init(void);
static  result_t MSP430ClockM$StdControl$start(void);
static   void MSP430DCOCalibM$Timer32khz$overflow(void);
static   void MSP430DCOCalibM$TimerMicro$overflow(void);
static   MSP430CompareControl_t MSP430TimerM$ControlA2$getControl(void);
static   MSP430CompareControl_t MSP430TimerM$ControlB0$getControl(void);
static   uint16_t MSP430TimerM$CaptureA1$getEvent(void);
static   void MSP430TimerM$CaptureA1$default$captured(uint16_t arg_0x894a300);
static   uint16_t MSP430TimerM$CaptureB3$getEvent(void);
static   void MSP430TimerM$CaptureB3$default$captured(uint16_t arg_0x894a300);
static   void MSP430TimerM$CompareA1$default$fired(void);
static   void MSP430TimerM$CompareB3$setEventFromNow(uint16_t arg_0x894e9c8);
static   uint16_t MSP430TimerM$CaptureB6$getEvent(void);
static   void MSP430TimerM$CaptureB6$default$captured(uint16_t arg_0x894a300);
static   MSP430CompareControl_t MSP430TimerM$ControlB4$getControl(void);
static   MSP430CompareControl_t MSP430TimerM$ControlA0$getControl(void);
static   uint16_t MSP430TimerM$CaptureB1$getEvent(void);
static   void MSP430TimerM$CaptureB1$default$captured(uint16_t arg_0x894a300);
static   void MSP430TimerM$CompareB1$default$fired(void);
static   MSP430CompareControl_t MSP430TimerM$ControlB1$getControl(void);
static   uint16_t MSP430TimerM$CaptureA2$getEvent(void);
static   void MSP430TimerM$CaptureA2$default$captured(uint16_t arg_0x894a300);
static   uint16_t MSP430TimerM$CaptureB4$getEvent(void);
static   void MSP430TimerM$CaptureB4$default$captured(uint16_t arg_0x894a300);
static   MSP430CompareControl_t MSP430TimerM$ControlB2$getControl(void);
static   void MSP430TimerM$CompareA2$default$fired(void);
static   void MSP430TimerM$CompareB4$default$fired(void);
static   MSP430CompareControl_t MSP430TimerM$ControlA1$getControl(void);
static   MSP430CompareControl_t MSP430TimerM$ControlB5$getControl(void);
static   uint16_t MSP430TimerM$CaptureA0$getEvent(void);
static   void MSP430TimerM$CaptureA0$default$captured(uint16_t arg_0x894a300);
static   uint16_t MSP430TimerM$CaptureB2$getEvent(void);
static   void MSP430TimerM$CaptureB2$default$captured(uint16_t arg_0x894a300);
static   void MSP430TimerM$CompareA0$default$fired(void);
static   void MSP430TimerM$CompareB2$default$fired(void);
static   uint16_t MSP430TimerM$CaptureB5$getEvent(void);
static   void MSP430TimerM$CaptureB5$default$captured(uint16_t arg_0x894a300);
static   MSP430CompareControl_t MSP430TimerM$ControlB3$getControl(void);
static   void MSP430TimerM$ControlB3$enableEvents(void);
static   void MSP430TimerM$ControlB3$setControlAsCompare(void);
static   void MSP430TimerM$ControlB3$disableEvents(void);
static   void MSP430TimerM$ControlB3$clearPendingInterrupt(void);
static   uint16_t MSP430TimerM$TimerB$read(void);
static   bool MSP430TimerM$TimerB$isOverflowPending(void);
static   void MSP430TimerM$CompareB5$default$fired(void);
static   uint16_t MSP430TimerM$CaptureB0$getEvent(void);
static   void MSP430TimerM$CaptureB0$default$captured(uint16_t arg_0x894a300);
static   void MSP430TimerM$CompareB6$default$fired(void);
static   void MSP430TimerM$CompareB0$default$fired(void);
static   MSP430CompareControl_t MSP430TimerM$ControlB6$getControl(void);
static  void StressTestC$RootDirectory$initDone(result_t arg_0x8a60fc8);
static  void StressTestC$RootDirectory$setRootDone(result_t arg_0x8a61938);
static  void StressTestC$RootDirectory$restore(flashptr_t *arg_0x8a7c700);
static  void StressTestC$RootDirectory$getRootDone(result_t arg_0x8a7c2e8);
static  void StressTestC$ChunkStorage$writeDone(result_t arg_0x8a3bf00);
static  void StressTestC$ChunkStorage$flushDone(result_t arg_0x8a3f680);
static  void StressTestC$ChunkStorage$readDone(result_t arg_0x8a3efd0);
static  result_t StressTestC$GenericFlash$falReadDone(result_t arg_0x8a377b8);
static  result_t StressTestC$GenericFlash$initDone(result_t arg_0x8a39990);
static  result_t StressTestC$GenericFlash$writeDone(result_t arg_0x8a36890);
static  result_t StressTestC$GenericFlash$eraseDone(result_t arg_0x8a34c50);
static  result_t StressTestC$GenericFlash$readDone(result_t arg_0x8a34438);
static  void StressTestC$Stream$nextDone(result_t arg_0x8a5d5e8);
static  void StressTestC$Stream$appendDone(result_t arg_0x8a5c838);
static  void StressTestC$Console$input(char *arg_0x8a38188);
static  void StressTestC$Checkpoint$checkpointDone(result_t arg_0x8a3d410);
static  void StressTestC$Checkpoint$rollbackDone(result_t arg_0x8a3d810);
static  result_t StressTestC$StdControl$init(void);
static  result_t StressTestC$StdControl$start(void);
static  result_t ChunkStorageC$ChunkStorage$read(uint8_t arg_0x8a47388, flashptr_t *arg_0x8a3e358, void *arg_0x8a3e4c0, datalen_t arg_0x8a3e610, void *arg_0x8a3e778, datalen_t *arg_0x8a3e8e0, bool arg_0x8a3ea40, bool *arg_0x8a3eba0);
static  void ChunkStorageC$ChunkStorage$default$writeDone(uint8_t arg_0x8a47388, result_t arg_0x8a3bf00);
static  void ChunkStorageC$ChunkStorage$default$flushDone(uint8_t arg_0x8a47388, result_t arg_0x8a3f680);
static  result_t ChunkStorageC$ChunkStorage$flush(uint8_t arg_0x8a47388);
static  result_t ChunkStorageC$ChunkStorage$write(uint8_t arg_0x8a47388, void *arg_0x8a3b400, datalen_t arg_0x8a3b550, void *arg_0x8a3b6b8, datalen_t arg_0x8a3b808, bool arg_0x8a3b968, flashptr_t *arg_0x8a3bad8);
static  void ChunkStorageC$ChunkStorage$default$readDone(uint8_t arg_0x8a47388, result_t arg_0x8a3efd0);
static  result_t ChunkStorageC$GenericFlash$falReadDone(result_t arg_0x8a377b8);
static  result_t ChunkStorageC$GenericFlash$initDone(result_t arg_0x8a39990);
static  result_t ChunkStorageC$GenericFlash$writeDone(result_t arg_0x8a36890);
static  result_t ChunkStorageC$GenericFlash$eraseDone(result_t arg_0x8a34c50);
static  result_t ChunkStorageC$GenericFlash$readDone(result_t arg_0x8a34438);
static  void ChunkStorageC$Compaction$compactionDone(result_t arg_0x8a8c410);
static  result_t ChunkStorageC$Serialize$restore(uint8_t *arg_0x8a69148, datalen_t *arg_0x8a692b0);
static  result_t ChunkStorageC$Serialize$checkpoint(uint8_t *arg_0x8a68bc0, datalen_t *arg_0x8a68d28);
static  void ChunkStorageC$Console$input(char *arg_0x8a38188);
static  result_t ChunkStorageC$StdControl$init(void);
static  result_t ChunkStorageC$StdControl$start(void);
static  result_t FlashM$GenericFlash$default$falReadDone(uint8_t arg_0x8ac5830, result_t arg_0x8a377b8);
static  result_t FlashM$GenericFlash$default$initDone(uint8_t arg_0x8ac5830, result_t arg_0x8a39990);
static  result_t FlashM$GenericFlash$init(uint8_t arg_0x8ac5830);
static  pageptr_t FlashM$GenericFlash$numPages(uint8_t arg_0x8ac5830);
static  result_t FlashM$GenericFlash$default$writeDone(uint8_t arg_0x8ac5830, result_t arg_0x8a36890);
static  result_t FlashM$GenericFlash$read(uint8_t arg_0x8ac5830, pageptr_t arg_0x8a37bc0, offsetptr_t arg_0x8a37d10, void *arg_0x8a37e80, datalen_t arg_0x8a34010);
static  result_t FlashM$GenericFlash$erase(uint8_t arg_0x8ac5830, pageptr_t arg_0x8a34840);
static  result_t FlashM$GenericFlash$default$eraseDone(uint8_t arg_0x8ac5830, result_t arg_0x8a34c50);
static  result_t FlashM$GenericFlash$write(uint8_t arg_0x8ac5830, pageptr_t arg_0x8a36060, offsetptr_t arg_0x8a361b0, void *arg_0x8a36318, datalen_t arg_0x8a36468);
static  result_t FlashM$GenericFlash$falRead(uint8_t arg_0x8ac5830, pageptr_t arg_0x8a36c98, offsetptr_t arg_0x8a36de8, void *arg_0x8a36f50, void *arg_0x8a370c0, datalen_t arg_0x8a37210, void *arg_0x8a37380);
static  result_t FlashM$GenericFlash$default$readDone(uint8_t arg_0x8ac5830, result_t arg_0x8a34438);
static  void FlashM$HALSTM25P$sectorEraseDone(void);
static  void FlashM$HALSTM25P$bulkEraseDone(void);
static  void FlashM$HALSTM25P$pageProgramDone(void);
static  void FlashM$HALSTM25P$writeSRDone(void);
static  void HALSTM25PM$HALSTM25P$default$sectorEraseDone(volume_t arg_0x8a6d020);
static  void HALSTM25PM$HALSTM25P$default$bulkEraseDone(volume_t arg_0x8a6d020);
static  result_t HALSTM25PM$HALSTM25P$read(volume_t arg_0x8a6d020, stm25p_addr_t arg_0x8ab9260, void *arg_0x8ab93b8, stm25p_addr_t arg_0x8ab9508);
static  void HALSTM25PM$HALSTM25P$default$pageProgramDone(volume_t arg_0x8a6d020);
static  result_t HALSTM25PM$HALSTM25P$sectorErase(volume_t arg_0x8a6d020, stm25p_addr_t arg_0x8abc2f8);
static  result_t HALSTM25PM$HALSTM25P$pageProgram(volume_t arg_0x8a6d020, stm25p_addr_t arg_0x8ab9928, void *arg_0x8ab9a80, stm25p_addr_t arg_0x8ab9bd0);
static  void HALSTM25PM$HALSTM25P$default$writeSRDone(volume_t arg_0x8a6d020);
static  result_t HALSTM25PM$StdControl$init(void);
static  result_t HALSTM25PM$StdControl$start(void);
static  result_t HALSTM25PM$Timer$fired(void);
static   result_t HPLSTM25PM$HPLSTM25P$getBus(void);
static   void HPLSTM25PM$HPLSTM25P$endCmd(void);
static   result_t HPLSTM25PM$HPLSTM25P$releaseBus(void);
static   void HPLSTM25PM$HPLSTM25P$unhold(void);
static   void HPLSTM25PM$HPLSTM25P$txBuf(void *arg_0x8af7948, stm25p_addr_t arg_0x8af7a98);
static   uint16_t HPLSTM25PM$HPLSTM25P$rxBuf(void *arg_0x8af7ec8, stm25p_addr_t arg_0x8af4030, uint16_t arg_0x8af4180);
static   void HPLSTM25PM$HPLSTM25P$beginCmd(void);
static  result_t HPLSTM25PM$StdControl$init(void);
static  result_t HPLSTM25PM$StdControl$start(void);
static  result_t HPLSTM25PM$BusArbitration$busFree(void);
static  result_t BusArbitrationM$StdControl$init(void);
static  result_t BusArbitrationM$StdControl$start(void);
static  result_t BusArbitrationM$BusArbitration$default$busFree(uint8_t arg_0x8b62250);
static   result_t BusArbitrationM$BusArbitration$releaseBus(uint8_t arg_0x8b62250);
static   result_t BusArbitrationM$BusArbitration$getBus(uint8_t arg_0x8b62250);
static   void HPLUSART0M$HPLI2CInterrupt$default$fired(void);
static   result_t HPLUSART0M$USARTData$default$rxDone(uint8_t arg_0x8b54300);
static   result_t HPLUSART0M$USARTData$default$txDone(void);
static   result_t HPLUSART0M$USARTControl$isTxEmpty(void);
static   bool HPLUSART0M$USARTControl$isSPI(void);
static   void HPLUSART0M$USARTControl$disableUART(void);
static   bool HPLUSART0M$USARTControl$isUART(void);
static   bool HPLUSART0M$USARTControl$isI2C(void);
static   result_t HPLUSART0M$USARTControl$disableRxIntr(void);
static   result_t HPLUSART0M$USARTControl$disableTxIntr(void);
static   bool HPLUSART0M$USARTControl$isUARTtx(void);
static   void HPLUSART0M$USARTControl$disableI2C(void);
static   void HPLUSART0M$USARTControl$setModeSPI(void);
static   msp430_usartmode_t HPLUSART0M$USARTControl$getMode(void);
static   result_t HPLUSART0M$USARTControl$isTxIntrPending(void);
static   result_t HPLUSART0M$USARTControl$tx(uint8_t arg_0x8b39898);
static   uint8_t HPLUSART0M$USARTControl$rx(void);
static   result_t HPLUSART0M$USARTControl$isRxIntrPending(void);
static   bool HPLUSART0M$USARTControl$isUARTrx(void);
static   result_t LedsC$Leds$init(void);
static   result_t LedsC$Leds$redOn(void);
static  result_t TimerM$TimerMilli$default$fired(uint8_t arg_0x8b91a08);
static   uint32_t TimerM$LocalTime$read(void);
static   void TimerM$AlarmCompare$fired(void);
static  result_t TimerM$TimerJiffy$default$fired(uint8_t arg_0x8bba430);
static   void TimerM$AlarmTimer$overflow(void);
static  result_t TimerM$StdControl$init(void);
static  result_t TimerM$StdControl$start(void);
static  result_t TimerM$Timer$default$fired(uint8_t arg_0x8b91380);
static  result_t TimerM$Timer$start(uint8_t arg_0x8b91380, char arg_0x8b23300, uint32_t arg_0x8b23458);
static  result_t TimerM$Timer$stop(uint8_t arg_0x8b91380);
static   result_t ConsoleC$HPLUART$get(uint8_t arg_0xb7e6c438);
static   result_t ConsoleC$HPLUART$putDone(void);
static  result_t ConsoleC$Console$decimal(int32_t arg_0x8a452c8);
static  result_t ConsoleC$Console$string(char *arg_0x8a44ec8);
static  result_t ConsoleC$Console$init(void);
static  void StackC$ChunkStorage$writeDone(result_t arg_0x8a3bf00);
static  void StackC$ChunkStorage$flushDone(result_t arg_0x8a3f680);
static  void StackC$ChunkStorage$readDone(result_t arg_0x8a3efd0);
static  result_t StackC$Stack$init(uint8_t arg_0xb7e5a380, bool arg_0xb7e5aff8);
static  void StackC$Stack$default$popDone(uint8_t arg_0xb7e5a380, result_t arg_0xb7e54478);
static  result_t StackC$Stack$push(uint8_t arg_0xb7e5a380, void *arg_0xb7e5b408, datalen_t arg_0xb7e5b558, flashptr_t *arg_0xb7e5b6c8);
static  void StackC$Stack$default$pushDone(uint8_t arg_0xb7e5a380, result_t arg_0xb7e5bad8);
static  result_t StackC$Stack$pop(uint8_t arg_0xb7e5a380, void *arg_0xb7e5bee8, datalen_t *arg_0xb7e54078);
static  void StackC$Stack$default$topDone(uint8_t arg_0xb7e5a380, result_t arg_0xb7e54df0);
static  void StackC$Console$input(char *arg_0x8a38188);
static  void StackC$RootPtrAccess$setPtr(uint8_t arg_0xb7e55e98, flashptr_t *arg_0xb7e58bd0);
static  void StackC$RootPtrAccess$getPtr(uint8_t arg_0xb7e55e98, flashptr_t *arg_0xb7e58fe0);
static   result_t HPLUARTM$USARTData$rxDone(uint8_t arg_0x8b54300);
static   result_t HPLUARTM$USARTData$txDone(void);
static   result_t HPLUARTM$UART$init(void);
static   result_t HPLUARTM$UART$put(uint8_t arg_0x8bc3f18);
static   bool HPLUSART1M$USARTControl$isSPI(void);
static   void HPLUSART1M$USARTControl$disableSPI(void);
static   void HPLUSART1M$USARTControl$setClockRate(uint16_t arg_0x8b3dd78, uint8_t arg_0x8b3dec0);
static   void HPLUSART1M$USARTControl$disableUART(void);
static   void HPLUSART1M$USARTControl$setClockSource(uint8_t arg_0x8b3d958);
static   bool HPLUSART1M$USARTControl$isUART(void);
static   result_t HPLUSART1M$USARTControl$enableRxIntr(void);
static   bool HPLUSART1M$USARTControl$isI2C(void);
static   result_t HPLUSART1M$USARTControl$enableTxIntr(void);
static   bool HPLUSART1M$USARTControl$isUARTtx(void);
static   msp430_usartmode_t HPLUSART1M$USARTControl$getMode(void);
static   result_t HPLUSART1M$USARTControl$tx(uint8_t arg_0x8b39898);
static   void HPLUSART1M$USARTControl$setModeUART(void);
static   bool HPLUSART1M$USARTControl$isUARTrx(void);
static  uint8_t Crc8C$Crc8$crc8(uint8_t *arg_0x8a8d560, uint16_t arg_0x8a8d6b0, uint8_t arg_0x8a8d7f8);
static  void StreamC$Compaction$default$compactionDone(uint8_t arg_0xb7de25e8, result_t arg_0x8a8c410);
static  result_t StreamC$Compaction$compact(uint8_t arg_0xb7de25e8, uint8_t arg_0x8a8c010);
static  void StreamC$ChunkStorage$writeDone(result_t arg_0x8a3bf00);
static  void StreamC$ChunkStorage$flushDone(result_t arg_0x8a3f680);
static  void StreamC$ChunkStorage$readDone(result_t arg_0x8a3efd0);
static  result_t StreamC$Serialize$restore(uint8_t arg_0xb7de2010, uint8_t *arg_0x8a69148, datalen_t *arg_0x8a692b0);
static  result_t StreamC$Serialize$checkpoint(uint8_t arg_0xb7de2010, uint8_t *arg_0x8a68bc0, datalen_t *arg_0x8a68d28);
static  void StreamC$Stream$default$nextDone(uint8_t arg_0xb7de56d8, result_t arg_0x8a5d5e8);
static  result_t StreamC$Stream$init(uint8_t arg_0xb7de56d8, bool arg_0x8a57d18);
static  result_t StreamC$Stream$start_traversal(uint8_t arg_0xb7de56d8, flashptr_t *arg_0x8a5cc68);
static  void StreamC$Stream$default$appendDone(uint8_t arg_0xb7de56d8, result_t arg_0x8a5c838);
static  result_t StreamC$Stream$append(uint8_t arg_0xb7de56d8, void *arg_0x8a5c168, datalen_t arg_0x8a5c2b8, flashptr_t *arg_0x8a5c428);
static  result_t StreamC$Stream$next(uint8_t arg_0xb7de56d8, void *arg_0x8a5d078, datalen_t *arg_0x8a5d1e0);
static  void StreamC$Stack$popDone(result_t arg_0xb7e54478);
static  void StreamC$Stack$pushDone(result_t arg_0xb7e5bad8);
static  void StreamC$Stack$topDone(result_t arg_0xb7e54df0);
static  void StreamC$Console$input(char *arg_0x8a38188);
static  void CheckpointC$RootDirectory$initDone(result_t arg_0x8a60fc8);
static  void CheckpointC$RootDirectory$setRootDone(result_t arg_0x8a61938);
static  void CheckpointC$RootDirectory$restore(flashptr_t *arg_0x8a7c700);
static  void CheckpointC$RootDirectory$getRootDone(result_t arg_0x8a7c2e8);
static  void CheckpointC$ChunkStorage$writeDone(result_t arg_0x8a3bf00);
static  void CheckpointC$ChunkStorage$flushDone(result_t arg_0x8a3f680);
static  void CheckpointC$ChunkStorage$readDone(result_t arg_0x8a3efd0);
static  void CheckpointC$Stack$popDone(result_t arg_0xb7e54478);
static  void CheckpointC$Stack$pushDone(result_t arg_0xb7e5bad8);
static  void CheckpointC$Stack$topDone(result_t arg_0xb7e54df0);
static  void CheckpointC$Console$input(char *arg_0x8a38188);
static  result_t CheckpointC$Checkpoint$rollback(void);
static  result_t CheckpointC$Checkpoint$init(uint8_t arg_0x8a3caa0);
static  result_t CheckpointC$Checkpoint$checkpoint(void);
static  result_t RootDirectoryM$RootDirectory$getRoot(uint8_t arg_0x8a61d38, flashptr_t *arg_0x8a61ea0);
static  result_t RootDirectoryM$RootDirectory$init(void);
static  result_t RootDirectoryM$RootDirectory$setRoot(uint8_t arg_0x8a613c8, flashptr_t *arg_0x8a61530);
static  result_t RootDirectoryM$GenericFlash$falReadDone(result_t arg_0x8a377b8);
static  result_t RootDirectoryM$GenericFlash$initDone(result_t arg_0x8a39990);
static  result_t RootDirectoryM$GenericFlash$writeDone(result_t arg_0x8a36890);
static  result_t RootDirectoryM$GenericFlash$eraseDone(result_t arg_0x8a34c50);
static  result_t RootDirectoryM$GenericFlash$readDone(result_t arg_0x8a34438);
static  void RootDirectoryM$Console$input(char *arg_0x8a38188);
static  
# 47 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MainM.nc"
result_t MainM$hardwareInit(void);
static  
# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
result_t MainM$StdControl$init(void);
static  





result_t MainM$StdControl$start(void);
# 52 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MainM.nc"
int   main(void);
static  
# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
result_t HPLInitM$MSP430ClockControl$init(void);
static  





result_t HPLInitM$MSP430ClockControl$start(void);
static inline  
# 35 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLInitM.nc"
result_t HPLInitM$init(void);
static  
# 29 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockInit.nc"
void MSP430ClockM$MSP430ClockInit$initTimerB(void);
static  
#line 28
void MSP430ClockM$MSP430ClockInit$initTimerA(void);
static  
#line 27
void MSP430ClockM$MSP430ClockInit$initClocks(void);
 
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
static volatile uint8_t MSP430ClockM$IE1 __asm ("0x0000");
 static volatile uint16_t MSP430ClockM$TA0CTL __asm ("0x0160");
 static volatile uint16_t MSP430ClockM$TA0IV __asm ("0x012E");
 static volatile uint16_t MSP430ClockM$TBCTL __asm ("0x0180");
 static volatile uint16_t MSP430ClockM$TBIV __asm ("0x011E");

enum MSP430ClockM$__nesc_unnamed4294 {

  MSP430ClockM$ACLK_CALIB_PERIOD = 8, 
  MSP430ClockM$ACLK_KHZ = 32, 
  MSP430ClockM$TARGET_DCO_KHZ = 4096, 
  MSP430ClockM$TARGET_DCO_DELTA = MSP430ClockM$TARGET_DCO_KHZ / MSP430ClockM$ACLK_KHZ * MSP430ClockM$ACLK_CALIB_PERIOD
};
static inline  
void MSP430ClockM$MSP430ClockInit$defaultInitClocks(void);
static inline  
#line 69
void MSP430ClockM$MSP430ClockInit$defaultInitTimerA(void);
static inline  
#line 84
void MSP430ClockM$MSP430ClockInit$defaultInitTimerB(void);
static inline   
#line 99
void MSP430ClockM$MSP430ClockInit$default$initClocks(void);
static inline   



void MSP430ClockM$MSP430ClockInit$default$initTimerA(void);
static inline   



void MSP430ClockM$MSP430ClockInit$default$initTimerB(void);
static inline 




void MSP430ClockM$startTimerA(void);
static inline 
#line 127
void MSP430ClockM$startTimerB(void);
static 
#line 139
void MSP430ClockM$set_dco_calib(int calib);
static inline 




uint16_t MSP430ClockM$test_calib_busywait_delta(int calib);
static inline 
#line 168
void MSP430ClockM$busyCalibrateDCO(void);
static inline  
#line 201
result_t MSP430ClockM$StdControl$init(void);
static inline  
#line 220
result_t MSP430ClockM$StdControl$start(void);
static   
# 30 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
uint16_t MSP430DCOCalibM$Timer32khz$read(void);
# 32 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430DCOCalibM.nc"
uint16_t MSP430DCOCalibM$m_prev;

enum MSP430DCOCalibM$__nesc_unnamed4295 {

  MSP430DCOCalibM$TARGET_DELTA = 2048, 
  MSP430DCOCalibM$MAX_DEVIATION = 7
};
static inline   

void MSP430DCOCalibM$TimerMicro$overflow(void);
static inline   
#line 75
void MSP430DCOCalibM$Timer32khz$overflow(void);
static   
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
void MSP430TimerM$CaptureA1$captured(uint16_t arg_0x894a300);
static   
#line 74
void MSP430TimerM$CaptureB3$captured(uint16_t arg_0x894a300);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareA1$fired(void);
static   
#line 34
void MSP430TimerM$CompareB3$fired(void);
static   
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
void MSP430TimerM$CaptureB6$captured(uint16_t arg_0x894a300);
static   
#line 74
void MSP430TimerM$CaptureB1$captured(uint16_t arg_0x894a300);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareB1$fired(void);
static   
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
void MSP430TimerM$CaptureA2$captured(uint16_t arg_0x894a300);
static   
#line 74
void MSP430TimerM$CaptureB4$captured(uint16_t arg_0x894a300);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareA2$fired(void);
static   
# 33 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
void MSP430TimerM$TimerA$overflow(void);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareB4$fired(void);
static   
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
void MSP430TimerM$CaptureA0$captured(uint16_t arg_0x894a300);
static   
#line 74
void MSP430TimerM$CaptureB2$captured(uint16_t arg_0x894a300);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareA0$fired(void);
static   
#line 34
void MSP430TimerM$CompareB2$fired(void);
static   
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
void MSP430TimerM$CaptureB5$captured(uint16_t arg_0x894a300);
static   
# 33 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
void MSP430TimerM$TimerB$overflow(void);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareB5$fired(void);
static   
# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
void MSP430TimerM$CaptureB0$captured(uint16_t arg_0x894a300);
static   
# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void MSP430TimerM$CompareB6$fired(void);
static   
#line 34
void MSP430TimerM$CompareB0$fired(void);
 
# 69 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
static volatile uint16_t MSP430TimerM$TA0CCTL0 __asm ("0x0162");
 static volatile uint16_t MSP430TimerM$TA0CCTL1 __asm ("0x0164");
 static volatile uint16_t MSP430TimerM$TA0CCTL2 __asm ("0x0166");
 
static volatile uint16_t MSP430TimerM$TA0CCR0 __asm ("0x0172");
 static volatile uint16_t MSP430TimerM$TA0CCR1 __asm ("0x0174");
 static volatile uint16_t MSP430TimerM$TA0CCR2 __asm ("0x0176");
 
static volatile uint16_t MSP430TimerM$TBCCTL0 __asm ("0x0182");
 static volatile uint16_t MSP430TimerM$TBCCTL1 __asm ("0x0184");
 static volatile uint16_t MSP430TimerM$TBCCTL2 __asm ("0x0186");
 static volatile uint16_t MSP430TimerM$TBCCTL3 __asm ("0x0188");
 static volatile uint16_t MSP430TimerM$TBCCTL4 __asm ("0x018A");
 static volatile uint16_t MSP430TimerM$TBCCTL5 __asm ("0x018C");
 static volatile uint16_t MSP430TimerM$TBCCTL6 __asm ("0x018E");
 
static volatile uint16_t MSP430TimerM$TBCCR0 __asm ("0x0192");
 static volatile uint16_t MSP430TimerM$TBCCR1 __asm ("0x0194");
 static volatile uint16_t MSP430TimerM$TBCCR2 __asm ("0x0196");
 static volatile uint16_t MSP430TimerM$TBCCR3 __asm ("0x0198");
 static volatile uint16_t MSP430TimerM$TBCCR4 __asm ("0x019A");
 static volatile uint16_t MSP430TimerM$TBCCR5 __asm ("0x019C");
 static volatile uint16_t MSP430TimerM$TBCCR6 __asm ("0x019E");

typedef MSP430CompareControl_t MSP430TimerM$CC_t;
static inline 
uint16_t MSP430TimerM$CC2int(MSP430TimerM$CC_t x);
static inline MSP430TimerM$CC_t MSP430TimerM$int2CC(uint16_t x);
static inline 
uint16_t MSP430TimerM$compareControl(void);
#line 123
void __attribute((interrupt(12))) __attribute((wakeup))  sig_TIMERA0_VECTOR(void);







void __attribute((interrupt(10))) __attribute((wakeup))  sig_TIMERA1_VECTOR(void);
static inline    
#line 157
void MSP430TimerM$CompareA0$default$fired(void);
static inline    void MSP430TimerM$CompareA1$default$fired(void);
static inline    void MSP430TimerM$CompareA2$default$fired(void);
static inline    void MSP430TimerM$CaptureA0$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureA1$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureA2$default$captured(uint16_t time);
static inline   


uint16_t MSP430TimerM$TimerB$read(void);
static inline   

bool MSP430TimerM$TimerB$isOverflowPending(void);
static inline   
#line 205
MSP430TimerM$CC_t MSP430TimerM$ControlA0$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlA1$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlA2$getControl(void);
static inline   
#line 253
uint16_t MSP430TimerM$CaptureA0$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureA1$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureA2$getEvent(void);
#line 277
void __attribute((interrupt(26))) __attribute((wakeup))  sig_TIMERB0_VECTOR(void);







void __attribute((interrupt(24))) __attribute((wakeup))  sig_TIMERB1_VECTOR(void);
static inline    
#line 331
void MSP430TimerM$CompareB0$default$fired(void);
static inline    void MSP430TimerM$CompareB1$default$fired(void);
static inline    void MSP430TimerM$CompareB2$default$fired(void);
static inline    
void MSP430TimerM$CompareB4$default$fired(void);
static inline    void MSP430TimerM$CompareB5$default$fired(void);
static inline    void MSP430TimerM$CompareB6$default$fired(void);
static inline    void MSP430TimerM$CaptureB0$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureB1$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureB2$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureB3$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureB4$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureB5$default$captured(uint16_t time);
static inline    void MSP430TimerM$CaptureB6$default$captured(uint16_t time);
static inline   

MSP430TimerM$CC_t MSP430TimerM$ControlB0$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlB1$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlB2$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlB3$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlB4$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlB5$getControl(void);
static inline   MSP430TimerM$CC_t MSP430TimerM$ControlB6$getControl(void);
static inline   
#line 366
void MSP430TimerM$ControlB3$clearPendingInterrupt(void);
static inline   
#line 382
void MSP430TimerM$ControlB3$setControlAsCompare(void);
static inline   
#line 414
void MSP430TimerM$ControlB3$enableEvents(void);
static inline   






void MSP430TimerM$ControlB3$disableEvents(void);
static inline   
#line 443
uint16_t MSP430TimerM$CaptureB0$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureB1$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureB2$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureB3$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureB4$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureB5$getEvent(void);
static inline   uint16_t MSP430TimerM$CaptureB6$getEvent(void);
static inline   
#line 470
void MSP430TimerM$CompareB3$setEventFromNow(uint16_t x);
static  
# 31 "../../tos/interfaces/RootDirectory.nc"
result_t StressTestC$RootDirectory$init(void);
static  
# 54 "../../tos/interfaces/ChunkStorage.nc"
result_t StressTestC$ChunkStorage$flush(void);
static  
# 48 "../../tos/interfaces/GenericFlash.nc"
result_t StressTestC$GenericFlash$erase(pageptr_t arg_0x8a34840);
static  
# 31 "../../tos/interfaces/Stream.nc"
result_t StressTestC$Stream$init(bool arg_0x8a57d18);
static  






result_t StressTestC$Stream$start_traversal(flashptr_t *arg_0x8a5cc68);
static  
#line 34
result_t StressTestC$Stream$append(void *arg_0x8a5c168, datalen_t arg_0x8a5c2b8, flashptr_t *arg_0x8a5c428);
static  






result_t StressTestC$Stream$next(void *arg_0x8a5d078, datalen_t *arg_0x8a5d1e0);
static   
# 56 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t StressTestC$Leds$init(void);
static   






result_t StressTestC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t StressTestC$Console$decimal(int32_t arg_0x8a452c8);
static  
#line 10
result_t StressTestC$Console$string(char *arg_0x8a44ec8);
static  
#line 9
result_t StressTestC$Console$init(void);
static  
# 35 "../../tos/interfaces/Checkpoint.nc"
result_t StressTestC$Checkpoint$rollback(void);
static  
#line 31
result_t StressTestC$Checkpoint$init(uint8_t arg_0x8a3caa0);
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
uint8_t arg_0x8a47388, 
# 40 "../../tos/interfaces/ChunkStorage.nc"
result_t arg_0x8a3bf00);
static  
#line 55
void ChunkStorageC$ChunkStorage$flushDone(
# 33 "../../tos/system/ChunkStorageC.nc"
uint8_t arg_0x8a47388, 
# 55 "../../tos/interfaces/ChunkStorage.nc"
result_t arg_0x8a3f680);
static  
#line 49
void ChunkStorageC$ChunkStorage$readDone(
# 33 "../../tos/system/ChunkStorageC.nc"
uint8_t arg_0x8a47388, 
# 49 "../../tos/interfaces/ChunkStorage.nc"
result_t arg_0x8a3efd0);
static  
# 29 "../../tos/interfaces/GenericFlash.nc"
result_t ChunkStorageC$GenericFlash$init(void);
static  

pageptr_t ChunkStorageC$GenericFlash$numPages(void);
static  
#line 48
result_t ChunkStorageC$GenericFlash$erase(pageptr_t arg_0x8a34840);
static  
#line 34
result_t ChunkStorageC$GenericFlash$write(pageptr_t arg_0x8a36060, offsetptr_t arg_0x8a361b0, 
void *arg_0x8a36318, datalen_t arg_0x8a36468);
static  

result_t ChunkStorageC$GenericFlash$falRead(pageptr_t arg_0x8a36c98, offsetptr_t arg_0x8a36de8, 
void *arg_0x8a36f50, 
void *arg_0x8a370c0, datalen_t arg_0x8a37210, 
void *arg_0x8a37380);
static  
# 28 "../../tos/interfaces/Compaction.nc"
result_t ChunkStorageC$Compaction$compact(uint8_t arg_0x8a8c010);
static  
# 29 "../../tos/interfaces/Crc8.nc"
uint8_t ChunkStorageC$Crc8$crc8(uint8_t *arg_0x8a8d560, uint16_t arg_0x8a8d6b0, uint8_t arg_0x8a8d7f8);
static   
# 56 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t ChunkStorageC$Leds$init(void);
static   






result_t ChunkStorageC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t ChunkStorageC$Console$decimal(int32_t arg_0x8a452c8);
static  
#line 10
result_t ChunkStorageC$Console$string(char *arg_0x8a44ec8);
# 49 "../../tos/system/ChunkStorageC.nc"
enum ChunkStorageC$__nesc_unnamed4296 {
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
static inline  
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
static inline  
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
# 42 "../../tos/interfaces/GenericFlash.nc"
result_t FlashM$GenericFlash$falReadDone(
# 27 "../../tos/platform/telosb/FlashM.nc"
uint8_t arg_0x8ac5830, 
# 42 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8a377b8);
static  
#line 30
result_t FlashM$GenericFlash$initDone(
# 27 "../../tos/platform/telosb/FlashM.nc"
uint8_t arg_0x8ac5830, 
# 30 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8a39990);
static  




result_t FlashM$GenericFlash$writeDone(
# 27 "../../tos/platform/telosb/FlashM.nc"
uint8_t arg_0x8ac5830, 
# 36 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8a36890);
static  
#line 49
result_t FlashM$GenericFlash$eraseDone(
# 27 "../../tos/platform/telosb/FlashM.nc"
uint8_t arg_0x8ac5830, 
# 49 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8a34c50);
static  
#line 46
result_t FlashM$GenericFlash$readDone(
# 27 "../../tos/platform/telosb/FlashM.nc"
uint8_t arg_0x8ac5830, 
# 46 "../../tos/interfaces/GenericFlash.nc"
result_t arg_0x8a34438);
static  
# 32 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
result_t FlashM$HALSTM25P$read(stm25p_addr_t arg_0x8ab9260, void *arg_0x8ab93b8, stm25p_addr_t arg_0x8ab9508);
static  



result_t FlashM$HALSTM25P$sectorErase(stm25p_addr_t arg_0x8abc2f8);
static  
#line 34
result_t FlashM$HALSTM25P$pageProgram(stm25p_addr_t arg_0x8ab9928, void *arg_0x8ab9a80, stm25p_addr_t arg_0x8ab9bd0);
# 36 "../../tos/platform/telosb/FlashM.nc"
uint8_t FlashM$Tid;
static inline  
void FlashM$initDone(void);
static inline  



result_t FlashM$GenericFlash$init(uint8_t id);
static inline  






pageptr_t FlashM$GenericFlash$numPages(uint8_t id);
static inline  



result_t FlashM$GenericFlash$write(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *data, offsetptr_t len);
static inline  




void FlashM$HALSTM25P$pageProgramDone(void);
static inline  



void FlashM$readSignal(void);
static inline  



void FlashM$falReadSignal(void);





uint8_t FlashM$headerBuf[10];
static inline  result_t FlashM$GenericFlash$falRead(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *header, 
void *app_buff, offsetptr_t app_len, 
void *data_buff);
static inline  
#line 122
result_t FlashM$GenericFlash$read(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *buff, offsetptr_t app_len);
static inline  
#line 142
result_t FlashM$GenericFlash$erase(uint8_t id, pageptr_t page);
static inline  




void FlashM$HALSTM25P$sectorEraseDone(void);
static inline  



void FlashM$HALSTM25P$bulkEraseDone(void);
static inline  

void FlashM$HALSTM25P$writeSRDone(void);
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
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
void HALSTM25PM$HALSTM25P$sectorEraseDone(
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
volume_t arg_0x8a6d020);
static  
# 41 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
void HALSTM25PM$HALSTM25P$bulkEraseDone(
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
volume_t arg_0x8a6d020);
static  
# 35 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
void HALSTM25PM$HALSTM25P$pageProgramDone(
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
volume_t arg_0x8a6d020);
static  
# 46 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
void HALSTM25PM$HALSTM25P$writeSRDone(
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
volume_t arg_0x8a6d020);
static   
# 29 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HPLSTM25P.nc"
result_t HALSTM25PM$HPLSTM25P$getBus(void);
static   

void HALSTM25PM$HPLSTM25P$endCmd(void);
static   
#line 30
result_t HALSTM25PM$HPLSTM25P$releaseBus(void);
static   



void HALSTM25PM$HPLSTM25P$txBuf(void *arg_0x8af7948, stm25p_addr_t arg_0x8af7a98);
static   uint16_t HALSTM25PM$HPLSTM25P$rxBuf(void *arg_0x8af7ec8, stm25p_addr_t arg_0x8af4030, uint16_t arg_0x8af4180);
static   
#line 31
void HALSTM25PM$HPLSTM25P$beginCmd(void);
static  
# 59 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Timer.nc"
result_t HALSTM25PM$Timer$start(char arg_0x8b23300, uint32_t arg_0x8b23458);
static  







result_t HALSTM25PM$Timer$stop(void);
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
enum HALSTM25PM$__nesc_unnamed4297 {
  HALSTM25PM$S_POWEROFF = 0xfe, 
  HALSTM25PM$S_POWERON = 0xff
};

volume_t HALSTM25PM$curVolume;
stm25p_sig_t HALSTM25PM$signature;
uint16_t HALSTM25PM$crcScratch;
uint8_t HALSTM25PM$curCmd;
static 
void HALSTM25PM$sendCmd(uint8_t cmd, stm25p_addr_t addr, void *data, stm25p_addr_t len);
static inline  
result_t HALSTM25PM$StdControl$init(void);
static inline  




result_t HALSTM25PM$StdControl$start(void);
static inline 

void HALSTM25PM$signalDone(void);
static inline 
#line 79
bool HALSTM25PM$isWriting(void);
static inline 







void HALSTM25PM$powerOff(void);
static inline 



void HALSTM25PM$powerOn(void);
static inline  




result_t HALSTM25PM$Timer$fired(void);
static 
#line 112
void HALSTM25PM$sendCmd(uint8_t cmd, stm25p_addr_t addr, void *data, stm25p_addr_t len);
static 
#line 140
result_t HALSTM25PM$newRequest(uint8_t cmd, volume_t volume, stm25p_addr_t addr, uint8_t *data, stm25p_addr_t len);
static inline  
#line 177
result_t HALSTM25PM$HALSTM25P$read(volume_t volume, stm25p_addr_t addr, void *data, stm25p_addr_t len);
static inline  


result_t HALSTM25PM$HALSTM25P$pageProgram(volume_t volume, stm25p_addr_t addr, void *data, stm25p_addr_t len);
static inline  


result_t HALSTM25PM$HALSTM25P$sectorErase(volume_t volume, stm25p_addr_t addr);
static inline   
#line 213
void HALSTM25PM$HALSTM25P$default$pageProgramDone(volume_t volume);
static inline   void HALSTM25PM$HALSTM25P$default$sectorEraseDone(volume_t volume);
static inline   void HALSTM25PM$HALSTM25P$default$bulkEraseDone(volume_t volume);
static inline   void HALSTM25PM$HALSTM25P$default$writeSRDone(volume_t volume);
static   
# 191 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
result_t HPLSTM25PM$USARTControl$isTxEmpty(void);
static   
#line 172
result_t HPLSTM25PM$USARTControl$disableRxIntr(void);
static   result_t HPLSTM25PM$USARTControl$disableTxIntr(void);
static   
#line 135
void HPLSTM25PM$USARTControl$setModeSPI(void);
static   
#line 180
result_t HPLSTM25PM$USARTControl$isTxIntrPending(void);
static   
#line 202
result_t HPLSTM25PM$USARTControl$tx(uint8_t arg_0x8b39898);
static   





uint8_t HPLSTM25PM$USARTControl$rx(void);
static   
#line 185
result_t HPLSTM25PM$USARTControl$isRxIntrPending(void);
static   
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitration.nc"
result_t HPLSTM25PM$BusArbitration$releaseBus(void);
static   
#line 37
result_t HPLSTM25PM$BusArbitration$getBus(void);
static inline  
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
result_t HPLSTM25PM$StdControl$init(void);
static inline  


result_t HPLSTM25PM$StdControl$start(void);
static inline   
#line 58
result_t HPLSTM25PM$HPLSTM25P$getBus(void);
static inline   


result_t HPLSTM25PM$HPLSTM25P$releaseBus(void);
static inline   


void HPLSTM25PM$HPLSTM25P$beginCmd(void);
static inline   



void HPLSTM25PM$HPLSTM25P$endCmd(void);
static inline   







void HPLSTM25PM$HPLSTM25P$unhold(void);
static   


void HPLSTM25PM$HPLSTM25P$txBuf(void *buf, stm25p_addr_t len);
static inline   
#line 96
uint16_t HPLSTM25PM$HPLSTM25P$rxBuf(void *buf, stm25p_addr_t len, uint16_t crc);
static inline  
#line 120
result_t HPLSTM25PM$BusArbitration$busFree(void);
static  
# 39 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitration.nc"
result_t BusArbitrationM$BusArbitration$busFree(
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
uint8_t arg_0x8b62250);





uint8_t BusArbitrationM$state;
uint8_t BusArbitrationM$busid;
bool BusArbitrationM$isBusReleasedPending;
enum BusArbitrationM$__nesc_unnamed4298 {
#line 40
  BusArbitrationM$BUS_IDLE, BusArbitrationM$BUS_BUSY, BusArbitrationM$BUS_OFF
};
static inline  void BusArbitrationM$busReleased(void);
static inline  
#line 54
result_t BusArbitrationM$StdControl$init(void);
static inline  






result_t BusArbitrationM$StdControl$start(void);
static   
#line 94
result_t BusArbitrationM$BusArbitration$getBus(uint8_t id);
static   
#line 108
result_t BusArbitrationM$BusArbitration$releaseBus(uint8_t id);
static inline   
#line 125
result_t BusArbitrationM$BusArbitration$default$busFree(uint8_t id);
static   
# 43 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLI2CInterrupt.nc"
void HPLUSART0M$HPLI2CInterrupt$fired(void);
static   
# 53 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTFeedback.nc"
result_t HPLUSART0M$USARTData$rxDone(uint8_t arg_0x8b54300);
static   
#line 46
result_t HPLUSART0M$USARTData$txDone(void);
 
# 47 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
static volatile uint8_t HPLUSART0M$IE1 __asm ("0x0000");
 static volatile uint8_t HPLUSART0M$ME1 __asm ("0x0004");
 static volatile uint8_t HPLUSART0M$IFG1 __asm ("0x0002");
 static volatile uint8_t HPLUSART0M$U0TCTL __asm ("0x0071");
 static volatile uint8_t HPLUSART0M$U0TXBUF __asm ("0x0077");


uint16_t HPLUSART0M$l_br;

uint8_t HPLUSART0M$l_ssel;

void __attribute((interrupt(18))) __attribute((wakeup))  sig_UART0RX_VECTOR(void);




void __attribute((interrupt(16))) __attribute((wakeup))  sig_UART0TX_VECTOR(void);
static inline    





void HPLUSART0M$HPLI2CInterrupt$default$fired(void);
static inline   
bool HPLUSART0M$USARTControl$isSPI(void);
static inline   







bool HPLUSART0M$USARTControl$isUART(void);
static inline   









bool HPLUSART0M$USARTControl$isUARTtx(void);
static inline   









bool HPLUSART0M$USARTControl$isUARTrx(void);
static   









bool HPLUSART0M$USARTControl$isI2C(void);
static inline   









msp430_usartmode_t HPLUSART0M$USARTControl$getMode(void);
static inline   
#line 172
void HPLUSART0M$USARTControl$disableUART(void);
static inline   
#line 218
void HPLUSART0M$USARTControl$disableI2C(void);
static inline   





void HPLUSART0M$USARTControl$setModeSPI(void);
static inline   
#line 424
result_t HPLUSART0M$USARTControl$isTxIntrPending(void);
static inline   






result_t HPLUSART0M$USARTControl$isTxEmpty(void);
static inline   





result_t HPLUSART0M$USARTControl$isRxIntrPending(void);
static inline   






result_t HPLUSART0M$USARTControl$disableRxIntr(void);
static inline   



result_t HPLUSART0M$USARTControl$disableTxIntr(void);
static inline   
#line 473
result_t HPLUSART0M$USARTControl$tx(uint8_t data);
static inline   



uint8_t HPLUSART0M$USARTControl$rx(void);
static inline    






result_t HPLUSART0M$USARTData$default$txDone(void);
static inline    
result_t HPLUSART0M$USARTData$default$rxDone(uint8_t data);
# 50 "/tinyos-1.1.0/tinyos-1.x/tos/system/LedsC.nc"
uint8_t LedsC$ledsOn;

enum LedsC$__nesc_unnamed4299 {
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
# 37 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerMilli.nc"
result_t TimerM$TimerMilli$fired(
# 32 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
uint8_t arg_0x8b91a08);
static   
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerControl.nc"
void TimerM$AlarmControl$enableEvents(void);
static   
#line 35
void TimerM$AlarmControl$setControlAsCompare(void);
static   


void TimerM$AlarmControl$disableEvents(void);
static   
#line 32
void TimerM$AlarmControl$clearPendingInterrupt(void);
static   
# 32 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
void TimerM$AlarmCompare$setEventFromNow(uint16_t arg_0x894e9c8);
static  
# 37 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerJiffy.nc"
result_t TimerM$TimerJiffy$fired(
# 33 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
uint8_t arg_0x8bba430);
static   
# 30 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
uint16_t TimerM$AlarmTimer$read(void);
static   bool TimerM$AlarmTimer$isOverflowPending(void);
static  
# 73 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Timer.nc"
result_t TimerM$Timer$fired(
# 31 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
uint8_t arg_0x8b91380);








enum TimerM$__nesc_unnamed4300 {

  TimerM$COUNT_TIMER_OLD = 1, 
  TimerM$COUNT_TIMER_MILLI = 0, 
  TimerM$COUNT_TIMER_JIFFY = 0, 

  TimerM$OFFSET_TIMER_OLD = 0, 
  TimerM$OFFSET_TIMER_MILLI = TimerM$OFFSET_TIMER_OLD + TimerM$COUNT_TIMER_OLD, 
  TimerM$OFFSET_TIMER_JIFFY = TimerM$OFFSET_TIMER_MILLI + TimerM$COUNT_TIMER_MILLI, 
  TimerM$NUM_TIMERS = TimerM$OFFSET_TIMER_JIFFY + TimerM$COUNT_TIMER_JIFFY, 

  TimerM$EMPTY_LIST = 255
};

typedef struct TimerM$Timer_s {

  uint32_t alarm;
  uint8_t next;
  bool isperiodic : 1;
  bool isset : 1;
  bool isqueued : 1;
  int _reserved_flags : 5;
  uint8_t _reserved_byte;
} TimerM$Timer_t;

TimerM$Timer_t TimerM$m_timers[TimerM$NUM_TIMERS];
int32_t TimerM$m_period[TimerM$NUM_TIMERS];
uint16_t TimerM$m_hinow;
uint8_t TimerM$m_head_short;
uint8_t TimerM$m_head_long;
bool TimerM$m_posted_checkShortTimers;
static inline  
result_t TimerM$StdControl$init(void);
static inline  
#line 84
result_t TimerM$StdControl$start(void);
static 








void TimerM$insertTimer(uint8_t num, bool isshort);
static inline 
#line 113
void TimerM$removeTimer(uint8_t num);
static inline 



void TimerM$signal_timer_fired(uint8_t num);
static 
#line 141
void TimerM$executeTimers(uint8_t head);
static inline  
#line 184
void TimerM$checkShortTimers(void);
static inline 
void TimerM$post_checkShortTimers(void);
static 
#line 198
void TimerM$setNextShortEvent(void);
static inline  
#line 257
void TimerM$checkShortTimers(void);
static inline  







void TimerM$checkLongTimers(void);
static 







uint16_t TimerM$readTime(void);
static   
#line 288
uint32_t TimerM$LocalTime$read(void);
static inline   
#line 308
void TimerM$AlarmCompare$fired(void);
static inline   



void TimerM$AlarmTimer$overflow(void);
static 




result_t TimerM$setTimer(uint8_t num, int32_t jiffy, bool isperiodic);
static inline   
#line 386
result_t TimerM$TimerJiffy$default$fired(uint8_t num);
static inline   
#line 435
result_t TimerM$TimerMilli$default$fired(uint8_t num);
static  






result_t TimerM$Timer$start(uint8_t num, char type, uint32_t milli);
static inline  
#line 457
result_t TimerM$Timer$stop(uint8_t num);
static inline   




result_t TimerM$Timer$default$fired(uint8_t num);
static   
# 62 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
result_t ConsoleC$HPLUART$init(void);
static   
#line 80
result_t ConsoleC$HPLUART$put(uint8_t arg_0x8bc3f18);
static  
# 15 "../../tos/interfaces/Console.nc"
void ConsoleC$Console$input(char *arg_0x8a38188);
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
static  
# 45 "../../tos/interfaces/ChunkStorage.nc"
result_t StackC$ChunkStorage$read(flashptr_t *arg_0x8a3e358, 
void *arg_0x8a3e4c0, datalen_t arg_0x8a3e610, 
void *arg_0x8a3e778, datalen_t *arg_0x8a3e8e0, 
bool arg_0x8a3ea40, bool *arg_0x8a3eba0);
static  
#line 37
result_t StackC$ChunkStorage$write(void *arg_0x8a3b400, datalen_t arg_0x8a3b550, 
void *arg_0x8a3b6b8, datalen_t arg_0x8a3b808, 
bool arg_0x8a3b968, flashptr_t *arg_0x8a3bad8);
static  
# 41 "../../tos/interfaces/Stack.nc"
void StackC$Stack$popDone(
# 34 "../../tos/system/StackC.nc"
uint8_t arg_0xb7e5a380, 
# 41 "../../tos/interfaces/Stack.nc"
result_t arg_0xb7e54478);
static  
#line 36
void StackC$Stack$pushDone(
# 34 "../../tos/system/StackC.nc"
uint8_t arg_0xb7e5a380, 
# 36 "../../tos/interfaces/Stack.nc"
result_t arg_0xb7e5bad8);
static  








void StackC$Stack$topDone(
# 34 "../../tos/system/StackC.nc"
uint8_t arg_0xb7e5a380, 
# 46 "../../tos/interfaces/Stack.nc"
result_t arg_0xb7e54df0);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t StackC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t StackC$Console$decimal(int32_t arg_0x8a452c8);
static  
#line 10
result_t StackC$Console$string(char *arg_0x8a44ec8);
# 47 "../../tos/system/StackC.nc"
enum StackC$__nesc_unnamed4301 {
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
result_t HPLUARTM$UART$get(uint8_t arg_0xb7e6c438);
static   






result_t HPLUARTM$UART$putDone(void);
static   
# 169 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
void HPLUARTM$USARTControl$setClockRate(uint16_t arg_0x8b3dd78, uint8_t arg_0x8b3dec0);
static   
#line 167
void HPLUARTM$USARTControl$setClockSource(uint8_t arg_0x8b3d958);
static   





result_t HPLUARTM$USARTControl$enableRxIntr(void);
static   result_t HPLUARTM$USARTControl$enableTxIntr(void);
static   
#line 202
result_t HPLUARTM$USARTControl$tx(uint8_t arg_0x8b39898);
static   
#line 153
void HPLUARTM$USARTControl$setModeUART(void);
static inline   
# 50 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUARTM.nc"
result_t HPLUARTM$UART$init(void);
static inline   
#line 90
result_t HPLUARTM$USARTData$rxDone(uint8_t b);
static inline   


result_t HPLUARTM$USARTData$txDone(void);
static inline   


result_t HPLUARTM$UART$put(uint8_t data);
static   
# 53 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTFeedback.nc"
result_t HPLUSART1M$USARTData$rxDone(uint8_t arg_0x8b54300);
static   
#line 46
result_t HPLUSART1M$USARTData$txDone(void);
 
# 46 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
static volatile uint8_t HPLUSART1M$ME2 __asm ("0x0005");
 static volatile uint8_t HPLUSART1M$IFG2 __asm ("0x0003");
 static volatile uint8_t HPLUSART1M$U1TCTL __asm ("0x0079");
 static volatile uint8_t HPLUSART1M$U1TXBUF __asm ("0x007F");

uint16_t HPLUSART1M$l_br;
uint8_t HPLUSART1M$l_mctl;
uint8_t HPLUSART1M$l_ssel;

void __attribute((interrupt(6))) __attribute((wakeup))  sig_UART1RX_VECTOR(void);




void __attribute((interrupt(4))) __attribute((wakeup))  sig_UART1TX_VECTOR(void);
static inline   


bool HPLUSART1M$USARTControl$isSPI(void);
static inline   







bool HPLUSART1M$USARTControl$isUART(void);
static inline   









bool HPLUSART1M$USARTControl$isUARTtx(void);
static inline   









bool HPLUSART1M$USARTControl$isUARTrx(void);
static inline   
#line 107
bool HPLUSART1M$USARTControl$isI2C(void);
static inline   


msp430_usartmode_t HPLUSART1M$USARTControl$getMode(void);
static inline   
#line 158
void HPLUSART1M$USARTControl$disableUART(void);
static inline   
#line 191
void HPLUSART1M$USARTControl$disableSPI(void);
static inline 
#line 252
void HPLUSART1M$setUARTModeCommon(void);
static inline   
#line 325
void HPLUSART1M$USARTControl$setModeUART(void);
static inline   
#line 341
void HPLUSART1M$USARTControl$setClockSource(uint8_t source);
static inline   






void HPLUSART1M$USARTControl$setClockRate(uint16_t baudrate, uint8_t mctl);
static inline   
#line 392
result_t HPLUSART1M$USARTControl$enableRxIntr(void);
static inline   






result_t HPLUSART1M$USARTControl$enableTxIntr(void);
static inline   






result_t HPLUSART1M$USARTControl$tx(uint8_t data);
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
uint8_t arg_0xb7de25e8, 
# 30 "../../tos/interfaces/Compaction.nc"
result_t arg_0x8a8c410);
static  
# 45 "../../tos/interfaces/ChunkStorage.nc"
result_t StreamC$ChunkStorage$read(flashptr_t *arg_0x8a3e358, 
void *arg_0x8a3e4c0, datalen_t arg_0x8a3e610, 
void *arg_0x8a3e778, datalen_t *arg_0x8a3e8e0, 
bool arg_0x8a3ea40, bool *arg_0x8a3eba0);
static  
#line 37
result_t StreamC$ChunkStorage$write(void *arg_0x8a3b400, datalen_t arg_0x8a3b550, 
void *arg_0x8a3b6b8, datalen_t arg_0x8a3b808, 
bool arg_0x8a3b968, flashptr_t *arg_0x8a3bad8);
static  
# 44 "../../tos/interfaces/Stream.nc"
void StreamC$Stream$nextDone(
# 32 "StreamC.nc"
uint8_t arg_0xb7de56d8, 
# 44 "../../tos/interfaces/Stream.nc"
result_t arg_0x8a5d5e8);
static  
#line 36
void StreamC$Stream$appendDone(
# 32 "StreamC.nc"
uint8_t arg_0xb7de56d8, 
# 36 "../../tos/interfaces/Stream.nc"
result_t arg_0x8a5c838);
static  
# 34 "../../tos/interfaces/Stack.nc"
result_t StreamC$Stack$push(void *arg_0xb7e5b408, datalen_t arg_0xb7e5b558, flashptr_t *arg_0xb7e5b6c8);
static  



result_t StreamC$Stack$pop(void *arg_0xb7e5bee8, datalen_t *arg_0xb7e54078);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t StreamC$Console$decimal(int32_t arg_0x8a452c8);
static  
#line 10
result_t StreamC$Console$string(char *arg_0x8a44ec8);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t StreamC$Leds$redOn(void);
# 46 "StreamC.nc"
enum StreamC$__nesc_unnamed4302 {
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
result_t CheckpointC$RootDirectory$getRoot(uint8_t arg_0x8a61d38, flashptr_t *arg_0x8a61ea0);
static  
#line 35
result_t CheckpointC$RootDirectory$setRoot(uint8_t arg_0x8a613c8, flashptr_t *arg_0x8a61530);
static  
# 54 "../../tos/interfaces/ChunkStorage.nc"
result_t CheckpointC$ChunkStorage$flush(void);
static  
# 33 "../../tos/interfaces/Serialize.nc"
result_t CheckpointC$Serialize$restore(uint8_t *arg_0x8a69148, datalen_t *arg_0x8a692b0);
static  
#line 31
result_t CheckpointC$Serialize$checkpoint(uint8_t *arg_0x8a68bc0, datalen_t *arg_0x8a68d28);
static  
# 31 "../../tos/interfaces/Stack.nc"
result_t CheckpointC$Stack$init(bool arg_0xb7e5aff8);
static  

result_t CheckpointC$Stack$push(void *arg_0xb7e5b408, datalen_t arg_0xb7e5b558, flashptr_t *arg_0xb7e5b6c8);
static  



result_t CheckpointC$Stack$pop(void *arg_0xb7e5bee8, datalen_t *arg_0xb7e54078);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t CheckpointC$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t CheckpointC$Console$decimal(int32_t arg_0x8a452c8);
static  
#line 10
result_t CheckpointC$Console$string(char *arg_0x8a44ec8);
static  
# 37 "../../tos/interfaces/Checkpoint.nc"
void CheckpointC$Checkpoint$checkpointDone(result_t arg_0x8a3d410);
static  
void CheckpointC$Checkpoint$rollbackDone(result_t arg_0x8a3d810);
static  
# 32 "../../tos/interfaces/RootPtrAccess.nc"
void CheckpointC$RootPtrAccess$setPtr(flashptr_t *arg_0xb7e58bd0);
static  
void CheckpointC$RootPtrAccess$getPtr(flashptr_t *arg_0xb7e58fe0);
# 47 "../../tos/system/CheckpointC.nc"
enum CheckpointC$__nesc_unnamed4303 {
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
void RootDirectoryM$RootDirectory$initDone(result_t arg_0x8a60fc8);
static  


void RootDirectoryM$RootDirectory$setRootDone(result_t arg_0x8a61938);
static  
#line 49
void RootDirectoryM$RootDirectory$restore(flashptr_t *arg_0x8a7c700);
static  
#line 41
void RootDirectoryM$RootDirectory$getRootDone(result_t arg_0x8a7c2e8);
static   
# 27 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/LocalTime.nc"
uint32_t RootDirectoryM$LocalTime$read(void);
static  
# 44 "../../tos/interfaces/GenericFlash.nc"
result_t RootDirectoryM$GenericFlash$read(pageptr_t arg_0x8a37bc0, offsetptr_t arg_0x8a37d10, 
void *arg_0x8a37e80, datalen_t arg_0x8a34010);
static  

result_t RootDirectoryM$GenericFlash$erase(pageptr_t arg_0x8a34840);
static  
#line 34
result_t RootDirectoryM$GenericFlash$write(pageptr_t arg_0x8a36060, offsetptr_t arg_0x8a361b0, 
void *arg_0x8a36318, datalen_t arg_0x8a36468);
static  
# 29 "../../tos/interfaces/Crc8.nc"
uint8_t RootDirectoryM$Crc8$crc8(uint8_t *arg_0x8a8d560, uint16_t arg_0x8a8d6b0, uint8_t arg_0x8a8d7f8);
static   
# 64 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Leds.nc"
result_t RootDirectoryM$Leds$redOn(void);
static  
# 11 "../../tos/interfaces/Console.nc"
result_t RootDirectoryM$Console$decimal(int32_t arg_0x8a452c8);
static  
#line 10
result_t RootDirectoryM$Console$string(char *arg_0x8a44ec8);
# 49 "../../tos/system/RootDirectoryM.nc"
enum RootDirectoryM$__nesc_unnamed4304 {
#line 49
  RootDirectoryM$NONE, RootDirectoryM$RECOVERING, RootDirectoryM$FINAL_RECOVERING, RootDirectoryM$SETTING, RootDirectoryM$GETTING
};
#line 50
bool RootDirectoryM$busy;
pageptr_t RootDirectoryM$page = 0;
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
static inline  
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
static inline 
# 127 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
void MSP430ClockM$startTimerB(void)
{

  MSP430ClockM$TBCTL = 0x0020 | (MSP430ClockM$TBCTL & ~(0x0020 | 0x0010));
}

static inline 
#line 115
void MSP430ClockM$startTimerA(void)
{

  MSP430ClockM$TA0CTL = 0x0020 | (MSP430ClockM$TA0CTL & ~(0x0020 | 0x0010));
}

static inline  
#line 220
result_t MSP430ClockM$StdControl$start(void)
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      MSP430ClockM$startTimerA();
      MSP430ClockM$startTimerB();
    }
#line 226
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 70 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t HPLInitM$MSP430ClockControl$start(void){
#line 70
  unsigned char result;
#line 70

#line 70
  result = MSP430ClockM$StdControl$start();
#line 70

#line 70
  return result;
#line 70
}
#line 70
static inline  
# 84 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
void MSP430ClockM$MSP430ClockInit$defaultInitTimerB(void)
{
  TBR = 0;









  MSP430ClockM$TBCTL = 0x0100 | 0x0002;
}

static inline   









void MSP430ClockM$MSP430ClockInit$default$initTimerB(void)
{
  MSP430ClockM$MSP430ClockInit$defaultInitTimerB();
}

# 29 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockInit.nc"
inline static  void MSP430ClockM$MSP430ClockInit$initTimerB(void){
#line 29
  MSP430ClockM$MSP430ClockInit$default$initTimerB();
#line 29
}
#line 29
static inline  
# 69 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
void MSP430ClockM$MSP430ClockInit$defaultInitTimerA(void)
{
  TA0R = 0;









  MSP430ClockM$TA0CTL = 0x0200 | 0x0002;
}

static inline   
#line 104
void MSP430ClockM$MSP430ClockInit$default$initTimerA(void)
{
  MSP430ClockM$MSP430ClockInit$defaultInitTimerA();
}

# 28 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockInit.nc"
inline static  void MSP430ClockM$MSP430ClockInit$initTimerA(void){
#line 28
  MSP430ClockM$MSP430ClockInit$default$initTimerA();
#line 28
}
#line 28
static inline  
# 48 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
void MSP430ClockM$MSP430ClockInit$defaultInitClocks(void)
{





  BCSCTL1 = 0x80 | (BCSCTL1 & ((0x04 | 0x02) | 0x01));







  BCSCTL2 = 0x04;


  MSP430ClockM$IE1 &= ~(1 << 1);
}

static inline   
#line 99
void MSP430ClockM$MSP430ClockInit$default$initClocks(void)
{
  MSP430ClockM$MSP430ClockInit$defaultInitClocks();
}

# 27 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockInit.nc"
inline static  void MSP430ClockM$MSP430ClockInit$initClocks(void){
#line 27
  MSP430ClockM$MSP430ClockInit$default$initClocks();
#line 27
}
#line 27
static inline 
# 145 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
uint16_t MSP430ClockM$test_calib_busywait_delta(int calib)
{
  int8_t aclk_count = 2;
  uint16_t dco_prev = 0;
  uint16_t dco_curr = 0;

  MSP430ClockM$set_dco_calib(calib);

  while (aclk_count-- > 0) 
    {
      TBCCR0 = TBR + MSP430ClockM$ACLK_CALIB_PERIOD;
      TBCCTL0 &= ~0x0001;
      while ((TBCCTL0 & 0x0001) == 0) ;
      dco_prev = dco_curr;
      dco_curr = TA0R;
    }

  return dco_curr - dco_prev;
}

static inline 


void MSP430ClockM$busyCalibrateDCO(void)
{

  int calib;
  int step;



  MSP430ClockM$TA0CTL = 0x0200 | 0x0020;
  MSP430ClockM$TBCTL = 0x0100 | 0x0020;
  BCSCTL1 = 0x80 | 0x04;
  BCSCTL2 = 0;
  TBCCTL0 = 0x4000;






  for (calib = 0, step = 0x800; step != 0; step >>= 1) 
    {

      if (MSP430ClockM$test_calib_busywait_delta(calib | step) <= MSP430ClockM$TARGET_DCO_DELTA) {
        calib |= step;
        }
    }

  if ((calib & 0x0e0) == 0x0e0) {
    calib &= ~0x01f;
    }
  MSP430ClockM$set_dco_calib(calib);
}

static inline  result_t MSP430ClockM$StdControl$init(void)
{

  MSP430ClockM$TA0CTL = 0x0004;
  MSP430ClockM$TA0IV = 0;
  MSP430ClockM$TBCTL = 0x0004;
  MSP430ClockM$TBIV = 0;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      MSP430ClockM$busyCalibrateDCO();
      MSP430ClockM$MSP430ClockInit$initClocks();
      MSP430ClockM$MSP430ClockInit$initTimerA();
      MSP430ClockM$MSP430ClockInit$initTimerB();
    }
#line 215
    __nesc_atomic_end(__nesc_atomic); }

  return SUCCESS;
}

# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t HPLInitM$MSP430ClockControl$init(void){
#line 63
  unsigned char result;
#line 63

#line 63
  result = MSP430ClockM$StdControl$init();
#line 63

#line 63
  return result;
#line 63
}
#line 63
static inline 
# 72 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_CLR_FLASH_HOLD_PIN(void)
#line 72
{
   
#line 72
  static volatile uint8_t r __asm ("0x001D");

#line 72
  r &= ~(1 << 7);
}

static inline 
#line 36
void TOSH_MAKE_UCLK0_INPUT(void)
#line 36
{
   
#line 36
  static volatile uint8_t r __asm ("0x001A");

#line 36
  r &= ~(1 << 3);
}

static inline 
#line 35
void TOSH_MAKE_SIMO0_INPUT(void)
#line 35
{
   
#line 35
  static volatile uint8_t r __asm ("0x001A");

#line 35
  r &= ~(1 << 1);
}

static inline 
#line 35
void TOSH_SET_SIMO0_PIN(void)
#line 35
{
   
#line 35
  static volatile uint8_t r __asm ("0x0019");

#line 35
  r |= 1 << 1;
}

static inline 
#line 71
void TOSH_SET_FLASH_CS_PIN(void)
#line 71
{
   
#line 71
  static volatile uint8_t r __asm ("0x001D");

#line 71
  r |= 1 << 4;
}

static inline 
#line 36
void TOSH_CLR_UCLK0_PIN(void)
#line 36
{
   
#line 36
  static volatile uint8_t r __asm ("0x0019");

#line 36
  r &= ~(1 << 3);
}

static inline 
#line 36
void TOSH_SET_UCLK0_PIN(void)
#line 36
{
   
#line 36
  static volatile uint8_t r __asm ("0x0019");

#line 36
  r |= 1 << 3;
}

static inline 
#line 35
void TOSH_CLR_SIMO0_PIN(void)
#line 35
{
   
#line 35
  static volatile uint8_t r __asm ("0x0019");

#line 35
  r &= ~(1 << 1);
}

static inline 
#line 83
void TOSH_FLASH_M25P_DP_bit(bool set)
#line 83
{
  if (set) {
    TOSH_SET_SIMO0_PIN();
    }
  else {
#line 87
    TOSH_CLR_SIMO0_PIN();
    }
#line 88
  TOSH_SET_UCLK0_PIN();
  TOSH_CLR_UCLK0_PIN();
}

static inline 
#line 71
void TOSH_CLR_FLASH_CS_PIN(void)
#line 71
{
   
#line 71
  static volatile uint8_t r __asm ("0x001D");

#line 71
  r &= ~(1 << 4);
}

static 
# 161 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/msp430hardware.h"
__inline void TOSH_wait(void )
{
   __asm volatile ("nop"); __asm volatile ("nop");}

static inline 
# 72 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SET_FLASH_HOLD_PIN(void)
#line 72
{
   
#line 72
  static volatile uint8_t r __asm ("0x001D");

#line 72
  r |= 1 << 7;
}

static inline 
#line 71
void TOSH_MAKE_FLASH_CS_OUTPUT(void)
#line 71
{
   
#line 71
  static volatile uint8_t r __asm ("0x001E");

#line 71
  r |= 1 << 4;
}

static inline 
#line 72
void TOSH_MAKE_FLASH_HOLD_OUTPUT(void)
#line 72
{
   
#line 72
  static volatile uint8_t r __asm ("0x001E");

#line 72
  r |= 1 << 7;
}

static inline 
#line 36
void TOSH_MAKE_UCLK0_OUTPUT(void)
#line 36
{
   
#line 36
  static volatile uint8_t r __asm ("0x001A");

#line 36
  r |= 1 << 3;
}

static inline 
#line 35
void TOSH_MAKE_SIMO0_OUTPUT(void)
#line 35
{
   
#line 35
  static volatile uint8_t r __asm ("0x001A");

#line 35
  r |= 1 << 1;
}

static inline 
#line 94
void TOSH_FLASH_M25P_DP(void)
#line 94
{

  TOSH_MAKE_SIMO0_OUTPUT();
  TOSH_MAKE_UCLK0_OUTPUT();
  TOSH_MAKE_FLASH_HOLD_OUTPUT();
  TOSH_MAKE_FLASH_CS_OUTPUT();
  TOSH_SET_FLASH_HOLD_PIN();
  TOSH_SET_FLASH_CS_PIN();

  TOSH_wait();


  TOSH_CLR_FLASH_CS_PIN();
  TOSH_CLR_UCLK0_PIN();

  TOSH_FLASH_M25P_DP_bit(TRUE);
  TOSH_FLASH_M25P_DP_bit(FALSE);
  TOSH_FLASH_M25P_DP_bit(TRUE);
  TOSH_FLASH_M25P_DP_bit(TRUE);
  TOSH_FLASH_M25P_DP_bit(TRUE);
  TOSH_FLASH_M25P_DP_bit(FALSE);
  TOSH_FLASH_M25P_DP_bit(FALSE);
  TOSH_FLASH_M25P_DP_bit(TRUE);

  TOSH_SET_FLASH_CS_PIN();

  TOSH_SET_SIMO0_PIN();
  TOSH_MAKE_SIMO0_INPUT();
  TOSH_MAKE_UCLK0_INPUT();
  TOSH_CLR_FLASH_HOLD_PIN();
}

static 
# 174 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/msp430hardware.h"
__inline void TOSH_uwait(uint16_t u)
{
  uint16_t i;

#line 177
  if (u < 500) {
    for (i = 2; i < u; i++) {
         __asm volatile ("nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t");}
    }
  else {

    for (i = 0; i < u; i++) {
         __asm volatile ("nop\n\t"
        "nop\n\t"
        "nop\n\t"
        "nop\n\t");}
    }
}

static inline 
# 129 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SET_PIN_DIRECTIONS(void )
{

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      P1SEL = 0;
      P2SEL = 0;
      P3SEL = 0;
      P4SEL = 0;
      P5SEL = 0;
      P6SEL = 0;

      P1DIR = 0xe0;
      P1OUT = 0x00;

      P2DIR = 0x7b;
      P2OUT = 0x10;

      P3DIR = 0xf1;
      P3OUT = 0x00;

      P4DIR = 0xfd;
      P4OUT = 0xdd;

      P5DIR = 0xff;
      P5OUT = 0xff;

      P6DIR = 0xff;
      P6OUT = 0x00;

      P1IE = 0;
      P2IE = 0;






      TOSH_uwait(1024 * 10);

      TOSH_FLASH_M25P_DP();
    }
#line 170
    __nesc_atomic_end(__nesc_atomic); }
}

static inline  
# 35 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLInitM.nc"
result_t HPLInitM$init(void)
{
  TOSH_SET_PIN_DIRECTIONS();
  HPLInitM$MSP430ClockControl$init();
  HPLInitM$MSP430ClockControl$start();
  return SUCCESS;
}

# 47 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MainM.nc"
inline static  result_t MainM$hardwareInit(void){
#line 47
  unsigned char result;
#line 47

#line 47
  result = HPLInitM$init();
#line 47

#line 47
  return result;
#line 47
}
#line 47
static inline 
# 79 "/tinyos-1.1.0/tinyos-1.x/tos/system/sched.c"
void TOSH_sched_init(void )
{
  int i;

#line 82
  TOSH_sched_free = 0;
  TOSH_sched_full = 0;
  for (i = 0; i < TOSH_MAX_TASKS; i++) 
    TOSH_queue[i].tp = NULL;
}

static inline 
# 120 "/tinyos-1.1.0/tinyos-1.x/tos/system/tos.h"
result_t rcombine(result_t r1, result_t r2)



{
  return r1 == FAIL ? FAIL : r2;
}

static inline 
# 12 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_CLR_RED_LED_PIN(void)
#line 12
{
   
#line 12
  static volatile uint8_t r __asm ("0x0031");

#line 12
  r &= ~(1 << 4);
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
inline static  result_t StressTestC$Console$string(char *arg_0x8a44ec8){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8a44ec8);
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
# 51 "../../tos/platform/telosb/FlashM.nc"
pageptr_t FlashM$GenericFlash$numPages(uint8_t id)
{
  return 4096;
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
# 159 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$default$initDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 30 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$initDone(uint8_t arg_0x8ac5830, result_t arg_0x8a39990){
#line 30
  unsigned char result;
#line 30

#line 30
  switch (arg_0x8ac5830) {
#line 30
    case 0:
#line 30
      result = ChunkStorageC$GenericFlash$initDone(arg_0x8a39990);
#line 30
      break;
#line 30
    case 1:
#line 30
      result = StressTestC$GenericFlash$initDone(arg_0x8a39990);
#line 30
      break;
#line 30
    case 3:
#line 30
      result = RootDirectoryM$GenericFlash$initDone(arg_0x8a39990);
#line 30
      break;
#line 30
    default:
#line 30
      result = FlashM$GenericFlash$default$initDone(arg_0x8ac5830, arg_0x8a39990);
#line 30
    }
#line 30

#line 30
  return result;
#line 30
}
#line 30
static inline  
# 38 "../../tos/platform/telosb/FlashM.nc"
void FlashM$initDone(void)
{
  FlashM$GenericFlash$initDone(FlashM$Tid, SUCCESS);
}

static inline  result_t FlashM$GenericFlash$init(uint8_t id)
{
  FlashM$Tid = id;
  TOS_post(FlashM$initDone);

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

  ChunkStorageC$page_ptr = 2 + 0;
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

static inline   
# 422 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void MSP430TimerM$ControlB3$disableEvents(void)
#line 422
{
#line 422
  MSP430TimerM$TBCCTL3 &= ~0x0010;
}

# 39 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerControl.nc"
inline static   void TimerM$AlarmControl$disableEvents(void){
#line 39
  MSP430TimerM$ControlB3$disableEvents();
#line 39
}
#line 39
static inline 
# 95 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CC2int(MSP430TimerM$CC_t x)
#line 95
{
#line 95
  union __nesc_unnamed4305 {
#line 95
    MSP430TimerM$CC_t f;
#line 95
    uint16_t t;
  } 
#line 95
  c = { .f = x };

#line 95
  return c.t;
}

static inline uint16_t MSP430TimerM$compareControl(void)
{
  MSP430TimerM$CC_t x = { 
  .cm = 1, 
  .ccis = 0, 
  .clld = 0, 
  .cap = 0, 
  .ccie = 0 };

  return MSP430TimerM$CC2int(x);
}

static inline   
#line 382
void MSP430TimerM$ControlB3$setControlAsCompare(void)
#line 382
{
#line 382
  MSP430TimerM$TBCCTL3 = MSP430TimerM$compareControl();
}

# 35 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerControl.nc"
inline static   void TimerM$AlarmControl$setControlAsCompare(void){
#line 35
  MSP430TimerM$ControlB3$setControlAsCompare();
#line 35
}
#line 35
static inline  
# 72 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
result_t TimerM$StdControl$init(void)
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 74
    TimerM$m_hinow = 0;
#line 74
    __nesc_atomic_end(__nesc_atomic); }
  TimerM$m_head_short = TimerM$EMPTY_LIST;
  TimerM$m_head_long = TimerM$EMPTY_LIST;
  bzero(TimerM$m_timers, sizeof TimerM$m_timers);
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 78
    TimerM$m_posted_checkShortTimers = FALSE;
#line 78
    __nesc_atomic_end(__nesc_atomic); }
  TimerM$AlarmControl$setControlAsCompare();
  TimerM$AlarmControl$disableEvents();
  return SUCCESS;
}

static inline  
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
result_t HPLSTM25PM$StdControl$init(void)
#line 42
{
  return SUCCESS;
}

static inline  
# 54 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
result_t HALSTM25PM$StdControl$init(void)
#line 54
{
  HALSTM25PM$curCmd = HALSTM25PM$S_POWEROFF;
  HALSTM25PM$signature = STM25P_INVALID_SIG;
  return SUCCESS;
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
# 400 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
result_t HPLUSART1M$USARTControl$enableTxIntr(void)
#line 400
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 401
    {
      HPLUSART1M$IFG2 &= ~(1 << 5);
      IE2 |= 1 << 5;
    }
#line 404
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 175 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLUARTM$USARTControl$enableTxIntr(void){
#line 175
  unsigned char result;
#line 175

#line 175
  result = HPLUSART1M$USARTControl$enableTxIntr();
#line 175

#line 175
  return result;
#line 175
}
#line 175
static inline   
# 392 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
result_t HPLUSART1M$USARTControl$enableRxIntr(void)
#line 392
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 393
    {
      HPLUSART1M$IFG2 &= ~(1 << 4);
      IE2 |= 1 << 4;
    }
#line 396
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 174 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLUARTM$USARTControl$enableRxIntr(void){
#line 174
  unsigned char result;
#line 174

#line 174
  result = HPLUSART1M$USARTControl$enableRxIntr();
#line 174

#line 174
  return result;
#line 174
}
#line 174
static inline   
# 349 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void HPLUSART1M$USARTControl$setClockRate(uint16_t baudrate, uint8_t mctl)
#line 349
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 350
    {
      HPLUSART1M$l_br = baudrate;
      HPLUSART1M$l_mctl = mctl;
      U1BR0 = baudrate & 0x0FF;
      U1BR1 = (baudrate >> 8) & 0x0FF;
      U1MCTL = mctl;
    }
#line 356
    __nesc_atomic_end(__nesc_atomic); }
}

# 169 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   void HPLUARTM$USARTControl$setClockRate(uint16_t arg_0x8b3dd78, uint8_t arg_0x8b3dec0){
#line 169
  HPLUSART1M$USARTControl$setClockRate(arg_0x8b3dd78, arg_0x8b3dec0);
#line 169
}
#line 169
static inline   
# 341 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void HPLUSART1M$USARTControl$setClockSource(uint8_t source)
#line 341
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 342
    {
      HPLUSART1M$l_ssel = source | 0x80;
      HPLUSART1M$U1TCTL &= ~(((0x00 | 0x10) | 0x20) | 0x30);
      HPLUSART1M$U1TCTL |= HPLUSART1M$l_ssel & 0x7F;
    }
#line 346
    __nesc_atomic_end(__nesc_atomic); }
}

# 167 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   void HPLUARTM$USARTControl$setClockSource(uint8_t arg_0x8b3d958){
#line 167
  HPLUSART1M$USARTControl$setClockSource(arg_0x8b3d958);
#line 167
}
#line 167
static inline 
# 252 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void HPLUSART1M$setUARTModeCommon(void)
#line 252
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 253
    {
      U1CTL = 0x01;
      U1CTL |= 0x10;

      U1RCTL &= ~0x08;

      U1CTL = 0x01;
      U1CTL |= 0x10;

      if (HPLUSART1M$l_ssel & 0x80) {
          HPLUSART1M$U1TCTL &= ~(((0x00 | 0x10) | 0x20) | 0x30);
          HPLUSART1M$U1TCTL |= HPLUSART1M$l_ssel & 0x7F;
        }
      else {
          HPLUSART1M$U1TCTL &= ~(((0x00 | 0x10) | 0x20) | 0x30);
          HPLUSART1M$U1TCTL |= 0x10;
        }

      if (HPLUSART1M$l_mctl != 0 || HPLUSART1M$l_br != 0) {
          U1BR0 = HPLUSART1M$l_br & 0x0FF;
          U1BR1 = (HPLUSART1M$l_br >> 8) & 0x0FF;
          U1MCTL = HPLUSART1M$l_mctl;
        }
      else {
          U1BR0 = 0x03;
          U1BR1 = 0x00;
          U1MCTL = 0x4A;
        }

      HPLUSART1M$ME2 &= ~(1 << 4);
      HPLUSART1M$ME2 |= (1 << 5) | (1 << 4);

      U1CTL &= ~0x01;

      HPLUSART1M$IFG2 &= ~((1 << 5) | (1 << 4));
      IE2 &= ~((1 << 5) | (1 << 4));
    }
#line 289
    __nesc_atomic_end(__nesc_atomic); }
  return;
}

static inline 
# 40 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SEL_URXD1_MODFUNC(void)
#line 40
{
   
#line 40
  static volatile uint8_t r __asm ("0x001B");

#line 40
  r |= 1 << 7;
}

static inline 
#line 39
void TOSH_SEL_UTXD1_MODFUNC(void)
#line 39
{
   
#line 39
  static volatile uint8_t r __asm ("0x001B");

#line 39
  r |= 1 << 6;
}

static inline 
#line 40
void TOSH_SEL_URXD1_IOFUNC(void)
#line 40
{
   
#line 40
  static volatile uint8_t r __asm ("0x001B");

#line 40
  r &= ~(1 << 7);
}

static inline 
#line 39
void TOSH_SEL_UTXD1_IOFUNC(void)
#line 39
{
   
#line 39
  static volatile uint8_t r __asm ("0x001B");

#line 39
  r &= ~(1 << 6);
}

static inline   
# 158 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void HPLUSART1M$USARTControl$disableUART(void)
#line 158
{
  HPLUSART1M$ME2 &= ~((1 << 5) | (1 << 4));
  TOSH_SEL_UTXD1_IOFUNC();
  TOSH_SEL_URXD1_IOFUNC();
}

static inline 
# 41 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SEL_UCLK1_IOFUNC(void)
#line 41
{
   
#line 41
  static volatile uint8_t r __asm ("0x0033");

#line 41
  r &= ~(1 << 3);
}

static inline 
#line 42
void TOSH_SEL_SOMI1_IOFUNC(void)
#line 42
{
   
#line 42
  static volatile uint8_t r __asm ("0x0033");

#line 42
  r &= ~(1 << 2);
}

static inline 
#line 43
void TOSH_SEL_SIMO1_IOFUNC(void)
#line 43
{
   
#line 43
  static volatile uint8_t r __asm ("0x0033");

#line 43
  r &= ~(1 << 1);
}

static inline   
# 191 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void HPLUSART1M$USARTControl$disableSPI(void)
#line 191
{
  HPLUSART1M$ME2 &= ~(1 << 4);
  TOSH_SEL_SIMO1_IOFUNC();
  TOSH_SEL_SOMI1_IOFUNC();
  TOSH_SEL_UCLK1_IOFUNC();
}

static inline   
#line 107
bool HPLUSART1M$USARTControl$isI2C(void)
#line 107
{
  return FALSE;
}

static inline   
#line 64
bool HPLUSART1M$USARTControl$isSPI(void)
#line 64
{
  bool _ret = FALSE;

#line 66
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 66
    {
      if (HPLUSART1M$ME2 & (1 << 4)) {
        _ret = TRUE;
        }
    }
#line 70
    __nesc_atomic_end(__nesc_atomic); }
#line 70
  return _ret;
}

static inline 
# 40 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
bool TOSH_IS_URXD1_IOFUNC(void)
#line 40
{
   
#line 40
  static volatile uint8_t r __asm ("0x001B");

#line 40
  return r | ~(1 << 7);
}

static inline 
#line 39
bool TOSH_IS_UTXD1_MODFUNC(void)
#line 39
{
   
#line 39
  static volatile uint8_t r __asm ("0x001B");

#line 39
  return r & (1 << 6);
}

static inline   
# 84 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
bool HPLUSART1M$USARTControl$isUARTtx(void)
#line 84
{
  bool _ret = FALSE;

#line 86
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 86
    {

      if (
#line 87
      HPLUSART1M$ME2 & (1 << 5) && 
      TOSH_IS_UTXD1_MODFUNC() && 
      TOSH_IS_URXD1_IOFUNC()) {
        _ret = TRUE;
        }
    }
#line 92
    __nesc_atomic_end(__nesc_atomic); }
#line 92
  return _ret;
}

static inline 
# 39 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
bool TOSH_IS_UTXD1_IOFUNC(void)
#line 39
{
   
#line 39
  static volatile uint8_t r __asm ("0x001B");

#line 39
  return r | ~(1 << 6);
}

static inline 
#line 40
bool TOSH_IS_URXD1_MODFUNC(void)
#line 40
{
   
#line 40
  static volatile uint8_t r __asm ("0x001B");

#line 40
  return r & (1 << 7);
}

static inline   
# 95 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
bool HPLUSART1M$USARTControl$isUARTrx(void)
#line 95
{
  bool _ret = FALSE;

#line 97
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 97
    {

      if (
#line 98
      HPLUSART1M$ME2 & (1 << 4) && 
      TOSH_IS_URXD1_MODFUNC() && 
      TOSH_IS_UTXD1_IOFUNC()) {
        _ret = TRUE;
        }
    }
#line 103
    __nesc_atomic_end(__nesc_atomic); }
#line 103
  return _ret;
}

static inline   
#line 73
bool HPLUSART1M$USARTControl$isUART(void)
#line 73
{
  bool _ret = FALSE;

#line 75
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 75
    {

      if (
#line 76
      HPLUSART1M$ME2 & (1 << 5) && HPLUSART1M$ME2 & (1 << 4) && 
      TOSH_IS_URXD1_MODFUNC() && 
      TOSH_IS_UTXD1_MODFUNC()) {
        _ret = TRUE;
        }
    }
#line 81
    __nesc_atomic_end(__nesc_atomic); }
#line 81
  return _ret;
}

static inline   
#line 111
msp430_usartmode_t HPLUSART1M$USARTControl$getMode(void)
#line 111
{
  if (HPLUSART1M$USARTControl$isUART()) {
    return USART_UART;
    }
  else {
#line 114
    if (HPLUSART1M$USARTControl$isUARTrx()) {
      return USART_UART_RX;
      }
    else {
#line 116
      if (HPLUSART1M$USARTControl$isUARTtx()) {
        return USART_UART_TX;
        }
      else {
#line 118
        if (HPLUSART1M$USARTControl$isSPI()) {
          return USART_SPI;
          }
        else {
#line 120
          if (HPLUSART1M$USARTControl$isI2C()) {
            return USART_I2C;
            }
          else {
#line 123
            return USART_NONE;
            }
          }
        }
      }
    }
}

static inline   
#line 325
void HPLUSART1M$USARTControl$setModeUART(void)
#line 325
{

  if (HPLUSART1M$USARTControl$getMode() == USART_UART) {
    return;
    }
  HPLUSART1M$USARTControl$disableSPI();
  HPLUSART1M$USARTControl$disableUART();

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 333
    {
      TOSH_SEL_UTXD1_MODFUNC();
      TOSH_SEL_URXD1_MODFUNC();
    }
#line 336
    __nesc_atomic_end(__nesc_atomic); }
  HPLUSART1M$setUARTModeCommon();
  return;
}

# 153 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   void HPLUARTM$USARTControl$setModeUART(void){
#line 153
  HPLUSART1M$USARTControl$setModeUART();
#line 153
}
#line 153
static inline   
# 50 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUARTM.nc"
result_t HPLUARTM$UART$init(void)
#line 50
{

  HPLUARTM$USARTControl$setModeUART();
#line 64
  HPLUARTM$USARTControl$setClockSource(0x20);
  HPLUARTM$USARTControl$setClockRate(UBR_SMCLK_57600, UMCTL_SMCLK_57600);
#line 77
  HPLUARTM$USARTControl$enableRxIntr();
  HPLUARTM$USARTControl$enableTxIntr();
  return SUCCESS;
}

# 62 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t ConsoleC$HPLUART$init(void){
#line 62
  unsigned char result;
#line 62

#line 62
  result = HPLUARTM$UART$init();
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
# 54 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
result_t BusArbitrationM$StdControl$init(void)
#line 54
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 55
    {
      BusArbitrationM$state = BusArbitrationM$BUS_OFF;
      BusArbitrationM$isBusReleasedPending = FALSE;
    }
#line 58
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 63 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t MainM$StdControl$init(void){
#line 63
  unsigned char result;
#line 63

#line 63
  result = BusArbitrationM$StdControl$init();
#line 63
  result = rcombine(result, StressTestC$StdControl$init());
#line 63
  result = rcombine(result, HALSTM25PM$StdControl$init());
#line 63
  result = rcombine(result, HPLSTM25PM$StdControl$init());
#line 63
  result = rcombine(result, TimerM$StdControl$init());
#line 63
  result = rcombine(result, ChunkStorageC$StdControl$init());
#line 63

#line 63
  return result;
#line 63
}
#line 63
static inline 
# 12 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_MAKE_RED_LED_OUTPUT(void)
#line 12
{
   
#line 12
  static volatile uint8_t r __asm ("0x0032");

#line 12
  r |= 1 << 4;
}

static inline 
#line 14
void TOSH_MAKE_YELLOW_LED_OUTPUT(void)
#line 14
{
   
#line 14
  static volatile uint8_t r __asm ("0x0032");

#line 14
  r |= 1 << 6;
}

static inline 
#line 13
void TOSH_MAKE_GREEN_LED_OUTPUT(void)
#line 13
{
   
#line 13
  static volatile uint8_t r __asm ("0x0032");

#line 13
  r |= 1 << 5;
}

static inline 
#line 12
void TOSH_SET_RED_LED_PIN(void)
#line 12
{
   
#line 12
  static volatile uint8_t r __asm ("0x0031");

#line 12
  r |= 1 << 4;
}

static inline 
#line 14
void TOSH_SET_YELLOW_LED_PIN(void)
#line 14
{
   
#line 14
  static volatile uint8_t r __asm ("0x0031");

#line 14
  r |= 1 << 6;
}

static inline 
#line 13
void TOSH_SET_GREEN_LED_PIN(void)
#line 13
{
   
#line 13
  static volatile uint8_t r __asm ("0x0031");

#line 13
  r |= 1 << 5;
}

static inline   
# 408 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
result_t HPLUSART1M$USARTControl$tx(uint8_t data)
#line 408
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 409
    {
      HPLUSART1M$U1TXBUF = data;
    }
#line 411
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 202 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLUARTM$USARTControl$tx(uint8_t arg_0x8b39898){
#line 202
  unsigned char result;
#line 202

#line 202
  result = HPLUSART1M$USARTControl$tx(arg_0x8b39898);
#line 202

#line 202
  return result;
#line 202
}
#line 202
static inline   
# 98 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUARTM.nc"
result_t HPLUARTM$UART$put(uint8_t data)
#line 98
{
  return HPLUARTM$USARTControl$tx(data);
}

# 80 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t ConsoleC$HPLUART$put(uint8_t arg_0x8bc3f18){
#line 80
  unsigned char result;
#line 80

#line 80
  result = HPLUARTM$UART$put(arg_0x8bc3f18);
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
# 84 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
result_t TimerM$StdControl$start(void)
{
  return SUCCESS;
}

static inline   
# 452 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTControl$disableTxIntr(void)
#line 452
{
  HPLUSART0M$IE1 &= ~(1 << 7);
  return SUCCESS;
}

# 173 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLSTM25PM$USARTControl$disableTxIntr(void){
#line 173
  unsigned char result;
#line 173

#line 173
  result = HPLUSART0M$USARTControl$disableTxIntr();
#line 173

#line 173
  return result;
#line 173
}
#line 173
static inline   
# 447 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTControl$disableRxIntr(void)
#line 447
{
  HPLUSART0M$IE1 &= ~(1 << 6);
  return SUCCESS;
}

# 172 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLSTM25PM$USARTControl$disableRxIntr(void){
#line 172
  unsigned char result;
#line 172

#line 172
  result = HPLUSART0M$USARTControl$disableRxIntr();
#line 172

#line 172
  return result;
#line 172
}
#line 172
static inline 
# 36 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SEL_UCLK0_MODFUNC(void)
#line 36
{
   
#line 36
  static volatile uint8_t r __asm ("0x001B");

#line 36
  r |= 1 << 3;
}

static inline 
#line 34
void TOSH_SEL_SOMI0_MODFUNC(void)
#line 34
{
   
#line 34
  static volatile uint8_t r __asm ("0x001B");

#line 34
  r |= 1 << 2;
}

static inline 
#line 35
void TOSH_SEL_SIMO0_MODFUNC(void)
#line 35
{
   
#line 35
  static volatile uint8_t r __asm ("0x001B");

#line 35
  r |= 1 << 1;
}

static inline   
# 218 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
void HPLUSART0M$USARTControl$disableI2C(void)
#line 218
{

  if (HPLUSART0M$USARTControl$isI2C()) {
    { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 221
      U0CTL &= ~((0x20 | 0x01) | 0x04);
#line 221
      __nesc_atomic_end(__nesc_atomic); }
    }
}

static inline 
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
void TOSH_SEL_URXD0_IOFUNC(void)
#line 38
{
   
#line 38
  static volatile uint8_t r __asm ("0x001B");

#line 38
  r &= ~(1 << 5);
}

static inline 
#line 37
void TOSH_SEL_UTXD0_IOFUNC(void)
#line 37
{
   
#line 37
  static volatile uint8_t r __asm ("0x001B");

#line 37
  r &= ~(1 << 4);
}

static inline   
# 172 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
void HPLUSART0M$USARTControl$disableUART(void)
#line 172
{
  HPLUSART0M$ME1 &= ~((1 << 7) | (1 << 6));
  TOSH_SEL_UTXD0_IOFUNC();
  TOSH_SEL_URXD0_IOFUNC();
}

static inline   
#line 72
bool HPLUSART0M$USARTControl$isSPI(void)
#line 72
{
  bool _ret = FALSE;

#line 74
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 74
    {
      if (HPLUSART0M$ME1 & (1 << 6)) {
        _ret = TRUE;
        }
    }
#line 78
    __nesc_atomic_end(__nesc_atomic); }
#line 78
  return _ret;
}

static inline 
# 38 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
bool TOSH_IS_URXD0_IOFUNC(void)
#line 38
{
   
#line 38
  static volatile uint8_t r __asm ("0x001B");

#line 38
  return r | ~(1 << 5);
}

static inline 
#line 37
bool TOSH_IS_UTXD0_MODFUNC(void)
#line 37
{
   
#line 37
  static volatile uint8_t r __asm ("0x001B");

#line 37
  return r & (1 << 4);
}

static inline   
# 92 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
bool HPLUSART0M$USARTControl$isUARTtx(void)
#line 92
{
  bool _ret = FALSE;

#line 94
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 94
    {

      if (
#line 95
      HPLUSART0M$ME1 & (1 << 7) && 
      TOSH_IS_UTXD0_MODFUNC() && 
      TOSH_IS_URXD0_IOFUNC()) {
        _ret = TRUE;
        }
    }
#line 100
    __nesc_atomic_end(__nesc_atomic); }
#line 100
  return _ret;
}

static inline 
# 37 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/hardware.h"
bool TOSH_IS_UTXD0_IOFUNC(void)
#line 37
{
   
#line 37
  static volatile uint8_t r __asm ("0x001B");

#line 37
  return r | ~(1 << 4);
}

static inline 
#line 38
bool TOSH_IS_URXD0_MODFUNC(void)
#line 38
{
   
#line 38
  static volatile uint8_t r __asm ("0x001B");

#line 38
  return r & (1 << 5);
}

static inline   
# 103 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
bool HPLUSART0M$USARTControl$isUARTrx(void)
#line 103
{
  bool _ret = FALSE;

#line 105
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 105
    {

      if (
#line 106
      HPLUSART0M$ME1 & (1 << 6) && 
      TOSH_IS_URXD0_MODFUNC() && 
      TOSH_IS_UTXD0_IOFUNC()) {
        _ret = TRUE;
        }
    }
#line 111
    __nesc_atomic_end(__nesc_atomic); }
#line 111
  return _ret;
}

static inline   
#line 81
bool HPLUSART0M$USARTControl$isUART(void)
#line 81
{
  bool _ret = FALSE;

#line 83
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 83
    {

      if (
#line 84
      HPLUSART0M$ME1 & (1 << 7) && HPLUSART0M$ME1 & (1 << 6) && 
      TOSH_IS_URXD0_MODFUNC() && 
      TOSH_IS_UTXD0_MODFUNC()) {
        _ret = TRUE;
        }
    }
#line 89
    __nesc_atomic_end(__nesc_atomic); }
#line 89
  return _ret;
}

static inline   
#line 125
msp430_usartmode_t HPLUSART0M$USARTControl$getMode(void)
#line 125
{
  if (HPLUSART0M$USARTControl$isUART()) {
    return USART_UART;
    }
  else {
#line 128
    if (HPLUSART0M$USARTControl$isUARTrx()) {
      return USART_UART_RX;
      }
    else {
#line 130
      if (HPLUSART0M$USARTControl$isUARTtx()) {
        return USART_UART_TX;
        }
      else {
#line 132
        if (HPLUSART0M$USARTControl$isSPI()) {
          return USART_SPI;
          }
        else {
#line 134
          if (HPLUSART0M$USARTControl$isI2C()) {
            return USART_I2C;
            }
          else {
#line 137
            return USART_NONE;
            }
          }
        }
      }
    }
}

static inline   
#line 225
void HPLUSART0M$USARTControl$setModeSPI(void)
#line 225
{

  if (HPLUSART0M$USARTControl$getMode() == USART_SPI) {
    return;
    }
  HPLUSART0M$USARTControl$disableUART();
  HPLUSART0M$USARTControl$disableI2C();

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 233
    {
      TOSH_SEL_SIMO0_MODFUNC();
      TOSH_SEL_SOMI0_MODFUNC();
      TOSH_SEL_UCLK0_MODFUNC();

      HPLUSART0M$IE1 &= ~((1 << 7) | (1 << 6));

      U0CTL = 0x01;
      U0CTL |= (0x10 | 0x04) | 0x02;
      U0CTL &= ~0x20;

      HPLUSART0M$U0TCTL = 0x02;
      HPLUSART0M$U0TCTL |= 0x80;

      if (HPLUSART0M$l_ssel & 0x80) {
          HPLUSART0M$U0TCTL &= ~(((0x00 | 0x10) | 0x20) | 0x30);
          HPLUSART0M$U0TCTL |= HPLUSART0M$l_ssel & 0x7F;
        }
      else {
          HPLUSART0M$U0TCTL &= ~(((0x00 | 0x10) | 0x20) | 0x30);
          HPLUSART0M$U0TCTL |= 0x20;
        }

      if (HPLUSART0M$l_br != 0) {
          U0BR0 = HPLUSART0M$l_br & 0x0FF;
          U0BR1 = (HPLUSART0M$l_br >> 8) & 0x0FF;
        }
      else {
          U0BR0 = 0x02;
          U0BR1 = 0x00;
        }
      U0MCTL = 0;

      HPLUSART0M$ME1 &= ~((1 << 7) | (1 << 6));
      HPLUSART0M$ME1 |= 1 << 6;
      U0CTL &= ~0x01;

      HPLUSART0M$IFG1 &= ~((1 << 7) | (1 << 6));
      HPLUSART0M$IE1 &= ~((1 << 7) | (1 << 6));
    }
#line 272
    __nesc_atomic_end(__nesc_atomic); }
  return;
}

# 135 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   void HPLSTM25PM$USARTControl$setModeSPI(void){
#line 135
  HPLUSART0M$USARTControl$setModeSPI();
#line 135
}
#line 135
static inline  
# 46 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
result_t HPLSTM25PM$StdControl$start(void)
#line 46
{
  HPLSTM25PM$USARTControl$setModeSPI();
  HPLSTM25PM$USARTControl$disableRxIntr();
  HPLSTM25PM$USARTControl$disableTxIntr();
  return SUCCESS;
}

static inline  
# 60 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
result_t HALSTM25PM$StdControl$start(void)
#line 60
{
#line 60
  return SUCCESS;
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
inline static  void RootDirectoryM$RootDirectory$initDone(result_t arg_0x8a60fc8){
#line 33
  CheckpointC$RootDirectory$initDone(arg_0x8a60fc8);
#line 33
  StressTestC$RootDirectory$initDone(arg_0x8a60fc8);
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

# 10 "../../tos/interfaces/Console.nc"
inline static  result_t RootDirectoryM$Console$string(char *arg_0x8a44ec8){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8a44ec8);
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


  RootDirectoryM$page = 0;
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
# 62 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
result_t BusArbitrationM$StdControl$start(void)
#line 62
{
  uint8_t _state;

#line 64
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 64
    {
      if (BusArbitrationM$state == BusArbitrationM$BUS_OFF) {
          BusArbitrationM$state = BusArbitrationM$BUS_IDLE;
          BusArbitrationM$isBusReleasedPending = FALSE;
        }
      _state = BusArbitrationM$state;
    }
#line 70
    __nesc_atomic_end(__nesc_atomic); }

  if (_state == BusArbitrationM$BUS_IDLE) {
    return SUCCESS;
    }
  return FAIL;
}

# 70 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/StdControl.nc"
inline static  result_t MainM$StdControl$start(void){
#line 70
  unsigned char result;
#line 70

#line 70
  result = BusArbitrationM$StdControl$start();
#line 70
  result = rcombine(result, StressTestC$StdControl$start());
#line 70
  result = rcombine(result, HALSTM25PM$StdControl$start());
#line 70
  result = rcombine(result, HPLSTM25PM$StdControl$start());
#line 70
  result = rcombine(result, TimerM$StdControl$start());
#line 70
  result = rcombine(result, ChunkStorageC$StdControl$start());
#line 70

#line 70
  return result;
#line 70
}
#line 70
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
inline static  void RootDirectoryM$RootDirectory$restore(flashptr_t *arg_0x8a7c700){
#line 49
  CheckpointC$RootDirectory$restore(arg_0x8a7c700);
#line 49
  StressTestC$RootDirectory$restore(arg_0x8a7c700);
#line 49
}
#line 49
# 29 "../../tos/interfaces/Crc8.nc"
inline static  uint8_t RootDirectoryM$Crc8$crc8(uint8_t *arg_0x8a8d560, uint16_t arg_0x8a8d6b0, uint8_t arg_0x8a8d7f8){
#line 29
  unsigned char result;
#line 29

#line 29
  result = Crc8C$Crc8$crc8(arg_0x8a8d560, arg_0x8a8d6b0, arg_0x8a8d7f8);
#line 29

#line 29
  return result;
#line 29
}
#line 29
# 11 "../../tos/interfaces/Console.nc"
inline static  result_t RootDirectoryM$Console$decimal(int32_t arg_0x8a452c8){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8a452c8);
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

          if (RootDirectoryM$page == (0 + 2) * 256) 
            {

              if (RootDirectoryM$besttime == 0) 
                {


                  RootDirectoryM$page = 0;
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
      if (RootDirectoryM$page == (0 + 2) * 256) 
        {
          RootDirectoryM$page = 0;
        }

      if (!(RootDirectoryM$page % 256)) {
        TOS_post(RootDirectoryM$eraser);
        }

      TOS_post(RootDirectoryM$signalInit);
      RootDirectoryM$RootDirectory$restore(RootDirectoryM$root.root);

      break;
    }

  return SUCCESS;
}

static inline   
# 169 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$default$readDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 46 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$readDone(uint8_t arg_0x8ac5830, result_t arg_0x8a34438){
#line 46
  unsigned char result;
#line 46

#line 46
  switch (arg_0x8ac5830) {
#line 46
    case 0:
#line 46
      result = ChunkStorageC$GenericFlash$readDone(arg_0x8a34438);
#line 46
      break;
#line 46
    case 1:
#line 46
      result = StressTestC$GenericFlash$readDone(arg_0x8a34438);
#line 46
      break;
#line 46
    case 3:
#line 46
      result = RootDirectoryM$GenericFlash$readDone(arg_0x8a34438);
#line 46
      break;
#line 46
    default:
#line 46
      result = FlashM$GenericFlash$default$readDone(arg_0x8ac5830, arg_0x8a34438);
#line 46
    }
#line 46

#line 46
  return result;
#line 46
}
#line 46
static inline  
# 68 "../../tos/platform/telosb/FlashM.nc"
void FlashM$readSignal(void)
{
  FlashM$GenericFlash$readDone(FlashM$Tid, SUCCESS);
}

static inline  
# 177 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
result_t HALSTM25PM$HALSTM25P$read(volume_t volume, stm25p_addr_t addr, void *data, stm25p_addr_t len)
#line 177
{
  return HALSTM25PM$newRequest(STM25P_READ, volume, addr, data, len);
}

# 32 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  result_t FlashM$HALSTM25P$read(stm25p_addr_t arg_0x8ab9260, void *arg_0x8ab93b8, stm25p_addr_t arg_0x8ab9508){
#line 32
  unsigned char result;
#line 32

#line 32
  result = HALSTM25PM$HALSTM25P$read(2, arg_0x8ab9260, arg_0x8ab93b8, arg_0x8ab9508);
#line 32

#line 32
  return result;
#line 32
}
#line 32
static inline  
# 122 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$read(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *buff, offsetptr_t app_len)
{
  uint32_t accessLocation = page * 256 + offset;

  FlashM$Tid = id;

  if (SUCCESS != FlashM$HALSTM25P$read(accessLocation, buff, app_len)) 
    {
      return FAIL;
    }
  else 
    {
      TOS_post(FlashM$readSignal);
    }

  return SUCCESS;
}

# 44 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t RootDirectoryM$GenericFlash$read(pageptr_t arg_0x8a37bc0, offsetptr_t arg_0x8a37d10, void *arg_0x8a37e80, datalen_t arg_0x8a34010){
#line 44
  unsigned char result;
#line 44

#line 44
  result = FlashM$GenericFlash$read(3, arg_0x8a37bc0, arg_0x8a37d10, arg_0x8a37e80, arg_0x8a34010);
#line 44

#line 44
  return result;
#line 44
}
#line 44
static inline 
# 113 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
void TimerM$removeTimer(uint8_t num)
{
  TimerM$m_timers[num].isset = FALSE;
}

static inline  
#line 457
result_t TimerM$Timer$stop(uint8_t num)
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 459
    TimerM$removeTimer(num);
#line 459
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

# 68 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Timer.nc"
inline static  result_t HALSTM25PM$Timer$stop(void){
#line 68
  unsigned char result;
#line 68

#line 68
  result = TimerM$Timer$stop(0);
#line 68

#line 68
  return result;
#line 68
}
#line 68
static inline 
# 93 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$powerOn(void)
#line 93
{
  HALSTM25PM$sendCmd(STM25P_RES, 0, &HALSTM25PM$signature, sizeof HALSTM25PM$signature);
  TOSH_uwait(2);
  HALSTM25PM$curCmd = HALSTM25PM$S_POWERON;
}

static inline   
# 80 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
void HPLSTM25PM$HPLSTM25P$unhold(void)
#line 80
{
  TOSH_SET_FLASH_HOLD_PIN();
}

static inline   
#line 66
void HPLSTM25PM$HPLSTM25P$beginCmd(void)
#line 66
{
  TOSH_CLR_FLASH_CS_PIN();
  HPLSTM25PM$HPLSTM25P$unhold();
}

# 31 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HPLSTM25P.nc"
inline static   void HALSTM25PM$HPLSTM25P$beginCmd(void){
#line 31
  HPLSTM25PM$HPLSTM25P$beginCmd();
#line 31
}
#line 31




inline static   void HALSTM25PM$HPLSTM25P$txBuf(void *arg_0x8af7948, stm25p_addr_t arg_0x8af7a98){
#line 35
  HPLSTM25PM$HPLSTM25P$txBuf(arg_0x8af7948, arg_0x8af7a98);
#line 35
}
#line 35
static inline 
# 66 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/crc.h"
uint16_t crcByte(uint16_t fcs, uint8_t c)
{
  fcs = ccitt_crc16_table[((fcs >> 8) ^ c) & 0xffU] ^ (fcs << 8);
  return fcs;
}

static inline   
# 478 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
uint8_t HPLUSART0M$USARTControl$rx(void)
#line 478
{
  uint8_t value;

#line 480
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 480
    {
      value = U0RXBUF;
    }
#line 482
    __nesc_atomic_end(__nesc_atomic); }
  return value;
}

# 209 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   uint8_t HPLSTM25PM$USARTControl$rx(void){
#line 209
  unsigned char result;
#line 209

#line 209
  result = HPLUSART0M$USARTControl$rx();
#line 209

#line 209
  return result;
#line 209
}
#line 209
static inline   
# 439 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTControl$isRxIntrPending(void)
#line 439
{
  if (HPLUSART0M$IFG1 & (1 << 6)) {
      HPLUSART0M$IFG1 &= ~(1 << 6);
      return SUCCESS;
    }
  return FAIL;
}

# 185 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLSTM25PM$USARTControl$isRxIntrPending(void){
#line 185
  unsigned char result;
#line 185

#line 185
  result = HPLUSART0M$USARTControl$isRxIntrPending();
#line 185

#line 185
  return result;
#line 185
}
#line 185
static inline   
# 473 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTControl$tx(uint8_t data)
#line 473
{
  HPLUSART0M$U0TXBUF = data;
  return SUCCESS;
}

# 202 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLSTM25PM$USARTControl$tx(uint8_t arg_0x8b39898){
#line 202
  unsigned char result;
#line 202

#line 202
  result = HPLUSART0M$USARTControl$tx(arg_0x8b39898);
#line 202

#line 202
  return result;
#line 202
}
#line 202
static inline   
# 424 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTControl$isTxIntrPending(void)
#line 424
{
  if (HPLUSART0M$IFG1 & (1 << 7)) {
      HPLUSART0M$IFG1 &= ~(1 << 7);
      return SUCCESS;
    }
  return FAIL;
}

# 180 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLSTM25PM$USARTControl$isTxIntrPending(void){
#line 180
  unsigned char result;
#line 180

#line 180
  result = HPLUSART0M$USARTControl$isTxIntrPending();
#line 180

#line 180
  return result;
#line 180
}
#line 180
static inline   
# 96 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
uint16_t HPLSTM25PM$HPLSTM25P$rxBuf(void *buf, stm25p_addr_t len, uint16_t crc)
#line 96
{

  uint8_t *tmpBuf = buf;
  uint8_t tmp;

  HPLSTM25PM$USARTControl$rx();
  HPLSTM25PM$USARTControl$tx(0);
  for (; len > 0; len--) {
      { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 104
        {
          while (!HPLSTM25PM$USARTControl$isTxIntrPending()) ;
          HPLSTM25PM$USARTControl$tx(0);
          while (!HPLSTM25PM$USARTControl$isRxIntrPending()) ;
          tmp = HPLSTM25PM$USARTControl$rx();
        }
#line 109
        __nesc_atomic_end(__nesc_atomic); }
      if (buf != NULL) {
        * tmpBuf++ = tmp;
        }
      else {
#line 113
        crc = crcByte(crc, tmp);
        }
    }
  return crc;
}

# 36 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HPLSTM25P.nc"
inline static   uint16_t HALSTM25PM$HPLSTM25P$rxBuf(void *arg_0x8af7ec8, stm25p_addr_t arg_0x8af4030, uint16_t arg_0x8af4180){
#line 36
  unsigned int result;
#line 36

#line 36
  result = HPLSTM25PM$HPLSTM25P$rxBuf(arg_0x8af7ec8, arg_0x8af4030, arg_0x8af4180);
#line 36

#line 36
  return result;
#line 36
}
#line 36
static inline   
# 432 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTControl$isTxEmpty(void)
#line 432
{
  if (HPLUSART0M$U0TCTL & 0x01) {
      return SUCCESS;
    }
  return FAIL;
}

# 191 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTControl.nc"
inline static   result_t HPLSTM25PM$USARTControl$isTxEmpty(void){
#line 191
  unsigned char result;
#line 191

#line 191
  result = HPLUSART0M$USARTControl$isTxEmpty();
#line 191

#line 191
  return result;
#line 191
}
#line 191
static inline   
# 71 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
void HPLSTM25PM$HPLSTM25P$endCmd(void)
#line 71
{
  while (!HPLSTM25PM$USARTControl$isTxEmpty()) ;
  TOSH_SET_FLASH_CS_PIN();
}

# 32 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HPLSTM25P.nc"
inline static   void HALSTM25PM$HPLSTM25P$endCmd(void){
#line 32
  HPLSTM25PM$HPLSTM25P$endCmd();
#line 32
}
#line 32
static inline   
# 166 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$TimerB$read(void)
#line 166
{
#line 166
  return TBR;
}

# 30 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
inline static   uint16_t TimerM$AlarmTimer$read(void){
#line 30
  unsigned int result;
#line 30

#line 30
  result = MSP430TimerM$TimerB$read();
#line 30

#line 30
  return result;
#line 30
}
#line 30
static inline   
# 169 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
bool MSP430TimerM$TimerB$isOverflowPending(void)
#line 169
{
#line 169
  return TBCTL & 0x0001;
}

# 31 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
inline static   bool TimerM$AlarmTimer$isOverflowPending(void){
#line 31
  unsigned char result;
#line 31

#line 31
  result = MSP430TimerM$TimerB$isOverflowPending();
#line 31

#line 31
  return result;
#line 31
}
#line 31
static inline  
# 156 "../../tos/platform/telosb/FlashM.nc"
void FlashM$HALSTM25P$writeSRDone(void)
{
}

static inline   
# 216 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$HALSTM25P$default$writeSRDone(volume_t volume)
#line 216
{
}

# 46 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  void HALSTM25PM$HALSTM25P$writeSRDone(volume_t arg_0x8a6d020){
#line 46
  switch (arg_0x8a6d020) {
#line 46
    case 2:
#line 46
      FlashM$HALSTM25P$writeSRDone();
#line 46
      break;
#line 46
    default:
#line 46
      HALSTM25PM$HALSTM25P$default$writeSRDone(arg_0x8a6d020);
#line 46
    }
#line 46
}
#line 46
static inline  
# 153 "../../tos/platform/telosb/FlashM.nc"
void FlashM$HALSTM25P$bulkEraseDone(void)
{
}

static inline   
# 215 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$HALSTM25P$default$bulkEraseDone(volume_t volume)
#line 215
{
}

# 41 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  void HALSTM25PM$HALSTM25P$bulkEraseDone(volume_t arg_0x8a6d020){
#line 41
  switch (arg_0x8a6d020) {
#line 41
    case 2:
#line 41
      FlashM$HALSTM25P$bulkEraseDone();
#line 41
      break;
#line 41
    default:
#line 41
      HALSTM25PM$HALSTM25P$default$bulkEraseDone(arg_0x8a6d020);
#line 41
    }
#line 41
}
#line 41
# 11 "../../tos/interfaces/Console.nc"
inline static  result_t StressTestC$Console$decimal(int32_t arg_0x8a452c8){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8a452c8);
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
# 174 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$default$eraseDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 49 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$eraseDone(uint8_t arg_0x8ac5830, result_t arg_0x8a34c50){
#line 49
  unsigned char result;
#line 49

#line 49
  switch (arg_0x8ac5830) {
#line 49
    case 0:
#line 49
      result = ChunkStorageC$GenericFlash$eraseDone(arg_0x8a34c50);
#line 49
      break;
#line 49
    case 1:
#line 49
      result = StressTestC$GenericFlash$eraseDone(arg_0x8a34c50);
#line 49
      break;
#line 49
    case 3:
#line 49
      result = RootDirectoryM$GenericFlash$eraseDone(arg_0x8a34c50);
#line 49
      break;
#line 49
    default:
#line 49
      result = FlashM$GenericFlash$default$eraseDone(arg_0x8ac5830, arg_0x8a34c50);
#line 49
    }
#line 49

#line 49
  return result;
#line 49
}
#line 49
static inline  
# 148 "../../tos/platform/telosb/FlashM.nc"
void FlashM$HALSTM25P$sectorEraseDone(void)
{
  FlashM$GenericFlash$eraseDone(FlashM$Tid, SUCCESS);
}

static inline   
# 214 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$HALSTM25P$default$sectorEraseDone(volume_t volume)
#line 214
{
}

# 38 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  void HALSTM25PM$HALSTM25P$sectorEraseDone(volume_t arg_0x8a6d020){
#line 38
  switch (arg_0x8a6d020) {
#line 38
    case 2:
#line 38
      FlashM$HALSTM25P$sectorEraseDone();
#line 38
      break;
#line 38
    default:
#line 38
      HALSTM25PM$HALSTM25P$default$sectorEraseDone(arg_0x8a6d020);
#line 38
    }
#line 38
}
#line 38
static inline  
# 292 "StressTestC.nc"
result_t StressTestC$GenericFlash$writeDone(result_t r)
{
  return SUCCESS;
}

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
inline static  void ChunkStorageC$ChunkStorage$flushDone(uint8_t arg_0x8a47388, result_t arg_0x8a3f680){
#line 55
  switch (arg_0x8a47388) {
#line 55
    case 0:
#line 55
      StreamC$ChunkStorage$flushDone(arg_0x8a3f680);
#line 55
      break;
#line 55
    case 1:
#line 55
      StackC$ChunkStorage$flushDone(arg_0x8a3f680);
#line 55
      break;
#line 55
    case 2:
#line 55
      CheckpointC$ChunkStorage$flushDone(arg_0x8a3f680);
#line 55
      break;
#line 55
    case 3:
#line 55
      StressTestC$ChunkStorage$flushDone(arg_0x8a3f680);
#line 55
      break;
#line 55
    default:
#line 55
      ChunkStorageC$ChunkStorage$default$flushDone(arg_0x8a47388, arg_0x8a3f680);
#line 55
    }
#line 55
}
#line 55
static inline 
# 105 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$unlock(void)
{
  ChunkStorageC$chunkbusy = FALSE;
}

static inline  
#line 155
void ChunkStorageC$flushDoneRespond(void)
{








  ChunkStorageC$unlock();
  ChunkStorageC$ChunkStorage$flushDone(ChunkStorageC$if_id, ChunkStorageC$res);
}

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
inline static  void ChunkStorageC$ChunkStorage$writeDone(uint8_t arg_0x8a47388, result_t arg_0x8a3bf00){
#line 40
  switch (arg_0x8a47388) {
#line 40
    case 0:
#line 40
      StreamC$ChunkStorage$writeDone(arg_0x8a3bf00);
#line 40
      break;
#line 40
    case 1:
#line 40
      StackC$ChunkStorage$writeDone(arg_0x8a3bf00);
#line 40
      break;
#line 40
    case 2:
#line 40
      CheckpointC$ChunkStorage$writeDone(arg_0x8a3bf00);
#line 40
      break;
#line 40
    case 3:
#line 40
      StressTestC$ChunkStorage$writeDone(arg_0x8a3bf00);
#line 40
      break;
#line 40
    default:
#line 40
      ChunkStorageC$ChunkStorage$default$writeDone(arg_0x8a47388, arg_0x8a3bf00);
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
#line 514
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
inline static  void RootDirectoryM$RootDirectory$setRootDone(result_t arg_0x8a61938){
#line 37
  CheckpointC$RootDirectory$setRootDone(arg_0x8a61938);
#line 37
  StressTestC$RootDirectory$setRootDone(arg_0x8a61938);
#line 37
}
#line 37
static inline  
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

      if (RootDirectoryM$page == (0 + 2) * 256) 
        {

          RootDirectoryM$page = 0;
        }



      RootDirectoryM$Console$string("Rootdir: Need to erase pg#");
      RootDirectoryM$Console$decimal(RootDirectoryM$page);
      RootDirectoryM$Console$string("\n");

      if (!(RootDirectoryM$page % 256)) {
        TOS_post(RootDirectoryM$eraser);
        }
    }
  RootDirectoryM$unlock();

  RootDirectoryM$RootDirectory$setRootDone(result);

  return SUCCESS;
}

static inline   
# 164 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$default$writeDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 36 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$writeDone(uint8_t arg_0x8ac5830, result_t arg_0x8a36890){
#line 36
  unsigned char result;
#line 36

#line 36
  switch (arg_0x8ac5830) {
#line 36
    case 0:
#line 36
      result = ChunkStorageC$GenericFlash$writeDone(arg_0x8a36890);
#line 36
      break;
#line 36
    case 1:
#line 36
      result = StressTestC$GenericFlash$writeDone(arg_0x8a36890);
#line 36
      break;
#line 36
    case 3:
#line 36
      result = RootDirectoryM$GenericFlash$writeDone(arg_0x8a36890);
#line 36
      break;
#line 36
    default:
#line 36
      result = FlashM$GenericFlash$default$writeDone(arg_0x8ac5830, arg_0x8a36890);
#line 36
    }
#line 36

#line 36
  return result;
#line 36
}
#line 36
static inline  
# 63 "../../tos/platform/telosb/FlashM.nc"
void FlashM$HALSTM25P$pageProgramDone(void)
{
  FlashM$GenericFlash$writeDone(FlashM$Tid, SUCCESS);
}

static inline   
# 213 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$HALSTM25P$default$pageProgramDone(volume_t volume)
#line 213
{
}

# 35 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  void HALSTM25PM$HALSTM25P$pageProgramDone(volume_t arg_0x8a6d020){
#line 35
  switch (arg_0x8a6d020) {
#line 35
    case 2:
#line 35
      FlashM$HALSTM25P$pageProgramDone();
#line 35
      break;
#line 35
    default:
#line 35
      HALSTM25PM$HALSTM25P$default$pageProgramDone(arg_0x8a6d020);
#line 35
    }
#line 35
}
#line 35
# 59 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Timer.nc"
inline static  result_t HALSTM25PM$Timer$start(char arg_0x8b23300, uint32_t arg_0x8b23458){
#line 59
  unsigned char result;
#line 59

#line 59
  result = TimerM$Timer$start(0, arg_0x8b23300, arg_0x8b23458);
#line 59

#line 59
  return result;
#line 59
}
#line 59
static inline 
# 63 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$signalDone(void)
#line 63
{

  uint8_t tmpCmd = HALSTM25PM$curCmd;

#line 66
  HALSTM25PM$curCmd = HALSTM25PM$S_POWERON;

  HALSTM25PM$Timer$start(TIMER_ONE_SHOT, STM25P_POWEROFF_DELAY);

  switch (tmpCmd) {
      case STM25P_PP: HALSTM25PM$HALSTM25P$pageProgramDone(HALSTM25PM$curVolume);
#line 71
      break;
      case STM25P_SE: HALSTM25PM$HALSTM25P$sectorEraseDone(HALSTM25PM$curVolume);
#line 72
      break;
      case STM25P_BE: HALSTM25PM$HALSTM25P$bulkEraseDone(HALSTM25PM$curVolume);
#line 73
      break;
      case STM25P_WRSR: HALSTM25PM$HALSTM25P$writeSRDone(HALSTM25PM$curVolume);
#line 74
      break;
    }
}

# 38 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitration.nc"
inline static   result_t HPLSTM25PM$BusArbitration$releaseBus(void){
#line 38
  unsigned char result;
#line 38

#line 38
  result = BusArbitrationM$BusArbitration$releaseBus(0);
#line 38

#line 38
  return result;
#line 38
}
#line 38
static inline   
# 62 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
result_t HPLSTM25PM$HPLSTM25P$releaseBus(void)
#line 62
{
  return HPLSTM25PM$BusArbitration$releaseBus();
}

# 30 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HPLSTM25P.nc"
inline static   result_t HALSTM25PM$HPLSTM25P$releaseBus(void){
#line 30
  unsigned char result;
#line 30

#line 30
  result = HPLSTM25PM$HPLSTM25P$releaseBus();
#line 30

#line 30
  return result;
#line 30
}
#line 30
# 37 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitration.nc"
inline static   result_t HPLSTM25PM$BusArbitration$getBus(void){
#line 37
  unsigned char result;
#line 37

#line 37
  result = BusArbitrationM$BusArbitration$getBus(0);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline   
# 58 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
result_t HPLSTM25PM$HPLSTM25P$getBus(void)
#line 58
{
  return HPLSTM25PM$BusArbitration$getBus();
}

# 29 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HPLSTM25P.nc"
inline static   result_t HALSTM25PM$HPLSTM25P$getBus(void){
#line 29
  unsigned char result;
#line 29

#line 29
  result = HPLSTM25PM$HPLSTM25P$getBus();
#line 29

#line 29
  return result;
#line 29
}
#line 29
static inline 
# 79 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
bool HALSTM25PM$isWriting(void)
#line 79
{
  uint8_t status;

#line 81
  if (HALSTM25PM$HPLSTM25P$getBus() == FAIL) {
    return TRUE;
    }
#line 83
  HALSTM25PM$sendCmd(STM25P_RDSR, 0, &status, sizeof status);
  HALSTM25PM$HPLSTM25P$releaseBus();
  return ! !(status & 0x1);
}

static inline void HALSTM25PM$powerOff(void)
#line 88
{
  HALSTM25PM$sendCmd(STM25P_DP, 0, NULL, 0);
  HALSTM25PM$curCmd = HALSTM25PM$S_POWEROFF;
}

static inline  





result_t HALSTM25PM$Timer$fired(void)
#line 99
{

  if (HALSTM25PM$curCmd == HALSTM25PM$S_POWERON) {
    HALSTM25PM$powerOff();
    }
  else {
#line 103
    if (HALSTM25PM$isWriting()) {
      HALSTM25PM$Timer$start(TIMER_ONE_SHOT, 1);
      }
    else {
#line 106
      HALSTM25PM$signalDone();
      }
    }
#line 108
  return SUCCESS;
}

static inline   
# 463 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
result_t TimerM$Timer$default$fired(uint8_t num)
{
  return SUCCESS;
}

# 73 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/Timer.nc"
inline static  result_t TimerM$Timer$fired(uint8_t arg_0x8b91380){
#line 73
  unsigned char result;
#line 73

#line 73
  switch (arg_0x8b91380) {
#line 73
    case 0:
#line 73
      result = HALSTM25PM$Timer$fired();
#line 73
      break;
#line 73
    default:
#line 73
      result = TimerM$Timer$default$fired(arg_0x8b91380);
#line 73
    }
#line 73

#line 73
  return result;
#line 73
}
#line 73
static inline   
# 435 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
result_t TimerM$TimerMilli$default$fired(uint8_t num)
{
  return SUCCESS;
}

# 37 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerMilli.nc"
inline static  result_t TimerM$TimerMilli$fired(uint8_t arg_0x8b91a08){
#line 37
  unsigned char result;
#line 37

#line 37
    result = TimerM$TimerMilli$default$fired(arg_0x8b91a08);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline   
#line 386
result_t TimerM$TimerJiffy$default$fired(uint8_t num)
{
  return SUCCESS;
}

# 37 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerJiffy.nc"
inline static  result_t TimerM$TimerJiffy$fired(uint8_t arg_0x8bba430){
#line 37
  unsigned char result;
#line 37

#line 37
    result = TimerM$TimerJiffy$default$fired(arg_0x8bba430);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline 
#line 118
void TimerM$signal_timer_fired(uint8_t num)
{



  const int16_t num16 = num;

  if (TimerM$COUNT_TIMER_JIFFY > 0 && num16 >= TimerM$OFFSET_TIMER_JIFFY) 
    {
      TimerM$TimerJiffy$fired(num - TimerM$OFFSET_TIMER_JIFFY);
    }
  else {
#line 129
    if (TimerM$COUNT_TIMER_MILLI > 0 && num16 >= TimerM$OFFSET_TIMER_MILLI) 
      {
        TimerM$TimerMilli$fired(num - TimerM$OFFSET_TIMER_MILLI);
      }
    else 
      {
        TimerM$Timer$fired(num);
      }
    }
}

static inline  
# 120 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
result_t HPLSTM25PM$BusArbitration$busFree(void)
#line 120
{
#line 120
  return SUCCESS;
}

static inline   
# 125 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
result_t BusArbitrationM$BusArbitration$default$busFree(uint8_t id)
#line 125
{
  return SUCCESS;
}

# 39 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitration.nc"
inline static  result_t BusArbitrationM$BusArbitration$busFree(uint8_t arg_0x8b62250){
#line 39
  unsigned char result;
#line 39

#line 39
  switch (arg_0x8b62250) {
#line 39
    case 0:
#line 39
      result = HPLSTM25PM$BusArbitration$busFree();
#line 39
      break;
#line 39
    default:
#line 39
      result = BusArbitrationM$BusArbitration$default$busFree(arg_0x8b62250);
#line 39
    }
#line 39

#line 39
  return result;
#line 39
}
#line 39
static inline  
# 42 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
void BusArbitrationM$busReleased(void)
#line 42
{
  uint8_t i;
  uint8_t currentstate;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 46
    BusArbitrationM$isBusReleasedPending = FALSE;
#line 46
    __nesc_atomic_end(__nesc_atomic); }
  for (i = 0; i < 1; i++) {
      { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 48
        currentstate = BusArbitrationM$state;
#line 48
        __nesc_atomic_end(__nesc_atomic); }
      if (currentstate == BusArbitrationM$BUS_IDLE) {
        BusArbitrationM$BusArbitration$busFree(i);
        }
    }
}

static inline  
# 185 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
result_t HALSTM25PM$HALSTM25P$sectorErase(volume_t volume, stm25p_addr_t addr)
#line 185
{
  return HALSTM25PM$newRequest(STM25P_SE, volume, addr, NULL, 0);
}

# 37 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  result_t FlashM$HALSTM25P$sectorErase(stm25p_addr_t arg_0x8abc2f8){
#line 37
  unsigned char result;
#line 37

#line 37
  result = HALSTM25PM$HALSTM25P$sectorErase(2, arg_0x8abc2f8);
#line 37

#line 37
  return result;
#line 37
}
#line 37
static inline  
# 142 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$erase(uint8_t id, pageptr_t page)
{
  FlashM$Tid = id;
  return FlashM$HALSTM25P$sectorErase(page * 256);
}

# 48 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t RootDirectoryM$GenericFlash$erase(pageptr_t arg_0x8a34840){
#line 48
  unsigned char result;
#line 48

#line 48
  result = FlashM$GenericFlash$erase(3, arg_0x8a34840);
#line 48

#line 48
  return result;
#line 48
}
#line 48
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
inline static  void CheckpointC$Checkpoint$checkpointDone(result_t arg_0x8a3d410){
#line 37
  StressTestC$Checkpoint$checkpointDone(arg_0x8a3d410);
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
inline static  void CheckpointC$Checkpoint$rollbackDone(result_t arg_0x8a3d810){
#line 39
  StressTestC$Checkpoint$rollbackDone(arg_0x8a3d810);
#line 39
}
#line 39
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
inline static  void StreamC$Compaction$compactionDone(uint8_t arg_0xb7de25e8, result_t arg_0x8a8c410){
#line 30
  switch (arg_0xb7de25e8) {
#line 30
    case 0:
#line 30
      ChunkStorageC$Compaction$compactionDone(arg_0x8a8c410);
#line 30
      break;
#line 30
    default:
#line 30
      StreamC$Compaction$default$compactionDone(arg_0xb7de25e8, arg_0x8a8c410);
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
inline static  result_t ChunkStorageC$Compaction$compact(uint8_t arg_0x8a8c010){
#line 28
  unsigned char result;
#line 28

#line 28
  result = StreamC$Compaction$compact(0, arg_0x8a8c010);
#line 28

#line 28
  return result;
#line 28
}
#line 28
# 34 "../../tos/interfaces/Stack.nc"
inline static  result_t StreamC$Stack$push(void *arg_0xb7e5b408, datalen_t arg_0xb7e5b558, flashptr_t *arg_0xb7e5b6c8){
#line 34
  unsigned char result;
#line 34

#line 34
  result = StackC$Stack$push(1, arg_0xb7e5b408, arg_0xb7e5b558, arg_0xb7e5b6c8);
#line 34

#line 34
  return result;
#line 34
}
#line 34
# 37 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StackC$ChunkStorage$write(void *arg_0x8a3b400, datalen_t arg_0x8a3b550, void *arg_0x8a3b6b8, datalen_t arg_0x8a3b808, bool arg_0x8a3b968, flashptr_t *arg_0x8a3bad8){
#line 37
  unsigned char result;
#line 37

#line 37
  result = ChunkStorageC$ChunkStorage$write(1, arg_0x8a3b400, arg_0x8a3b550, arg_0x8a3b6b8, arg_0x8a3b808, arg_0x8a3b968, arg_0x8a3bad8);
#line 37

#line 37
  return result;
#line 37
}
#line 37
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
inline static  void StreamC$Stream$appendDone(uint8_t arg_0xb7de56d8, result_t arg_0x8a5c838){
#line 36
  switch (arg_0xb7de56d8) {
#line 36
    case 0:
#line 36
      StressTestC$Stream$appendDone(arg_0x8a5c838);
#line 36
      break;
#line 36
    default:
#line 36
      StreamC$Stream$default$appendDone(arg_0xb7de56d8, arg_0x8a5c838);
#line 36
    }
#line 36
}
#line 36
# 39 "../../tos/interfaces/Stack.nc"
inline static  result_t StreamC$Stack$pop(void *arg_0xb7e5bee8, datalen_t *arg_0xb7e54078){
#line 39
  unsigned char result;
#line 39

#line 39
  result = StackC$Stack$pop(1, arg_0xb7e5bee8, arg_0xb7e54078);
#line 39

#line 39
  return result;
#line 39
}
#line 39
# 45 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StackC$ChunkStorage$read(flashptr_t *arg_0x8a3e358, void *arg_0x8a3e4c0, datalen_t arg_0x8a3e610, void *arg_0x8a3e778, datalen_t *arg_0x8a3e8e0, bool arg_0x8a3ea40, bool *arg_0x8a3eba0){
#line 45
  unsigned char result;
#line 45

#line 45
  result = ChunkStorageC$ChunkStorage$read(1, arg_0x8a3e358, arg_0x8a3e4c0, arg_0x8a3e610, arg_0x8a3e778, arg_0x8a3e8e0, arg_0x8a3ea40, arg_0x8a3eba0);
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
  if (data2_len > 0 && ChunkStorageC$data2 != NULL) 
    {
      nmemcpy(ChunkStorageC$data2, &ChunkStorageC$write_buffer[cacheptr + sizeof(chunk_header ) + ChunkStorageC$len1], data2_len);
    }

  if (ChunkStorageC$rlen2 != NULL) {
    *ChunkStorageC$rlen2 = data2_len;
    }

  if (ChunkStorageC$len1 > 0) 
    {
      nmemcpy(ChunkStorageC$data1, &ChunkStorageC$write_buffer[cacheptr + sizeof(chunk_header )], ChunkStorageC$len1);
    }

  return SUCCESS;
}

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
inline static  void StreamC$Stream$nextDone(uint8_t arg_0xb7de56d8, result_t arg_0x8a5d5e8){
#line 44
  switch (arg_0xb7de56d8) {
#line 44
    case 0:
#line 44
      StressTestC$Stream$nextDone(arg_0x8a5d5e8);
#line 44
      break;
#line 44
    default:
#line 44
      StreamC$Stream$default$nextDone(arg_0xb7de56d8, arg_0x8a5d5e8);
#line 44
    }
#line 44
}
#line 44
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
# 37 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StreamC$ChunkStorage$write(void *arg_0x8a3b400, datalen_t arg_0x8a3b550, void *arg_0x8a3b6b8, datalen_t arg_0x8a3b808, bool arg_0x8a3b968, flashptr_t *arg_0x8a3bad8){
#line 37
  unsigned char result;
#line 37

#line 37
  result = ChunkStorageC$ChunkStorage$write(0, arg_0x8a3b400, arg_0x8a3b550, arg_0x8a3b6b8, arg_0x8a3b808, arg_0x8a3b968, arg_0x8a3bad8);
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

# 10 "../../tos/interfaces/Console.nc"
inline static  result_t CheckpointC$Console$string(char *arg_0x8a44ec8){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8a44ec8);
#line 10

#line 10
  return result;
#line 10
}
#line 10
# 35 "../../tos/interfaces/RootDirectory.nc"
inline static  result_t CheckpointC$RootDirectory$setRoot(uint8_t arg_0x8a613c8, flashptr_t *arg_0x8a61530){
#line 35
  unsigned char result;
#line 35

#line 35
  result = RootDirectoryM$RootDirectory$setRoot(arg_0x8a613c8, arg_0x8a61530);
#line 35

#line 35
  return result;
#line 35
}
#line 35
# 10 "../../tos/interfaces/Console.nc"
inline static  result_t StackC$Console$string(char *arg_0x8a44ec8){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8a44ec8);
#line 10

#line 10
  return result;
#line 10
}
#line 10

inline static  result_t StackC$Console$decimal(int32_t arg_0x8a452c8){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8a452c8);
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
inline static  void CheckpointC$RootPtrAccess$getPtr(flashptr_t *arg_0xb7e58fe0){
#line 34
  StackC$RootPtrAccess$getPtr(0, arg_0xb7e58fe0);
#line 34
}
#line 34
# 10 "../../tos/interfaces/Console.nc"
inline static  result_t StreamC$Console$string(char *arg_0x8a44ec8){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8a44ec8);
#line 10

#line 10
  return result;
#line 10
}
#line 10

inline static  result_t StreamC$Console$decimal(int32_t arg_0x8a452c8){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8a452c8);
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
inline static  result_t ChunkStorageC$Console$string(char *arg_0x8a44ec8){
#line 10
  unsigned char result;
#line 10

#line 10
  result = ConsoleC$Console$string(arg_0x8a44ec8);
#line 10

#line 10
  return result;
#line 10
}
#line 10

inline static  result_t ChunkStorageC$Console$decimal(int32_t arg_0x8a452c8){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8a452c8);
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
inline static  result_t CheckpointC$Serialize$restore(uint8_t *arg_0x8a69148, datalen_t *arg_0x8a692b0){
#line 33
  unsigned char result;
#line 33

#line 33
  result = ChunkStorageC$Serialize$restore(arg_0x8a69148, arg_0x8a692b0);
#line 33
  result = rcombine(result, StreamC$Serialize$restore(0, arg_0x8a69148, arg_0x8a692b0));
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

# 45 "../../tos/interfaces/ChunkStorage.nc"
inline static  result_t StreamC$ChunkStorage$read(flashptr_t *arg_0x8a3e358, void *arg_0x8a3e4c0, datalen_t arg_0x8a3e610, void *arg_0x8a3e778, datalen_t *arg_0x8a3e8e0, bool arg_0x8a3ea40, bool *arg_0x8a3eba0){
#line 45
  unsigned char result;
#line 45

#line 45
  result = ChunkStorageC$ChunkStorage$read(0, arg_0x8a3e358, arg_0x8a3e4c0, arg_0x8a3e610, arg_0x8a3e778, arg_0x8a3e8e0, arg_0x8a3ea40, arg_0x8a3eba0);
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
inline static  void StackC$Stack$popDone(uint8_t arg_0xb7e5a380, result_t arg_0xb7e54478){
#line 41
  switch (arg_0xb7e5a380) {
#line 41
    case 0:
#line 41
      CheckpointC$Stack$popDone(arg_0xb7e54478);
#line 41
      break;
#line 41
    case 1:
#line 41
      StreamC$Stack$popDone(arg_0xb7e54478);
#line 41
      break;
#line 41
    default:
#line 41
      StackC$Stack$default$popDone(arg_0xb7e5a380, arg_0xb7e54478);
#line 41
    }
#line 41
}
#line 41
# 27 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/LocalTime.nc"
inline static   uint32_t RootDirectoryM$LocalTime$read(void){
#line 27
  unsigned long result;
#line 27

#line 27
  result = TimerM$LocalTime$read();
#line 27

#line 27
  return result;
#line 27
}
#line 27
static inline  
# 181 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
result_t HALSTM25PM$HALSTM25P$pageProgram(volume_t volume, stm25p_addr_t addr, void *data, stm25p_addr_t len)
#line 181
{
  return HALSTM25PM$newRequest(STM25P_PP, volume, addr, data, len);
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25P.nc"
inline static  result_t FlashM$HALSTM25P$pageProgram(stm25p_addr_t arg_0x8ab9928, void *arg_0x8ab9a80, stm25p_addr_t arg_0x8ab9bd0){
#line 34
  unsigned char result;
#line 34

#line 34
  result = HALSTM25PM$HALSTM25P$pageProgram(2, arg_0x8ab9928, arg_0x8ab9a80, arg_0x8ab9bd0);
#line 34

#line 34
  return result;
#line 34
}
#line 34
static inline  
# 56 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$write(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *data, offsetptr_t len)
{
  FlashM$Tid = id;
  return FlashM$HALSTM25P$pageProgram(page * 256 + offset, data, len);
}

# 34 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t RootDirectoryM$GenericFlash$write(pageptr_t arg_0x8a36060, offsetptr_t arg_0x8a361b0, void *arg_0x8a36318, datalen_t arg_0x8a36468){
#line 34
  unsigned char result;
#line 34

#line 34
  result = FlashM$GenericFlash$write(3, arg_0x8a36060, arg_0x8a361b0, arg_0x8a36318, arg_0x8a36468);
#line 34

#line 34
  return result;
#line 34
}
#line 34
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
inline static  void StackC$Stack$topDone(uint8_t arg_0xb7e5a380, result_t arg_0xb7e54df0){
#line 46
  switch (arg_0xb7e5a380) {
#line 46
    case 0:
#line 46
      CheckpointC$Stack$topDone(arg_0xb7e54df0);
#line 46
      break;
#line 46
    case 1:
#line 46
      StreamC$Stack$topDone(arg_0xb7e54df0);
#line 46
      break;
#line 46
    default:
#line 46
      StackC$Stack$default$topDone(arg_0xb7e5a380, arg_0xb7e54df0);
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
  NULL, 0, FALSE, FALSE)) 
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
inline static  void StackC$Stack$pushDone(uint8_t arg_0xb7e5a380, result_t arg_0xb7e5bad8){
#line 36
  switch (arg_0xb7e5a380) {
#line 36
    case 0:
#line 36
      CheckpointC$Stack$pushDone(arg_0xb7e5bad8);
#line 36
      break;
#line 36
    case 1:
#line 36
      StreamC$Stack$pushDone(arg_0xb7e5bad8);
#line 36
      break;
#line 36
    default:
#line 36
      StackC$Stack$default$pushDone(arg_0xb7e5a380, arg_0xb7e5bad8);
#line 36
    }
#line 36
}
#line 36
static inline  
# 302 "StressTestC.nc"
result_t StressTestC$GenericFlash$falReadDone(result_t r)
{
  return SUCCESS;
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
inline static  void ChunkStorageC$ChunkStorage$readDone(uint8_t arg_0x8a47388, result_t arg_0x8a3efd0){
#line 49
  switch (arg_0x8a47388) {
#line 49
    case 0:
#line 49
      StreamC$ChunkStorage$readDone(arg_0x8a3efd0);
#line 49
      break;
#line 49
    case 1:
#line 49
      StackC$ChunkStorage$readDone(arg_0x8a3efd0);
#line 49
      break;
#line 49
    case 2:
#line 49
      CheckpointC$ChunkStorage$readDone(arg_0x8a3efd0);
#line 49
      break;
#line 49
    case 3:
#line 49
      StressTestC$ChunkStorage$readDone(arg_0x8a3efd0);
#line 49
      break;
#line 49
    default:
#line 49
      ChunkStorageC$ChunkStorage$default$readDone(arg_0x8a47388, arg_0x8a3efd0);
#line 49
    }
#line 49
}
#line 49
static inline  
# 562 "../../tos/system/ChunkStorageC.nc"
void ChunkStorageC$readDoneRespond(void)
{





  ChunkStorageC$unlock();
  ChunkStorageC$ChunkStorage$readDone(ChunkStorageC$if_id, ChunkStorageC$res);
}

# 29 "../../tos/interfaces/Crc8.nc"
inline static  uint8_t ChunkStorageC$Crc8$crc8(uint8_t *arg_0x8a8d560, uint16_t arg_0x8a8d6b0, uint8_t arg_0x8a8d7f8){
#line 29
  unsigned char result;
#line 29

#line 29
  result = Crc8C$Crc8$crc8(arg_0x8a8d560, arg_0x8a8d6b0, arg_0x8a8d7f8);
#line 29

#line 29
  return result;
#line 29
}
#line 29
static inline  
# 709 "../../tos/system/ChunkStorageC.nc"
result_t ChunkStorageC$GenericFlash$falReadDone(result_t result)
{
  ChunkStorageC$res = result;

  if (result == SUCCESS && ChunkStorageC$rlen2 != NULL) 
    {
      chunk_header *header = (chunk_header *)ChunkStorageC$header_buffer;

#line 716
      *ChunkStorageC$rlen2 = header->data_len - ChunkStorageC$len1;

      if (ChunkStorageC$computeEcc) 
        {
          uint8_t Ecc = ChunkStorageC$Crc8$crc8(ChunkStorageC$data1, ChunkStorageC$len1, 0);

#line 721
          Ecc = ChunkStorageC$Crc8$crc8(ChunkStorageC$data2, *ChunkStorageC$rlen2, Ecc);

          if (ChunkStorageC$ecc != NULL && Ecc == header->ecc) 
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

static inline  
# 446 "../../tos/system/RootDirectoryM.nc"
result_t RootDirectoryM$GenericFlash$falReadDone(result_t result)
{
  return SUCCESS;
}

static inline   
# 179 "../../tos/platform/telosb/FlashM.nc"
result_t FlashM$GenericFlash$default$falReadDone(uint8_t id, result_t result)
{
  return SUCCESS;
}

# 42 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t FlashM$GenericFlash$falReadDone(uint8_t arg_0x8ac5830, result_t arg_0x8a377b8){
#line 42
  unsigned char result;
#line 42

#line 42
  switch (arg_0x8ac5830) {
#line 42
    case 0:
#line 42
      result = ChunkStorageC$GenericFlash$falReadDone(arg_0x8a377b8);
#line 42
      break;
#line 42
    case 1:
#line 42
      result = StressTestC$GenericFlash$falReadDone(arg_0x8a377b8);
#line 42
      break;
#line 42
    case 3:
#line 42
      result = RootDirectoryM$GenericFlash$falReadDone(arg_0x8a377b8);
#line 42
      break;
#line 42
    default:
#line 42
      result = FlashM$GenericFlash$default$falReadDone(arg_0x8ac5830, arg_0x8a377b8);
#line 42
    }
#line 42

#line 42
  return result;
#line 42
}
#line 42
static inline  
# 73 "../../tos/platform/telosb/FlashM.nc"
void FlashM$falReadSignal(void)
{
  FlashM$GenericFlash$falReadDone(FlashM$Tid, SUCCESS);
}

static inline  

result_t FlashM$GenericFlash$falRead(uint8_t id, pageptr_t page, offsetptr_t offset, 
void *header, 
void *app_buff, offsetptr_t app_len, 
void *data_buff)
{
  uint32_t accessLocation = page * 256 + offset;

  FlashM$Tid = id;

  if (SUCCESS != FlashM$HALSTM25P$read(accessLocation, FlashM$headerBuf, 
  sizeof(chunk_header ) + app_len)) 
    {
      return FAIL;
    }
  else 
    {
      chunk_header *h;

      nmemcpy(header, FlashM$headerBuf, sizeof(chunk_header ));
      h = (chunk_header *)&header;

      if (app_len > 0) 
        {
          nmemcpy(app_buff, &FlashM$headerBuf[sizeof(chunk_header )], app_len);
        }


      if (h->data_len - app_len && 
      SUCCESS != FlashM$HALSTM25P$read(accessLocation + sizeof(chunk_header ) + app_len, 
      data_buff, h->data_len - app_len)) 
        {
          return FAIL;
        }
      else 
        {
          TOS_post(FlashM$falReadSignal);
        }
    }

  return SUCCESS;
}

# 38 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$falRead(pageptr_t arg_0x8a36c98, offsetptr_t arg_0x8a36de8, void *arg_0x8a36f50, void *arg_0x8a370c0, datalen_t arg_0x8a37210, void *arg_0x8a37380){
#line 38
  unsigned char result;
#line 38

#line 38
  result = FlashM$GenericFlash$falRead(0, arg_0x8a36c98, arg_0x8a36de8, arg_0x8a36f50, arg_0x8a370c0, arg_0x8a37210, arg_0x8a37380);
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
# 34 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$write(pageptr_t arg_0x8a36060, offsetptr_t arg_0x8a361b0, void *arg_0x8a36318, datalen_t arg_0x8a36468){
#line 34
  unsigned char result;
#line 34

#line 34
  result = FlashM$GenericFlash$write(0, arg_0x8a36060, arg_0x8a361b0, arg_0x8a36318, arg_0x8a36468);
#line 34

#line 34
  return result;
#line 34
}
#line 34
# 48 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t ChunkStorageC$GenericFlash$erase(pageptr_t arg_0x8a34840){
#line 48
  unsigned char result;
#line 48

#line 48
  result = FlashM$GenericFlash$erase(0, arg_0x8a34840);
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
    page = 2 + 0;
    }
  if (SUCCESS != ChunkStorageC$GenericFlash$erase(page)) 
    {






      ChunkStorageC$Leds$redOn();
    }
}

# 48 "../../tos/interfaces/GenericFlash.nc"
inline static  result_t StressTestC$GenericFlash$erase(pageptr_t arg_0x8a34840){
#line 48
  unsigned char result;
#line 48

#line 48
  result = FlashM$GenericFlash$erase(1, arg_0x8a34840);
#line 48

#line 48
  return result;
#line 48
}
#line 48
static inline   
# 470 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void MSP430TimerM$CompareB3$setEventFromNow(uint16_t x)
#line 470
{
#line 470
  MSP430TimerM$TBCCR3 = TBR + x;
}

# 32 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void TimerM$AlarmCompare$setEventFromNow(uint16_t arg_0x894e9c8){
#line 32
  MSP430TimerM$CompareB3$setEventFromNow(arg_0x894e9c8);
#line 32
}
#line 32
static inline   
# 366 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void MSP430TimerM$ControlB3$clearPendingInterrupt(void)
#line 366
{
#line 366
  MSP430TimerM$TBCCTL3 &= ~0x0001;
}

# 32 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerControl.nc"
inline static   void TimerM$AlarmControl$clearPendingInterrupt(void){
#line 32
  MSP430TimerM$ControlB3$clearPendingInterrupt();
#line 32
}
#line 32
static inline   
# 414 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void MSP430TimerM$ControlB3$enableEvents(void)
#line 414
{
#line 414
  MSP430TimerM$TBCCTL3 |= 0x0010;
}

# 38 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerControl.nc"
inline static   void TimerM$AlarmControl$enableEvents(void){
#line 38
  MSP430TimerM$ControlB3$enableEvents();
#line 38
}
#line 38
static inline  
# 316 "StressTestC.nc"
void StressTestC$RootDirectory$getRootDone(result_t res)
{
}

# 39 "../../tos/interfaces/Stack.nc"
inline static  result_t CheckpointC$Stack$pop(void *arg_0xb7e5bee8, datalen_t *arg_0xb7e54078){
#line 39
  unsigned char result;
#line 39

#line 39
  result = StackC$Stack$pop(0, arg_0xb7e5bee8, arg_0xb7e54078);
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
inline static  void CheckpointC$RootPtrAccess$setPtr(flashptr_t *arg_0xb7e58bd0){
#line 32
  StackC$RootPtrAccess$setPtr(0, arg_0xb7e58bd0);
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


  if (SUCCESS != CheckpointC$Stack$pop(CheckpointC$local[0].state.state_buffer, NULL)) 
    {

      CheckpointC$Console$string("ERROR ! Unable to pop state stack\n");

      CheckpointC$tempResult = FAIL;
      TOS_post(CheckpointC$signaler);
    }
}

# 41 "../../tos/interfaces/RootDirectory.nc"
inline static  void RootDirectoryM$RootDirectory$getRootDone(result_t arg_0x8a7c2e8){
#line 41
  CheckpointC$RootDirectory$getRootDone(arg_0x8a7c2e8);
#line 41
  StressTestC$RootDirectory$getRootDone(arg_0x8a7c2e8);
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
inline static  result_t CheckpointC$RootDirectory$getRoot(uint8_t arg_0x8a61d38, flashptr_t *arg_0x8a61ea0){
#line 39
  unsigned char result;
#line 39

#line 39
  result = RootDirectoryM$RootDirectory$getRoot(arg_0x8a61d38, arg_0x8a61ea0);
#line 39

#line 39
  return result;
#line 39
}
#line 39
static inline 
# 202 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/msp430hardware.h"
void __nesc_enable_interrupt(void)
{
   __asm volatile ("eint");}

static inline 
#line 226
void __nesc_atomic_end(__nesc_atomic_t reenable_interrupts)
{
  if (reenable_interrupts) {
    __nesc_enable_interrupt();
    }
}

static 
#line 245
__inline void __nesc_atomic_sleep(void)
#line 245
{








  uint16_t LPMode_bits = 0;

  if (LPMode_disabled) {
      __nesc_enable_interrupt();
      return;
    }
  else 
#line 259
    {
      LPMode_bits = 0x0080 + 0x0040 + 0x0010;






      if (((((
#line 262
      TA0CTL & (3 << 4)) != 0 << 4 && (TA0CTL & (3 << 8)) == 2 << 8)
       || (ME1 & ((1 << 7) | (1 << 6)) && U0TCTL & 0x20))
       || (ME2 & ((1 << 5) | (1 << 4)) && U1TCTL & 0x20))


       || (U0CTLnr & 0x01 && I2CTCTLnr & 0x20 && 
      I2CDCTLnr & 0x20 && U0CTLnr & 0x04 && U0CTLnr & 0x20)) {


        LPMode_bits = 0x0040 + 0x0010;
        }

      if (ADC12CTL1 & 0x0001) {
          if (!(ADC12CTL0 & 0x0080) && (TA0CTL & (3 << 8)) == 2 << 8) {
            LPMode_bits = 0x0040 + 0x0010;
            }
          else {
#line 278
            switch (ADC12CTL1 & (3 << 3)) {
                case 2 << 3: LPMode_bits = 0;
#line 279
                break;
                case 3 << 3: LPMode_bits = 0x0040 + 0x0010;
#line 280
                break;
              }
            }
        }
      LPMode_bits |= 0x0008;
       __asm volatile ("bis  %0, r2" :  : "m"((uint16_t )LPMode_bits));}
}

static inline 
#line 196
void __nesc_disable_interrupt(void)
{
   __asm volatile ("dint");
   __asm volatile ("nop");}

static inline 





bool are_interrupts_enabled(void)
{
  return (({
#line 209
    uint16_t __x;

#line 209
     __asm volatile ("mov	r2, %0" : "=r"((uint16_t )__x));__x;
  }
  )
#line 209
   & 0x0008) != 0;
}

static inline 






__nesc_atomic_t __nesc_atomic_start(void )
{
  __nesc_atomic_t result = are_interrupts_enabled();

#line 222
  __nesc_disable_interrupt();
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
  if (func == NULL) 
    {
      __nesc_atomic_sleep();
      return 0;
    }

  TOSH_queue[old_full].tp = NULL;
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
# 157 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void MSP430TimerM$CompareA0$default$fired(void)
#line 157
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareA0$fired(void){
#line 34
  MSP430TimerM$CompareA0$default$fired();
#line 34
}
#line 34
static inline   
# 253 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureA0$getEvent(void)
#line 253
{
#line 253
  return MSP430TimerM$TA0CCR0;
}

static inline    
#line 160
void MSP430TimerM$CaptureA0$default$captured(uint16_t time)
#line 160
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureA0$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureA0$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline 
# 96 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$int2CC(uint16_t x)
#line 96
{
#line 96
  union __nesc_unnamed4306 {
#line 96
    uint16_t f;
#line 96
    MSP430TimerM$CC_t t;
  } 
#line 96
  c = { .f = x };

#line 96
  return c.t;
}

static inline   
#line 205
MSP430TimerM$CC_t MSP430TimerM$ControlA0$getControl(void)
#line 205
{
#line 205
  return MSP430TimerM$int2CC(MSP430TimerM$TA0CCTL0);
}

#line 123
void __attribute((interrupt(12))) __attribute((wakeup))  sig_TIMERA0_VECTOR(void)
{
  if (MSP430TimerM$ControlA0$getControl().cap) {
    MSP430TimerM$CaptureA0$captured(MSP430TimerM$CaptureA0$getEvent());
    }
  else {
#line 128
    MSP430TimerM$CompareA0$fired();
    }
}

static inline   
#line 206
MSP430TimerM$CC_t MSP430TimerM$ControlA1$getControl(void)
#line 206
{
#line 206
  return MSP430TimerM$int2CC(MSP430TimerM$TA0CCTL1);
}

static inline    
#line 161
void MSP430TimerM$CaptureA1$default$captured(uint16_t time)
#line 161
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureA1$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureA1$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 254 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureA1$getEvent(void)
#line 254
{
#line 254
  return MSP430TimerM$TA0CCR1;
}

static inline    
#line 158
void MSP430TimerM$CompareA1$default$fired(void)
#line 158
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareA1$fired(void){
#line 34
  MSP430TimerM$CompareA1$default$fired();
#line 34
}
#line 34
static inline   
# 207 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlA2$getControl(void)
#line 207
{
#line 207
  return MSP430TimerM$int2CC(MSP430TimerM$TA0CCTL2);
}

static inline    
#line 162
void MSP430TimerM$CaptureA2$default$captured(uint16_t time)
#line 162
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureA2$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureA2$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 255 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureA2$getEvent(void)
#line 255
{
#line 255
  return MSP430TimerM$TA0CCR2;
}

static inline    
#line 159
void MSP430TimerM$CompareA2$default$fired(void)
#line 159
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareA2$fired(void){
#line 34
  MSP430TimerM$CompareA2$default$fired();
#line 34
}
#line 34
# 30 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
inline static   uint16_t MSP430DCOCalibM$Timer32khz$read(void){
#line 30
  unsigned int result;
#line 30

#line 30
  result = MSP430TimerM$TimerB$read();
#line 30

#line 30
  return result;
#line 30
}
#line 30
static inline   
# 41 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430DCOCalibM.nc"
void MSP430DCOCalibM$TimerMicro$overflow(void)
{
  uint16_t now = MSP430DCOCalibM$Timer32khz$read();
  uint16_t delta = now - MSP430DCOCalibM$m_prev;

#line 45
  MSP430DCOCalibM$m_prev = now;

  if (delta > MSP430DCOCalibM$TARGET_DELTA + MSP430DCOCalibM$MAX_DEVIATION) 
    {

      if (DCOCTL < 0xe0) 
        {
          DCOCTL++;
        }
      else {
#line 54
        if ((BCSCTL1 & 7) < 7) 
          {
            BCSCTL1++;
            DCOCTL = 96;
          }
        }
    }
  else {
#line 60
    if (delta < MSP430DCOCalibM$TARGET_DELTA - MSP430DCOCalibM$MAX_DEVIATION) 
      {

        if (DCOCTL > 0) 
          {
            DCOCTL--;
          }
        else {
#line 67
          if ((BCSCTL1 & 7) > 0) 
            {
              BCSCTL1--;
              DCOCTL = 128;
            }
          }
      }
    }
}

# 33 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
inline static   void MSP430TimerM$TimerA$overflow(void){
#line 33
  MSP430DCOCalibM$TimerMicro$overflow();
#line 33
}
#line 33
static inline    
# 331 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void MSP430TimerM$CompareB0$default$fired(void)
#line 331
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB0$fired(void){
#line 34
  MSP430TimerM$CompareB0$default$fired();
#line 34
}
#line 34
static inline   
# 443 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB0$getEvent(void)
#line 443
{
#line 443
  return MSP430TimerM$TBCCR0;
}

static inline    
#line 338
void MSP430TimerM$CaptureB0$default$captured(uint16_t time)
#line 338
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB0$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB0$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 347 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlB0$getControl(void)
#line 347
{
#line 347
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL0);
}

#line 277
void __attribute((interrupt(26))) __attribute((wakeup))  sig_TIMERB0_VECTOR(void)
{
  if (MSP430TimerM$ControlB0$getControl().cap) {
    MSP430TimerM$CaptureB0$captured(MSP430TimerM$CaptureB0$getEvent());
    }
  else {
#line 282
    MSP430TimerM$CompareB0$fired();
    }
}

static inline   
#line 348
MSP430TimerM$CC_t MSP430TimerM$ControlB1$getControl(void)
#line 348
{
#line 348
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL1);
}

static inline    
#line 339
void MSP430TimerM$CaptureB1$default$captured(uint16_t time)
#line 339
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB1$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB1$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 444 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB1$getEvent(void)
#line 444
{
#line 444
  return MSP430TimerM$TBCCR1;
}

static inline    
#line 332
void MSP430TimerM$CompareB1$default$fired(void)
#line 332
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB1$fired(void){
#line 34
  MSP430TimerM$CompareB1$default$fired();
#line 34
}
#line 34
static inline   
# 349 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlB2$getControl(void)
#line 349
{
#line 349
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL2);
}

static inline    
#line 340
void MSP430TimerM$CaptureB2$default$captured(uint16_t time)
#line 340
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB2$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB2$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 445 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB2$getEvent(void)
#line 445
{
#line 445
  return MSP430TimerM$TBCCR2;
}

static inline    
#line 333
void MSP430TimerM$CompareB2$default$fired(void)
#line 333
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB2$fired(void){
#line 34
  MSP430TimerM$CompareB2$default$fired();
#line 34
}
#line 34
static inline   
# 350 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlB3$getControl(void)
#line 350
{
#line 350
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL3);
}

static inline    
#line 341
void MSP430TimerM$CaptureB3$default$captured(uint16_t time)
#line 341
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB3$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB3$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 446 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB3$getEvent(void)
#line 446
{
#line 446
  return MSP430TimerM$TBCCR3;
}

static inline  
# 257 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
void TimerM$checkShortTimers(void)
{
  uint8_t head = TimerM$m_head_short;

#line 260
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 260
    TimerM$m_posted_checkShortTimers = FALSE;
#line 260
    __nesc_atomic_end(__nesc_atomic); }
  TimerM$m_head_short = TimerM$EMPTY_LIST;
  TimerM$executeTimers(head);
  TimerM$setNextShortEvent();
}

static inline 
#line 186
void TimerM$post_checkShortTimers(void)
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      if (!TimerM$m_posted_checkShortTimers) 
        {
          if (TOS_post(TimerM$checkShortTimers)) {
            TimerM$m_posted_checkShortTimers = TRUE;
            }
        }
    }
#line 196
    __nesc_atomic_end(__nesc_atomic); }
}

static inline   
#line 308
void TimerM$AlarmCompare$fired(void)
{
  TimerM$post_checkShortTimers();
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB3$fired(void){
#line 34
  TimerM$AlarmCompare$fired();
#line 34
}
#line 34
static inline   
# 351 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlB4$getControl(void)
#line 351
{
#line 351
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL4);
}

static inline    
#line 342
void MSP430TimerM$CaptureB4$default$captured(uint16_t time)
#line 342
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB4$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB4$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 447 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB4$getEvent(void)
#line 447
{
#line 447
  return MSP430TimerM$TBCCR4;
}

static inline    
#line 335
void MSP430TimerM$CompareB4$default$fired(void)
#line 335
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB4$fired(void){
#line 34
  MSP430TimerM$CompareB4$default$fired();
#line 34
}
#line 34
static inline   
# 352 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlB5$getControl(void)
#line 352
{
#line 352
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL5);
}

static inline    
#line 343
void MSP430TimerM$CaptureB5$default$captured(uint16_t time)
#line 343
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB5$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB5$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 448 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB5$getEvent(void)
#line 448
{
#line 448
  return MSP430TimerM$TBCCR5;
}

static inline    
#line 336
void MSP430TimerM$CompareB5$default$fired(void)
#line 336
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB5$fired(void){
#line 34
  MSP430TimerM$CompareB5$default$fired();
#line 34
}
#line 34
static inline   
# 353 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
MSP430TimerM$CC_t MSP430TimerM$ControlB6$getControl(void)
#line 353
{
#line 353
  return MSP430TimerM$int2CC(MSP430TimerM$TBCCTL6);
}

static inline    
#line 344
void MSP430TimerM$CaptureB6$default$captured(uint16_t time)
#line 344
{
}

# 74 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Capture.nc"
inline static   void MSP430TimerM$CaptureB6$captured(uint16_t arg_0x894a300){
#line 74
  MSP430TimerM$CaptureB6$default$captured(arg_0x894a300);
#line 74
}
#line 74
static inline   
# 449 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
uint16_t MSP430TimerM$CaptureB6$getEvent(void)
#line 449
{
#line 449
  return MSP430TimerM$TBCCR6;
}

static inline    
#line 337
void MSP430TimerM$CompareB6$default$fired(void)
#line 337
{
}

# 34 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Compare.nc"
inline static   void MSP430TimerM$CompareB6$fired(void){
#line 34
  MSP430TimerM$CompareB6$default$fired();
#line 34
}
#line 34
static inline   
# 75 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430DCOCalibM.nc"
void MSP430DCOCalibM$Timer32khz$overflow(void)
{
}

static inline  
# 266 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
void TimerM$checkLongTimers(void)
{
  uint8_t head = TimerM$m_head_long;

#line 269
  TimerM$m_head_long = TimerM$EMPTY_LIST;
  TimerM$executeTimers(head);
  TimerM$setNextShortEvent();
}

static inline   
#line 313
void TimerM$AlarmTimer$overflow(void)
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 315
    TimerM$m_hinow++;
#line 315
    __nesc_atomic_end(__nesc_atomic); }
  TOS_post(TimerM$checkLongTimers);
}

# 33 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430Timer.nc"
inline static   void MSP430TimerM$TimerB$overflow(void){
#line 33
  TimerM$AlarmTimer$overflow();
#line 33
  MSP430DCOCalibM$Timer32khz$overflow();
#line 33
}
#line 33
static inline    
# 488 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
result_t HPLUSART0M$USARTData$default$rxDone(uint8_t data)
#line 488
{
#line 488
  return SUCCESS;
}

# 53 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTFeedback.nc"
inline static   result_t HPLUSART0M$USARTData$rxDone(uint8_t arg_0x8b54300){
#line 53
  unsigned char result;
#line 53

#line 53
  result = HPLUSART0M$USARTData$default$rxDone(arg_0x8b54300);
#line 53

#line 53
  return result;
#line 53
}
#line 53
# 58 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
void __attribute((interrupt(18))) __attribute((wakeup))  sig_UART0RX_VECTOR(void)
#line 58
{
  uint8_t temp = U0RXBUF;

#line 60
  HPLUSART0M$USARTData$rxDone(temp);
}

static inline    
#line 486
result_t HPLUSART0M$USARTData$default$txDone(void)
#line 486
{
#line 486
  return SUCCESS;
}

# 46 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTFeedback.nc"
inline static   result_t HPLUSART0M$USARTData$txDone(void){
#line 46
  unsigned char result;
#line 46

#line 46
  result = HPLUSART0M$USARTData$default$txDone();
#line 46

#line 46
  return result;
#line 46
}
#line 46
static inline    
# 70 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
void HPLUSART0M$HPLI2CInterrupt$default$fired(void)
#line 70
{
}

# 43 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLI2CInterrupt.nc"
inline static   void HPLUSART0M$HPLI2CInterrupt$fired(void){
#line 43
  HPLUSART0M$HPLI2CInterrupt$default$fired();
#line 43
}
#line 43
# 63 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
void __attribute((interrupt(16))) __attribute((wakeup))  sig_UART0TX_VECTOR(void)
#line 63
{
  if (HPLUSART0M$USARTControl$isI2C()) {
    HPLUSART0M$HPLI2CInterrupt$fired();
    }
  else {
#line 67
    HPLUSART0M$USARTData$txDone();
    }
}

# 88 "/tinyos-1.1.0/tinyos-1.x/tos/interfaces/HPLUART.nc"
inline static   result_t HPLUARTM$UART$get(uint8_t arg_0xb7e6c438){
#line 88
  unsigned char result;
#line 88

#line 88
  result = ConsoleC$HPLUART$get(arg_0xb7e6c438);
#line 88

#line 88
  return result;
#line 88
}
#line 88
static inline   
# 90 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUARTM.nc"
result_t HPLUARTM$USARTData$rxDone(uint8_t b)
#line 90
{
  return HPLUARTM$UART$get(b);
}

# 53 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTFeedback.nc"
inline static   result_t HPLUSART1M$USARTData$rxDone(uint8_t arg_0x8b54300){
#line 53
  unsigned char result;
#line 53

#line 53
  result = HPLUARTM$USARTData$rxDone(arg_0x8b54300);
#line 53

#line 53
  return result;
#line 53
}
#line 53
# 55 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void __attribute((interrupt(6))) __attribute((wakeup))  sig_UART1RX_VECTOR(void)
#line 55
{
  uint8_t temp = U1RXBUF;

#line 57
  HPLUSART1M$USARTData$rxDone(temp);
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
inline static  result_t CheckpointC$Console$decimal(int32_t arg_0x8a452c8){
#line 11
  unsigned char result;
#line 11

#line 11
  result = ConsoleC$Console$decimal(arg_0x8a452c8);
#line 11

#line 11
  return result;
#line 11
}
#line 11
# 34 "../../tos/interfaces/Stack.nc"
inline static  result_t CheckpointC$Stack$push(void *arg_0xb7e5b408, datalen_t arg_0xb7e5b558, flashptr_t *arg_0xb7e5b6c8){
#line 34
  unsigned char result;
#line 34

#line 34
  result = StackC$Stack$push(0, arg_0xb7e5b408, arg_0xb7e5b558, arg_0xb7e5b6c8);
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
inline static  result_t CheckpointC$Serialize$checkpoint(uint8_t *arg_0x8a68bc0, datalen_t *arg_0x8a68d28){
#line 31
  unsigned char result;
#line 31

#line 31
  result = ChunkStorageC$Serialize$checkpoint(arg_0x8a68bc0, arg_0x8a68d28);
#line 31
  result = rcombine(result, StreamC$Serialize$checkpoint(0, arg_0x8a68bc0, arg_0x8a68d28));
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
inline static  result_t CheckpointC$Stack$init(bool arg_0xb7e5aff8){
#line 31
  unsigned char result;
#line 31

#line 31
  result = StackC$Stack$init(0, arg_0xb7e5aff8);
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
inline static  result_t StressTestC$Checkpoint$init(uint8_t arg_0x8a3caa0){
#line 31
  unsigned char result;
#line 31

#line 31
  result = CheckpointC$Checkpoint$init(arg_0x8a3caa0);
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
inline static  result_t StressTestC$Stream$next(void *arg_0x8a5d078, datalen_t *arg_0x8a5d1e0){
#line 42
  unsigned char result;
#line 42

#line 42
  result = StreamC$Stream$next(0, arg_0x8a5d078, arg_0x8a5d1e0);
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
inline static  result_t StressTestC$Stream$append(void *arg_0x8a5c168, datalen_t arg_0x8a5c2b8, flashptr_t *arg_0x8a5c428){
#line 34
  unsigned char result;
#line 34

#line 34
  result = StreamC$Stream$append(0, arg_0x8a5c168, arg_0x8a5c2b8, arg_0x8a5c428);
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
  if (start_ptr == NULL) {
    nmemcpy(& StreamC$local[id].traverse, & StreamC$local[id].tail, sizeof(flashptr_t ));
    }
  else {
#line 149
    nmemcpy(& StreamC$local[id].traverse, start_ptr, sizeof(flashptr_t ));
    }
  return SUCCESS;
}

# 39 "../../tos/interfaces/Stream.nc"
inline static  result_t StressTestC$Stream$start_traversal(flashptr_t *arg_0x8a5cc68){
#line 39
  unsigned char result;
#line 39

#line 39
  result = StreamC$Stream$start_traversal(0, arg_0x8a5cc68);
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
inline static  result_t StressTestC$Stream$init(bool arg_0x8a57d18){
#line 31
  unsigned char result;
#line 31

#line 31
  result = StreamC$Stream$init(0, arg_0x8a57d18);
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
    StressTestC$Stream$start_traversal(NULL);
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
inline static  void ConsoleC$Console$input(char *arg_0x8a38188){
#line 15
  StressTestC$Console$input(arg_0x8a38188);
#line 15
  StreamC$Console$input(arg_0x8a38188);
#line 15
  StackC$Console$input(arg_0x8a38188);
#line 15
  ChunkStorageC$Console$input(arg_0x8a38188);
#line 15
  RootDirectoryM$Console$input(arg_0x8a38188);
#line 15
  CheckpointC$Console$input(arg_0x8a38188);
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
inline static   result_t HPLUARTM$UART$putDone(void){
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
static inline   
# 94 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUARTM.nc"
result_t HPLUARTM$USARTData$txDone(void)
#line 94
{
  return HPLUARTM$UART$putDone();
}

# 46 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSARTFeedback.nc"
inline static   result_t HPLUSART1M$USARTData$txDone(void){
#line 46
  unsigned char result;
#line 46

#line 46
  result = HPLUARTM$USARTData$txDone();
#line 46

#line 46
  return result;
#line 46
}
#line 46
# 60 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART1M.nc"
void __attribute((interrupt(4))) __attribute((wakeup))  sig_UART1TX_VECTOR(void)
#line 60
{
  HPLUSART1M$USARTData$txDone();
}

# 102 "/tinyos-1.1.0/tinyos-1.x/tos/system/sched.c"
bool  TOS_post(void (*tp)(void))
#line 102
{
  __nesc_atomic_t fInterruptFlags;
  uint8_t tmp;



  fInterruptFlags = __nesc_atomic_start();

  tmp = TOSH_sched_free;

  if (TOSH_queue[tmp].tp == NULL) {
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

# 52 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MainM.nc"
int   main(void)
{
  MainM$hardwareInit();
  TOSH_sched_init();

  MainM$StdControl$init();
  MainM$StdControl$start();
  __nesc_enable_interrupt();

  for (; ; ) {
#line 61
      TOSH_run_task();
    }
}

static 
# 139 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430ClockM.nc"
void MSP430ClockM$set_dco_calib(int calib)
{
  BCSCTL1 = (BCSCTL1 & ~0x07) | ((calib >> 8) & 0x07);
  DCOCTL = calib & 0xff;
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
# 140 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
result_t HALSTM25PM$newRequest(uint8_t cmd, volume_t volume, stm25p_addr_t addr, uint8_t *data, stm25p_addr_t len)
#line 140
{

  if (HALSTM25PM$curCmd != HALSTM25PM$S_POWERON && HALSTM25PM$curCmd != HALSTM25PM$S_POWEROFF) {
    return FAIL;
    }
  if (HALSTM25PM$HPLSTM25P$getBus() == FAIL) {
    return FAIL;
    }
  HALSTM25PM$Timer$stop();

  if (HALSTM25PM$curCmd == HALSTM25PM$S_POWEROFF) {
    HALSTM25PM$powerOn();
    }
  HALSTM25PM$curVolume = volume;
  HALSTM25PM$curCmd = cmd;


  if (STM25P_CMDS[HALSTM25PM$curCmd].write) {
    HALSTM25PM$sendCmd(STM25P_WREN, 0, NULL, 0);
    }

  HALSTM25PM$sendCmd(HALSTM25PM$curCmd, addr, data, len);


  if (STM25P_CMDS[HALSTM25PM$curCmd].write) {
    HALSTM25PM$Timer$start(TIMER_ONE_SHOT, 1);
    }
  else 
#line 166
    {
      HALSTM25PM$curCmd = HALSTM25PM$S_POWERON;
      HALSTM25PM$Timer$start(TIMER_ONE_SHOT, STM25P_POWEROFF_DELAY);
    }

  HALSTM25PM$HPLSTM25P$releaseBus();

  return SUCCESS;
}

static   
# 94 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
result_t BusArbitrationM$BusArbitration$getBus(uint8_t id)
#line 94
{
  bool gotbus = FALSE;

#line 96
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 96
    {
      if (BusArbitrationM$state == BusArbitrationM$BUS_IDLE) {
          BusArbitrationM$state = BusArbitrationM$BUS_BUSY;
          gotbus = TRUE;
          BusArbitrationM$busid = id;
        }
    }
#line 102
    __nesc_atomic_end(__nesc_atomic); }
  if (gotbus) {
    return SUCCESS;
    }
#line 105
  return FAIL;
}

static 
# 112 "/tinyos-1.1.0/tinyos-1.x/tos/lib/Flash/STM25P/HALSTM25PM.nc"
void HALSTM25PM$sendCmd(uint8_t cmd, stm25p_addr_t addr, void *data, stm25p_addr_t len)
#line 112
{

  uint8_t cmdBytes[2 * STM25P_ADDR_SIZE + 1];
  uint8_t i;


  HALSTM25PM$HPLSTM25P$beginCmd();

  cmdBytes[0] = STM25P_CMDS[cmd].cmd;


  for (i = 0; i < STM25P_ADDR_SIZE; i++) 
    cmdBytes[i + 1] = (addr >> (STM25P_ADDR_SIZE - 1 - i) * 8) & 0xff;
  HALSTM25PM$HPLSTM25P$txBuf(cmdBytes, STM25P_CMD_SIZE + 
  STM25P_CMDS[cmd].address + 
  STM25P_CMDS[cmd].dummy);


  if (STM25P_CMDS[cmd].receive) {
    HALSTM25PM$crcScratch = HALSTM25PM$HPLSTM25P$rxBuf(data, len, HALSTM25PM$crcScratch);
    }
  else {
#line 132
    if (STM25P_CMDS[cmd].transmit) {
      HALSTM25PM$HPLSTM25P$txBuf(data, len);
      }
    }
  HALSTM25PM$HPLSTM25P$endCmd();
}

static   
# 84 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telosb/HPLSTM25PM.nc"
void HPLSTM25PM$HPLSTM25P$txBuf(void *buf, stm25p_addr_t len)
#line 84
{

  uint8_t *tmpBuf = buf;

  HPLSTM25PM$USARTControl$isTxIntrPending();
  for (; len; len--) {
      HPLSTM25PM$USARTControl$tx(* tmpBuf++);
      while (!HPLSTM25PM$USARTControl$isTxIntrPending()) ;
    }
}

static  
# 443 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/TimerM.nc"
result_t TimerM$Timer$start(uint8_t num, char type, uint32_t milli)
{
  switch (type) 
    {
      case TIMER_REPEAT: 
        return TimerM$setTimer(num, milli * 32, TRUE);

      case TIMER_ONE_SHOT: 
        return TimerM$setTimer(num, milli * 32, FALSE);
    }

  return FAIL;
}

static 
#line 319
result_t TimerM$setTimer(uint8_t num, int32_t jiffy, bool isperiodic)
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {
      TimerM$Timer_t *timer = &TimerM$m_timers[num];
      int32_t now;

#line 325
      if (timer->isset) {
        TimerM$removeTimer(num);
        }
#line 327
      TimerM$m_period[num] = jiffy;
      timer->isperiodic = isperiodic;
      now = TimerM$LocalTime$read();
      timer->alarm = now + jiffy;
      TimerM$insertTimer(num, jiffy <= 0xffffL);
      TimerM$setNextShortEvent();
    }
#line 333
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
}

static   
#line 288
uint32_t TimerM$LocalTime$read(void)
{
  uint32_t now;

#line 291
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
    {



      uint16_t hinow = TimerM$m_hinow;
      uint16_t lonow = TimerM$readTime();

#line 298
      if (TimerM$AlarmTimer$isOverflowPending()) 
        {
          hinow++;
          lonow = TimerM$readTime();
        }
      now = ((uint32_t )hinow << 16) | lonow;
    }
#line 304
    __nesc_atomic_end(__nesc_atomic); }
  return now;
}

static 
#line 275
uint16_t TimerM$readTime(void)
{





  uint16_t t0;
  uint16_t t1 = TimerM$AlarmTimer$read();

#line 284
  do {
#line 284
      t0 = t1;
#line 284
      t1 = TimerM$AlarmTimer$read();
    }
  while (
#line 284
  t0 != t1);
  return t1;
}

static 
#line 94
void TimerM$insertTimer(uint8_t num, bool isshort)
{
  if (TimerM$m_timers[num].isqueued == FALSE) 
    {
      if (isshort) 
        {
          TimerM$m_timers[num].next = TimerM$m_head_short;
          TimerM$m_head_short = num;
        }
      else 
        {
          TimerM$m_timers[num].next = TimerM$m_head_long;
          TimerM$m_head_long = num;
        }
      TimerM$m_timers[num].isqueued = TRUE;
    }
  TimerM$m_timers[num].isset = TRUE;
}

static 
#line 198
void TimerM$setNextShortEvent(void)
{
  uint32_t now = TimerM$LocalTime$read();

#line 201
  if (TimerM$m_head_short != TimerM$EMPTY_LIST) 
    {
      uint8_t head = TimerM$m_head_short;
      uint8_t soon = head;
      int32_t remaining = TimerM$m_timers[head].alarm - now;

#line 206
      head = TimerM$m_timers[head].next;
      while (head != TimerM$EMPTY_LIST) 
        {
          int32_t dt = TimerM$m_timers[head].alarm - now;

#line 210
          if (dt < remaining) 
            {
              remaining = dt;
              soon = head;
            }
          head = TimerM$m_timers[head].next;
        }

      now = TimerM$LocalTime$read();
      remaining = TimerM$m_timers[soon].alarm - now;

      if (remaining <= 0) 
        {

          TimerM$AlarmControl$disableEvents();
          TimerM$post_checkShortTimers();
        }
      else 
        {


          { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
            {




              if (remaining > 2) {
                TimerM$AlarmCompare$setEventFromNow(remaining);
                }
              else {
#line 240
                TimerM$AlarmCompare$setEventFromNow(2);
                }
#line 241
              TimerM$AlarmControl$clearPendingInterrupt();
              TimerM$AlarmControl$enableEvents();
            }
#line 243
            __nesc_atomic_end(__nesc_atomic); }
        }
    }
  else 
    {

      TimerM$AlarmControl$disableEvents();
    }
}

static 
#line 141
void TimerM$executeTimers(uint8_t head)
{
  uint32_t now = TimerM$LocalTime$read();

#line 144
  while (head != TimerM$EMPTY_LIST) 
    {
      uint8_t num = head;
      bool signal_timer = FALSE;

      { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
        {
          TimerM$Timer_t *timer = &TimerM$m_timers[num];

#line 152
          head = timer->next;

          timer->isqueued = FALSE;

          if (timer->isset) 
            {
              int32_t remaining = timer->alarm - now;

#line 159
              timer->isset = FALSE;
              if (remaining <= 0) 
                {


                  if (timer->isperiodic) 
                    {
                      timer->alarm += TimerM$m_period[num];
                      TimerM$insertTimer(num, (int32_t )(timer->alarm - now) <= 0xffffL);
                    }
                  signal_timer = TRUE;
                }
              else 
                {

                  TimerM$insertTimer(num, remaining <= 0xffffL);
                }
            }
        }
#line 177
        __nesc_atomic_end(__nesc_atomic); }

      if (signal_timer) {
        TimerM$signal_timer_fired(num);
        }
    }
}

static   
# 108 "/tinyos-1.1.0/tinyos-1.x/tos/platform/telos/BusArbitrationM.nc"
result_t BusArbitrationM$BusArbitration$releaseBus(uint8_t id)
#line 108
{
  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 109
    {
      if (BusArbitrationM$state == BusArbitrationM$BUS_BUSY && BusArbitrationM$busid == id) {
          BusArbitrationM$state = BusArbitrationM$BUS_IDLE;





          if (BusArbitrationM$isBusReleasedPending == FALSE && TOS_post(BusArbitrationM$busReleased) == TRUE) {
            BusArbitrationM$isBusReleasedPending = TRUE;
            }
        }
    }
#line 121
    __nesc_atomic_end(__nesc_atomic); }
  return SUCCESS;
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
# 270 "../../tos/system/ChunkStorageC.nc"
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
          ChunkStorageC$page_ptr = 2 + 0;
        }

      if (ChunkStorageC$flashFull == TRUE || ChunkStorageC$page_ptr == ChunkStorageC$total_pages - 1) 
        {

          TOS_post(ChunkStorageC$eraser);
        }
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
# 324 "StreamC.nc"
void StreamC$writeDataStack(void)
{
  if (SUCCESS != StreamC$Stack$push(&StreamC$compact_ptr, sizeof(flashptr_t ), NULL)) 
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
# 117 "StreamC.nc"
void StreamC$ChunkStorage$writeDone(result_t res)
{
  if (StreamC$state == StreamC$APPEND) 
    {
      if (res == SUCCESS && StreamC$Tsave_ptr != NULL) {
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
      if (SUCCESS != StreamC$Stack$pop(&StreamC$compact_ptr, NULL)) 
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



  RootDirectoryM$root.timestamp = RootDirectoryM$LocalTime$read();


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
# 116 "../../tos/system/StackC.nc"
void StackC$ChunkStorage$writeDone(result_t res)
{
  if (res == SUCCESS && StackC$Tsave_ptr != NULL) {
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
#line 246
void StressTestC$format(void)
{
  if (SUCCESS != StressTestC$GenericFlash$erase(StressTestC$current)) 
    {
      StressTestC$Console$string("ERROR ! erase call failed\n");
      StressTestC$Leds$redOn();
    }

  StressTestC$current += 1;
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
# 114 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/HPLUSART0M.nc"
bool HPLUSART0M$USARTControl$isI2C(void)
#line 114
{
  bool _ret = FALSE;

  { __nesc_atomic_t __nesc_atomic = __nesc_atomic_start();
#line 117
    {
      if (U0CTL & 0x20 && U0CTL & 0x04 && U0CTL & 0x01) {
        _ret = TRUE;
        }
    }
#line 121
    __nesc_atomic_end(__nesc_atomic); }
  return _ret;
}

# 131 "/tinyos-1.1.0/tinyos-1.x/tos/platform/msp430/MSP430TimerM.nc"
void __attribute((interrupt(10))) __attribute((wakeup))  sig_TIMERA1_VECTOR(void)
{
  int n = TA0IV;

#line 134
  switch (n) 
    {
      case 0: break;
      case 2: 
        if (MSP430TimerM$ControlA1$getControl().cap) {
          MSP430TimerM$CaptureA1$captured(MSP430TimerM$CaptureA1$getEvent());
          }
        else {
#line 141
          MSP430TimerM$CompareA1$fired();
          }
#line 142
      break;
      case 4: 
        if (MSP430TimerM$ControlA2$getControl().cap) {
          MSP430TimerM$CaptureA2$captured(MSP430TimerM$CaptureA2$getEvent());
          }
        else {
#line 147
          MSP430TimerM$CompareA2$fired();
          }
#line 148
      break;
      case 6: break;
      case 8: break;
      case 10: MSP430TimerM$TimerA$overflow();
#line 151
      break;
      case 12: break;
      case 14: break;
    }
}

#line 285
void __attribute((interrupt(24))) __attribute((wakeup))  sig_TIMERB1_VECTOR(void)
{
  int n = TBIV;

#line 288
  switch (n) 
    {
      case 0: break;
      case 2: 
        if (MSP430TimerM$ControlB1$getControl().cap) {
          MSP430TimerM$CaptureB1$captured(MSP430TimerM$CaptureB1$getEvent());
          }
        else {
#line 295
          MSP430TimerM$CompareB1$fired();
          }
#line 296
      break;
      case 4: 
        if (MSP430TimerM$ControlB2$getControl().cap) {
          MSP430TimerM$CaptureB2$captured(MSP430TimerM$CaptureB2$getEvent());
          }
        else {
#line 301
          MSP430TimerM$CompareB2$fired();
          }
#line 302
      break;
      case 6: 
        if (MSP430TimerM$ControlB3$getControl().cap) {
          MSP430TimerM$CaptureB3$captured(MSP430TimerM$CaptureB3$getEvent());
          }
        else {
#line 307
          MSP430TimerM$CompareB3$fired();
          }
#line 308
      break;
      case 8: 
        if (MSP430TimerM$ControlB4$getControl().cap) {
          MSP430TimerM$CaptureB4$captured(MSP430TimerM$CaptureB4$getEvent());
          }
        else {
#line 313
          MSP430TimerM$CompareB4$fired();
          }
#line 314
      break;
      case 10: 
        if (MSP430TimerM$ControlB5$getControl().cap) {
          MSP430TimerM$CaptureB5$captured(MSP430TimerM$CaptureB5$getEvent());
          }
        else {
#line 319
          MSP430TimerM$CompareB5$fired();
          }
#line 320
      break;
      case 12: 
        if (MSP430TimerM$ControlB6$getControl().cap) {
          MSP430TimerM$CaptureB6$captured(MSP430TimerM$CaptureB6$getEvent());
          }
        else {
#line 325
          MSP430TimerM$CompareB6$fired();
          }
#line 326
      break;
      case 14: MSP430TimerM$TimerB$overflow();
#line 327
      break;
    }
}

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

