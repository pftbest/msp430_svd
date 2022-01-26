/* ============================================================================ */
/* Copyright (c) 2020, Texas Instruments Incorporated                           */
/*  All rights reserved.                                                        */
/*                                                                              */
/*  Redistribution and use in source and binary forms, with or without          */
/*  modification, are permitted provided that the following conditions          */
/*  are met:                                                                    */
/*                                                                              */
/*  *  Redistributions of source code must retain the above copyright           */
/*     notice, this list of conditions and the following disclaimer.            */
/*                                                                              */
/*  *  Redistributions in binary form must reproduce the above copyright        */
/*     notice, this list of conditions and the following disclaimer in the      */
/*     documentation and/or other materials provided with the distribution.     */
/*                                                                              */
/*  *  Neither the name of Texas Instruments Incorporated nor the names of      */
/*     its contributors may be used to endorse or promote products derived      */
/*     from this software without specific prior written permission.            */
/*                                                                              */
/*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" */
/*  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,       */
/*  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR      */
/*  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR            */
/*  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,       */
/*  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,         */
/*  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; */
/*  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,    */
/*  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR     */
/*  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,              */
/*  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.                          */
/* ============================================================================ */

/********************************************************************
*
* Standard register and bit definitions for the Texas Instruments
* MSP430 microcontroller.
*
* This file supports assembler and C development for
* MSP430xW42x devices.
*
* Texas Instruments, Version 2.8
*
* Rev. 2.1,  Alignment of defintions in Users Guide and of version numbers
* Rev. 2.11, Added SIFDACR
*            Added unsigned to SIFTSM definition
* Rev. 2.2,  Alignment of defintions in Users Guide and of version numbers
* Rev. 2.21, Changed Bitname form SIFLCOFF to SIFLCEN
*            Removed definition of LCDLOWR (not available at 4xx devices)
* Rev. 2.30, fixed Register name type from SIFTPSMV to SIFPSMV
* Rev. 2.31, fixed Register name for SIFDIV3_x (Dividor is *2)
* Rev. 2.4, Removed unused def of TASSEL2 / TBSSEL2
* Rev. 2.5, Added VLD bits in SVS module
* Rev. 2.6, Removed definitions for BTRESET
* Rev. 2.7, Fixed some errors in SIFDIV3_xx definitions
* Rev. 2.8, added definitions for Interrupt Vectors xxIV
*
********************************************************************/

#ifndef __msp430xW42x
#define __msp430xW42x

#define __MSP430_HEADER_VERSION__ 1212

#ifdef __cplusplus
extern "C" {
#endif


/*----------------------------------------------------------------------------*/
/* PERIPHERAL FILE MAP                                                        */
/*----------------------------------------------------------------------------*/

#define __MSP430_TI_HEADERS__

#include <iomacros.h>


/************************************************************
* STANDARD BITS
************************************************************/

#define BIT0                   (0x0001)
#define BIT1                   (0x0002)
#define BIT2                   (0x0004)
#define BIT3                   (0x0008)
#define BIT4                   (0x0010)
#define BIT5                   (0x0020)
#define BIT6                   (0x0040)
#define BIT7                   (0x0080)
#define BIT8                   (0x0100)
#define BIT9                   (0x0200)
#define BITA                   (0x0400)
#define BITB                   (0x0800)
#define BITC                   (0x1000)
#define BITD                   (0x2000)
#define BITE                   (0x4000)
#define BITF                   (0x8000)

/************************************************************
* STATUS REGISTER BITS
************************************************************/

#define C                      (0x0001)
#define Z                      (0x0002)
#define N                      (0x0004)
#define V                      (0x0100)
#define GIE                    (0x0008)
#define CPUOFF                 (0x0010)
#define OSCOFF                 (0x0020)
#define SCG0                   (0x0040)
#define SCG1                   (0x0080)

/* Low Power Modes coded with Bits 4-7 in SR */

#ifndef __STDC__ /* Begin #defines for assembler */
#define LPM0                   (CPUOFF)
#define LPM1                   (SCG0+CPUOFF)
#define LPM2                   (SCG1+CPUOFF)
#define LPM3                   (SCG1+SCG0+CPUOFF)
#define LPM4                   (SCG1+SCG0+OSCOFF+CPUOFF)
/* End #defines for assembler */

#else /* Begin #defines for C */
#define LPM0_bits              (CPUOFF)
#define LPM1_bits              (SCG0+CPUOFF)
#define LPM2_bits              (SCG1+CPUOFF)
#define LPM3_bits              (SCG1+SCG0+CPUOFF)
#define LPM4_bits              (SCG1+SCG0+OSCOFF+CPUOFF)

#include "in430.h"

#define LPM0      __bis_SR_register(LPM0_bits)         /* Enter Low Power Mode 0 */
#define LPM0_EXIT __bic_SR_register_on_exit(LPM0_bits) /* Exit Low Power Mode 0 */
#define LPM1      __bis_SR_register(LPM1_bits)         /* Enter Low Power Mode 1 */
#define LPM1_EXIT __bic_SR_register_on_exit(LPM1_bits) /* Exit Low Power Mode 1 */
#define LPM2      __bis_SR_register(LPM2_bits)         /* Enter Low Power Mode 2 */
#define LPM2_EXIT __bic_SR_register_on_exit(LPM2_bits) /* Exit Low Power Mode 2 */
#define LPM3      __bis_SR_register(LPM3_bits)         /* Enter Low Power Mode 3 */
#define LPM3_EXIT __bic_SR_register_on_exit(LPM3_bits) /* Exit Low Power Mode 3 */
#define LPM4      __bis_SR_register(LPM4_bits)         /* Enter Low Power Mode 4 */
#define LPM4_EXIT __bic_SR_register_on_exit(LPM4_bits) /* Exit Low Power Mode 4 */
#endif /* End #defines for C */

/************************************************************
* PERIPHERAL FILE MAP
************************************************************/

/************************************************************
* SPECIAL FUNCTION REGISTER ADDRESSES + CONTROL BITS
************************************************************/

sfr_b(IE1);                                   /* Interrupt Enable 1 */
#define WDTIE                  (0x01)
#define OFIE                   (0x02)
#define NMIIE                  (0x10)
#define ACCVIE                 (0x20)

sfr_b(IFG1);                                  /* Interrupt Flag 1 */
#define WDTIFG                 (0x01)
#define OFIFG                  (0x02)
#define NMIIFG                 (0x10)

sfr_b(IE2);                                   /* Interrupt Enable 2 */
#define BTIE                   (0x80)

sfr_b(IFG2);                                  /* Interrupt Flag 2 */
#define BTIFG                  (0x80)

/************************************************************
* WATCHDOG TIMER
************************************************************/
#define __MSP430_HAS_WDT__                    /* Definition to show that Module is available */

sfr_w(WDTCTL);                                /* Watchdog Timer Control */
/* The bit names have been prefixed with "WDT" */
#define WDTIS0                 (0x0001)
#define WDTIS1                 (0x0002)
#define WDTSSEL                (0x0004)
#define WDTCNTCL               (0x0008)
#define WDTTMSEL               (0x0010)
#define WDTNMI                 (0x0020)
#define WDTNMIES               (0x0040)
#define WDTHOLD                (0x0080)

#define WDTPW                  (0x5A00)

/* WDT-interval times [1ms] coded with Bits 0-2 */
/* WDT is clocked by fSMCLK (assumed 1MHz) */
#define WDT_MDLY_32         (WDTPW+WDTTMSEL+WDTCNTCL)                         /* 32ms interval (default) */
#define WDT_MDLY_8          (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS0)                  /* 8ms     " */
#define WDT_MDLY_0_5        (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS1)                  /* 0.5ms   " */
#define WDT_MDLY_0_064      (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS1+WDTIS0)           /* 0.064ms " */
/* WDT is clocked by fACLK (assumed 32KHz) */
#define WDT_ADLY_1000       (WDTPW+WDTTMSEL+WDTCNTCL+WDTSSEL)                 /* 1000ms  " */
#define WDT_ADLY_250        (WDTPW+WDTTMSEL+WDTCNTCL+WDTSSEL+WDTIS0)          /* 250ms   " */
#define WDT_ADLY_16         (WDTPW+WDTTMSEL+WDTCNTCL+WDTSSEL+WDTIS1)          /* 16ms    " */
#define WDT_ADLY_1_9        (WDTPW+WDTTMSEL+WDTCNTCL+WDTSSEL+WDTIS1+WDTIS0)   /* 1.9ms   " */
/* Watchdog mode -> reset after expired time */
/* WDT is clocked by fSMCLK (assumed 1MHz) */
#define WDT_MRST_32         (WDTPW+WDTCNTCL)                                  /* 32ms interval (default) */
#define WDT_MRST_8          (WDTPW+WDTCNTCL+WDTIS0)                           /* 8ms     " */
#define WDT_MRST_0_5        (WDTPW+WDTCNTCL+WDTIS1)                           /* 0.5ms   " */
#define WDT_MRST_0_064      (WDTPW+WDTCNTCL+WDTIS1+WDTIS0)                    /* 0.064ms " */
/* WDT is clocked by fACLK (assumed 32KHz) */
#define WDT_ARST_1000       (WDTPW+WDTCNTCL+WDTSSEL)                          /* 1000ms  " */
#define WDT_ARST_250        (WDTPW+WDTCNTCL+WDTSSEL+WDTIS0)                   /* 250ms   " */
#define WDT_ARST_16         (WDTPW+WDTCNTCL+WDTSSEL+WDTIS1)                   /* 16ms    " */
#define WDT_ARST_1_9        (WDTPW+WDTCNTCL+WDTSSEL+WDTIS1+WDTIS0)            /* 1.9ms   " */

/* INTERRUPT CONTROL */
/* These two bits are defined in the Special Function Registers */
/* #define WDTIE               0x01 */
/* #define WDTIFG              0x01 */

/************************************************************
* DIGITAL I/O Port1/2
************************************************************/
#define __MSP430_HAS_PORT1__                  /* Definition to show that Module is available */
#define __MSP430_HAS_PORT2__                  /* Definition to show that Module is available */

#define __MSP430_HAS_P1SEL__                  /* Define for DriverLib */
#define __MSP430_HAS_P2SEL__                  /* Define for DriverLib */

sfr_b(P1IN);                                  /* Port 1 Input */
sfr_b(P1OUT);                                 /* Port 1 Output */
sfr_b(P1DIR);                                 /* Port 1 Direction */
sfr_b(P1IFG);                                 /* Port 1 Interrupt Flag */
sfr_b(P1IES);                                 /* Port 1 Interrupt Edge Select */
sfr_b(P1IE);                                  /* Port 1 Interrupt Enable */
sfr_b(P1SEL);                                 /* Port 1 Selection */

sfr_b(P2IN);                                  /* Port 2 Input */
sfr_b(P2OUT);                                 /* Port 2 Output */
sfr_b(P2DIR);                                 /* Port 2 Direction */
sfr_b(P2IFG);                                 /* Port 2 Interrupt Flag */
sfr_b(P2IES);                                 /* Port 2 Interrupt Edge Select */
sfr_b(P2IE);                                  /* Port 2 Interrupt Enable */
sfr_b(P2SEL);                                 /* Port 2 Selection */

/************************************************************
* DIGITAL I/O Port3/4
************************************************************/
#define __MSP430_HAS_PORT3__                  /* Definition to show that Module is available */
#define __MSP430_HAS_PORT4__                  /* Definition to show that Module is available */

#define __MSP430_HAS_P3SEL__                  /* Define for DriverLib */
#define __MSP430_HAS_P4SEL__                  /* Define for DriverLib */

sfr_b(P3IN);                                  /* Port 3 Input */
sfr_b(P3OUT);                                 /* Port 3 Output */
sfr_b(P3DIR);                                 /* Port 3 Direction */
sfr_b(P3SEL);                                 /* Port 3 Selection */

sfr_b(P4IN);                                  /* Port 4 Input */
sfr_b(P4OUT);                                 /* Port 4 Output */
sfr_b(P4DIR);                                 /* Port 4 Direction */
sfr_b(P4SEL);                                 /* Port 4 Selection */

/************************************************************
* DIGITAL I/O Port5/6
************************************************************/
#define __MSP430_HAS_PORT5__                  /* Definition to show that Module is available */
#define __MSP430_HAS_PORT6__                  /* Definition to show that Module is available */

#define __MSP430_HAS_P5SEL__                  /* Define for DriverLib */
#define __MSP430_HAS_P6SEL__                  /* Define for DriverLib */

sfr_b(P5IN);                                  /* Port 5 Input */
sfr_b(P5OUT);                                 /* Port 5 Output */
sfr_b(P5DIR);                                 /* Port 5 Direction */
sfr_b(P5SEL);                                 /* Port 5 Selection */

sfr_b(P6IN);                                  /* Port 6 Input */
sfr_b(P6OUT);                                 /* Port 6 Output */
sfr_b(P6DIR);                                 /* Port 6 Direction */
sfr_b(P6SEL);                                 /* Port 6 Selection */

/************************************************************
* BASIC TIMER
************************************************************/
#define __MSP430_HAS_BT__                     /* Definition to show that Module is available */

sfr_b(BTCTL);                                 /* Basic Timer Control */
/* The bit names have been prefixed with "BT" */
#define BTIP0                  (0x01)
#define BTIP1                  (0x02)
#define BTIP2                  (0x04)
#define BTFRFQ0                (0x08)
#define BTFRFQ1                (0x10)
#define BTDIV                  (0x20)         /* fCLK2 = ACLK:256 */
#define BTHOLD                 (0x40)         /* BT1 is held if this bit is set */
#define BTSSEL                 (0x80)         /* fBT = fMCLK (main clock) */

sfr_b(BTCNT1);                                /* Basic Timer Count 1 */
sfr_b(BTCNT2);                                /* Basic Timer Count 2 */

/* Frequency of the BTCNT2 coded with Bit 5 and 7 in BTCTL */
#define BT_fCLK2_ACLK          (0x00)
#define BT_fCLK2_ACLK_DIV256   (BTDIV)
#define BT_fCLK2_MCLK          (BTSSEL)

/* Interrupt interval time fINT coded with Bits 0-2 in BTCTL */
#define BT_fCLK2_DIV2          (0x00)         /* fINT = fCLK2:2 (default) */
#define BT_fCLK2_DIV4          (BTIP0)        /* fINT = fCLK2:4 */
#define BT_fCLK2_DIV8          (BTIP1)        /* fINT = fCLK2:8 */
#define BT_fCLK2_DIV16         (BTIP1+BTIP0)  /* fINT = fCLK2:16 */
#define BT_fCLK2_DIV32         (BTIP2)        /* fINT = fCLK2:32 */
#define BT_fCLK2_DIV64         (BTIP2+BTIP0)  /* fINT = fCLK2:64 */
#define BT_fCLK2_DIV128        (BTIP2+BTIP1)  /* fINT = fCLK2:128 */
#define BT_fCLK2_DIV256     (BTIP2+BTIP1+BTIP0)       /* fINT = fCLK2:256 */
/* Frequency of LCD coded with Bits 3-4 */
#define BT_fLCD_DIV32          (0x00)         /* fLCD = fACLK:32 (default) */
#define BT_fLCD_DIV64          (BTFRFQ0)      /* fLCD = fACLK:64 */
#define BT_fLCD_DIV128         (BTFRFQ1)      /* fLCD = fACLK:128 */
#define BT_fLCD_DIV256      (BTFRFQ1+BTFRFQ0)         /* fLCD = fACLK:256 */
/* LCD frequency values with fBT=fACLK */
#define BT_fLCD_1K             (0x00)         /* fACLK:32 (default) */
#define BT_fLCD_512            (BTFRFQ0)      /* fACLK:64 */
#define BT_fLCD_256            (BTFRFQ1)      /* fACLK:128 */
#define BT_fLCD_128         (BTFRFQ1+BTFRFQ0)         /* fACLK:256 */
/* LCD frequency values with fBT=fMCLK */
#define BT_fLCD_31K            (BTSSEL)       /* fMCLK:32 */
#define BT_fLCD_15_5K       (BTSSEL+BTFRFQ0)          /* fMCLK:64 */
#define BT_fLCD_7_8K        (BTSSEL+BTFRFQ1+BTFRFQ0)  /* fMCLK:256 */
/* with assumed vlues of fACLK=32KHz, fMCLK=1MHz */
/* fBT=fACLK is thought for longer interval times */
#define BT_ADLY_0_064          (0x00)         /* 0.064ms interval (default) */
#define BT_ADLY_0_125          (BTIP0)        /* 0.125ms    " */
#define BT_ADLY_0_25           (BTIP1)        /* 0.25ms     " */
#define BT_ADLY_0_5            (BTIP1+BTIP0)  /* 0.5ms      " */
#define BT_ADLY_1              (BTIP2)        /* 1ms        " */
#define BT_ADLY_2              (BTIP2+BTIP0)  /* 2ms        " */
#define BT_ADLY_4              (BTIP2+BTIP1)  /* 4ms        " */
#define BT_ADLY_8           (BTIP2+BTIP1+BTIP0)       /* 8ms        " */
#define BT_ADLY_16             (BTDIV)        /* 16ms       " */
#define BT_ADLY_32             (BTDIV+BTIP0)  /* 32ms       " */
#define BT_ADLY_64             (BTDIV+BTIP1)  /* 64ms       " */
#define BT_ADLY_125         (BTDIV+BTIP1+BTIP0)       /* 125ms      " */
#define BT_ADLY_250            (BTDIV+BTIP2)  /* 250ms      " */
#define BT_ADLY_500         (BTDIV+BTIP2+BTIP0)       /* 500ms      " */
#define BT_ADLY_1000        (BTDIV+BTIP2+BTIP1)       /* 1000ms     " */
#define BT_ADLY_2000        (BTDIV+BTIP2+BTIP1+BTIP0) /* 2000ms     " */
/* fCLK2=fMCLK (1MHz) is thought for short interval times */
/* the timing for short intervals is more precise than ACLK */
/* NOTE */
/* Be sure that the SCFQCTL-Register is set to 01Fh so that fMCLK=1MHz */
/* Too low interval time results in interrupts too frequent for the processor to handle! */
#define BT_MDLY_0_002          (BTSSEL)       /* 0.002ms interval       *** interval times */
#define BT_MDLY_0_004          (BTSSEL+BTIP0) /* 0.004ms    "           *** too short for */
#define BT_MDLY_0_008          (BTSSEL+BTIP1) /* 0.008ms    "           *** interrupt */
#define BT_MDLY_0_016       (BTSSEL+BTIP1+BTIP0)      /* 0.016ms    "           *** handling */
#define BT_MDLY_0_032          (BTSSEL+BTIP2) /* 0.032ms    " */
#define BT_MDLY_0_064       (BTSSEL+BTIP2+BTIP0)      /* 0.064ms    " */
#define BT_MDLY_0_125       (BTSSEL+BTIP2+BTIP1)      /* 0.125ms    " */
#define BT_MDLY_0_25        (BTSSEL+BTIP2+BTIP1+BTIP0)/* 0.25ms     " */

/* Reset/Hold coded with Bits 6-7 in BT(1)CTL */
/* this is for BT */
//#define BTRESET_CNT1        (BTRESET)           /* BTCNT1 is reset while BTRESET is set */
//#define BTRESET_CNT1_2      (BTRESET+BTDIV)     /* BTCNT1 .AND. BTCNT2 are reset while ~ is set */
/* this is for BT1 */
#define BTHOLD_CNT1            (BTHOLD)       /* BTCNT1 is held while BTHOLD is set */
#define BTHOLD_CNT1_2          (BTHOLD+BTDIV) /* BT1CNT1 .AND. BT1CNT2 are held while ~ is set */

/* INTERRUPT CONTROL BITS */
/* #define BTIE                0x80 */
/* #define BTIFG               0x80 */

/************************************************************
* SYSTEM CLOCK, FLL+ (x41x)
************************************************************/
#define __MSP430_HAS_FLLPLUS_SMALL__                /* Definition to show that Module is available */

sfr_b(SCFI0);                                 /* System Clock Frequency Integrator 0 */
#define FN_2                   (0x04)         /* fDCOCLK =   1.4-12MHz*/
#define FN_3                   (0x08)         /* fDCOCLK =   2.2-17Mhz*/
#define FN_4                   (0x10)         /* fDCOCLK =   3.2-25Mhz*/
#define FN_8                   (0x20)         /* fDCOCLK =     5-40Mhz*/
#define FLLD0                  (0x40)         /* Loop Divider Bit : 0 */
#define FLLD1                  (0x80)         /* Loop Divider Bit : 1 */

#define FLLD_1                 (0x00)         /* Multiply Selected Loop Freq. By 1 */
#define FLLD_2                 (0x40)         /* Multiply Selected Loop Freq. By 2 */
#define FLLD_4                 (0x80)         /* Multiply Selected Loop Freq. By 4 */
#define FLLD_8                 (0xC0)         /* Multiply Selected Loop Freq. By 8 */

sfr_b(SCFI1);                                 /* System Clock Frequency Integrator 1 */
sfr_b(SCFQCTL);                               /* System Clock Frequency Control */
/* System clock frequency values fMCLK coded with Bits 0-6 in SCFQCTL */
/* #define SCFQ_32K            0x00                        fMCLK=1*fACLK       only a range from */
#define SCFQ_64K               (0x01)         /* fMCLK=2*fACLK          1+1 to 127+1 is possible */
#define SCFQ_128K              (0x03)         /* fMCLK=4*fACLK */
#define SCFQ_256K              (0x07)         /* fMCLK=8*fACLK */
#define SCFQ_512K              (0x0F)         /* fMCLK=16*fACLK */
#define SCFQ_1M                (0x1F)         /* fMCLK=32*fACLK */
#define SCFQ_2M                (0x3F)         /* fMCLK=64*fACLK */
#define SCFQ_4M                (0x7F)         /* fMCLK=128*fACLK */
#define SCFQ_M                 (0x80)         /* Modulation Disable */

sfr_b(FLL_CTL0);                              /* FLL+ Control 0 */
#define DCOF                   (0x01)         /* DCO Fault Flag */
#define LFOF                   (0x02)         /* Low Frequency Oscillator Fault Flag */
#define XT1OF                  (0x04)         /* High Frequency Oscillator Fault Flag */
#define OSCCAP0                (0x10)         /* XIN/XOUT Cap 0 */
#define OSCCAP1                (0x20)         /* XIN/XOUT Cap 1 */
#define XTS_FLL                (0x40)         /* 1: Selects high-freq. oscillator */
#define DCOPLUS                (0x80)         /* DCO+ Enable */

#define XCAP0PF                (0x00)         /* XIN Cap = XOUT Cap = 0pf */
#define XCAP10PF               (0x10)         /* XIN Cap = XOUT Cap = 10pf */
#define XCAP14PF               (0x20)         /* XIN Cap = XOUT Cap = 14pf */
#define XCAP18PF               (0x30)         /* XIN Cap = XOUT Cap = 18pf */
#define OSCCAP_0               (0x00)         /* XIN Cap = XOUT Cap = 0pf */
#define OSCCAP_1               (0x10)         /* XIN Cap = XOUT Cap = 10pf */
#define OSCCAP_2               (0x20)         /* XIN Cap = XOUT Cap = 14pf */
#define OSCCAP_3               (0x30)         /* XIN Cap = XOUT Cap = 18pf */

sfr_b(FLL_CTL1);                              /* FLL+ Control 1 */
#define FLL_DIV0               (0x01)         /* FLL+ Divide Px.x/ACLK 0 */
#define FLL_DIV1               (0x02)         /* FLL+ Divide Px.x/ACLK 1 */

#define FLL_DIV_1              (0x00)         /* FLL+ Divide Px.x/ACLK By 1 */
#define FLL_DIV_2              (0x01)         /* FLL+ Divide Px.x/ACLK By 2 */
#define FLL_DIV_4              (0x02)         /* FLL+ Divide Px.x/ACLK By 4 */
#define FLL_DIV_8              (0x03)         /* FLL+ Divide Px.x/ACLK By 8 */

/* INTERRUPT CONTROL BITS */
/* These two bits are defined in the Special Function Registers */
/* #define OFIFG               0x02 */
/* #define OFIE                0x02 */

/************************************************************
* Brown-Out, Supply Voltage Supervision (SVS)
************************************************************/
#define __MSP430_HAS_SVS__                    /* Definition to show that Module is available */

sfr_b(SVSCTL);                                /* SVS Control */
#define SVSFG                  (0x01)         /* SVS Flag */
#define SVSOP                  (0x02)         /* SVS output (read only) */
#define SVSON                  (0x04)         /* Switches the SVS on/off */
#define PORON                  (0x08)         /* Enable POR Generation if Low Voltage */
#define VLD0                   (0x10)
#define VLD1                   (0x20)
#define VLD2                   (0x40)
#define VLD3                   (0x80)

#define VLDON                  (0x10)
#define VLDOFF                 (0x00)
#define VLD_1_8V               (0x10)

/************************************************************
* LCD
************************************************************/
#define __MSP430_HAS_LCD4__                   /* Definition to show that Module is available */

sfr_b(LCDCTL);                                /* LCD Control */
/* the names of the mode bits are different from the spec */
#define LCDON                  (0x01)
//#define LCDLOWR             (0x02)
#define LCDSON                 (0x04)
#define LCDMX0                 (0x08)
#define LCDMX1                 (0x10)
#define LCDP0                  (0x20)
#define LCDP1                  (0x40)
#define LCDP2                  (0x80)
/* Display modes coded with Bits 2-4 */
#define LCDSTATIC              (LCDSON)
#define LCD2MUX                (LCDMX0+LCDSON)
#define LCD3MUX                (LCDMX1+LCDSON)
#define LCD4MUX                (LCDMX1+LCDMX0+LCDSON)
/* Group select code with Bits 5-7                     Seg.lines   Dig.output */
#define LCDSG0                 (0x00)         /* ---------   Port Only (default) */
#define LCDSG0_1               (LCDP0)        /* S0  - S15   see Datasheet */
#define LCDSG0_2               (LCDP1)        /* S0  - S19   see Datasheet */
#define LCDSG0_3               (LCDP1+LCDP0)  /* S0  - S23   see Datasheet */
#define LCDSG0_4               (LCDP2)        /* S0  - S27   see Datasheet */
#define LCDSG0_5               (LCDP2+LCDP0)  /* S0  - S31   see Datasheet */
#define LCDSG0_6               (LCDP2+LCDP1)  /* S0  - S35   see Datasheet */
#define LCDSG0_7            (LCDP2+LCDP1+LCDP0)       /* S0  - S39   see Datasheet */
/* NOTE: YOU CAN ONLY USE THE 'S' OR 'G' DECLARATIONS FOR A COMMAND */
/* MOV  #LCDSG0_3+LCDOG2_7,&LCDCTL ACTUALY MEANS MOV  #LCDP1,&LCDCTL! */
#define LCDOG1_7               (0x00)         /* ---------   Port Only (default) */
#define LCDOG2_7               (LCDP0)        /* S0  - S15   see Datasheet */
#define LCDOG3_7               (LCDP1)        /* S0  - S19   see Datasheet */
#define LCDOG4_7               (LCDP1+LCDP0)  /* S0  - S23   see Datasheet */
#define LCDOG5_7               (LCDP2)        /* S0  - S27   see Datasheet */
#define LCDOG6_7               (LCDP2+LCDP0)  /* S0  - S31   see Datasheet */
#define LCDOG7                 (LCDP2+LCDP1)  /* S0  - S35   see Datasheet */
#define LCDOGOFF            (LCDP2+LCDP1+LCDP0)       /* S0  - S39   see Datasheet */

#define LCDMEM_                (0x0091)       /* LCD Memory */
#ifndef __STDC__
#define LCDMEM                 (LCDMEM_)      /* LCD Memory (for assembler) */
#else
#define LCDMEM                 ((volatile char*)       LCDMEM_) /* LCD Memory (for C) */
#endif
sfr_b(LCDM1);                                 /* LCD Memory 1 */
sfr_b(LCDM2);                                 /* LCD Memory 2 */
sfr_b(LCDM3);                                 /* LCD Memory 3 */
sfr_b(LCDM4);                                 /* LCD Memory 4 */
sfr_b(LCDM5);                                 /* LCD Memory 5 */
sfr_b(LCDM6);                                 /* LCD Memory 6 */
sfr_b(LCDM7);                                 /* LCD Memory 7 */
sfr_b(LCDM8);                                 /* LCD Memory 8 */
sfr_b(LCDM9);                                 /* LCD Memory 9 */
sfr_b(LCDM10);                                /* LCD Memory 10 */
sfr_b(LCDM11);                                /* LCD Memory 11 */
sfr_b(LCDM12);                                /* LCD Memory 12 */
sfr_b(LCDM13);                                /* LCD Memory 13 */
sfr_b(LCDM14);                                /* LCD Memory 14 */
sfr_b(LCDM15);                                /* LCD Memory 15 */
sfr_b(LCDM16);                                /* LCD Memory 16 */
sfr_b(LCDM17);                                /* LCD Memory 17 */
sfr_b(LCDM18);                                /* LCD Memory 18 */
sfr_b(LCDM19);                                /* LCD Memory 19 */
sfr_b(LCDM20);                                /* LCD Memory 20 */

#define LCDMA                  (LCDM10)       /* LCD Memory A */
#define LCDMB                  (LCDM11)       /* LCD Memory B */
#define LCDMC                  (LCDM12)       /* LCD Memory C */
#define LCDMD                  (LCDM13)       /* LCD Memory D */
#define LCDME                  (LCDM14)       /* LCD Memory E */
#define LCDMF                  (LCDM15)       /* LCD Memory F */

/************************************************************
* Timer0_A3
************************************************************/
#define __MSP430_HAS_TA3__                    /* Definition to show that Module is available */

sfr_w(TA0IV);                                 /* Timer0_A3 Interrupt Vector Word */
sfr_w(TA0CTL);                                /* Timer0_A3 Control */
sfr_w(TA0CCTL0);                              /* Timer0_A3 Capture/Compare Control 0 */
sfr_w(TA0CCTL1);                              /* Timer0_A3 Capture/Compare Control 1 */
sfr_w(TA0CCTL2);                              /* Timer0_A3 Capture/Compare Control 2 */
sfr_w(TA0R);                                  /* Timer0_A3 Counter Register */
sfr_w(TA0CCR0);                               /* Timer0_A3 Capture/Compare 0 */
sfr_w(TA0CCR1);                               /* Timer0_A3 Capture/Compare 1 */
sfr_w(TA0CCR2);                               /* Timer0_A3 Capture/Compare 2 */

/* Alternate register names */
#define TAIV                   TA0IV          /* Timer A Interrupt Vector Word */
#define TACTL                  TA0CTL         /* Timer A Control */
#define TACCTL0                TA0CCTL0       /* Timer A Capture/Compare Control 0 */
#define TACCTL1                TA0CCTL1       /* Timer A Capture/Compare Control 1 */
#define TACCTL2                TA0CCTL2       /* Timer A Capture/Compare Control 2 */
#define TAR                    TA0R           /* Timer A Counter Register */
#define TACCR0                 TA0CCR0        /* Timer A Capture/Compare 0 */
#define TACCR1                 TA0CCR1        /* Timer A Capture/Compare 1 */
#define TACCR2                 TA0CCR2        /* Timer A Capture/Compare 2 */
#define TAIV_                  TA0IV_         /* Timer A Interrupt Vector Word */
#define TACTL_                 TA0CTL_        /* Timer A Control */
#define TACCTL0_               TA0CCTL0_      /* Timer A Capture/Compare Control 0 */
#define TACCTL1_               TA0CCTL1_      /* Timer A Capture/Compare Control 1 */
#define TACCTL2_               TA0CCTL2_      /* Timer A Capture/Compare Control 2 */
#define TAR_                   TA0R_          /* Timer A Counter Register */
#define TACCR0_                TA0CCR0_       /* Timer A Capture/Compare 0 */
#define TACCR1_                TA0CCR1_       /* Timer A Capture/Compare 1 */
#define TACCR2_                TA0CCR2_       /* Timer A Capture/Compare 2 */

/* Alternate register names 2 */
#define CCTL0                  TACCTL0        /* Timer A Capture/Compare Control 0 */
#define CCTL1                  TACCTL1        /* Timer A Capture/Compare Control 1 */
#define CCTL2                  TACCTL2        /* Timer A Capture/Compare Control 2 */
#define CCR0                   TACCR0         /* Timer A Capture/Compare 0 */
#define CCR1                   TACCR1         /* Timer A Capture/Compare 1 */
#define CCR2                   TACCR2         /* Timer A Capture/Compare 2 */
#define CCTL0_                 TACCTL0_       /* Timer A Capture/Compare Control 0 */
#define CCTL1_                 TACCTL1_       /* Timer A Capture/Compare Control 1 */
#define CCTL2_                 TACCTL2_       /* Timer A Capture/Compare Control 2 */
#define CCR0_                  TACCR0_        /* Timer A Capture/Compare 0 */
#define CCR1_                  TACCR1_        /* Timer A Capture/Compare 1 */
#define CCR2_                  TACCR2_        /* Timer A Capture/Compare 2 */

#define TASSEL1                (0x0200)       /* Timer A clock source select 1 */
#define TASSEL0                (0x0100)       /* Timer A clock source select 0 */
#define ID1                    (0x0080)       /* Timer A clock input divider 1 */
#define ID0                    (0x0040)       /* Timer A clock input divider 0 */
#define MC1                    (0x0020)       /* Timer A mode control 1 */
#define MC0                    (0x0010)       /* Timer A mode control 0 */
#define TACLR                  (0x0004)       /* Timer A counter clear */
#define TAIE                   (0x0002)       /* Timer A counter interrupt enable */
#define TAIFG                  (0x0001)       /* Timer A counter interrupt flag */

#define MC_0                   (0x0000)       /* Timer A mode control: 0 - Stop */
#define MC_1                   (0x0010)       /* Timer A mode control: 1 - Up to CCR0 */
#define MC_2                   (0x0020)       /* Timer A mode control: 2 - Continous up */
#define MC_3                   (0x0030)       /* Timer A mode control: 3 - Up/Down */
#define ID_0                   (0x0000)       /* Timer A input divider: 0 - /1 */
#define ID_1                   (0x0040)       /* Timer A input divider: 1 - /2 */
#define ID_2                   (0x0080)       /* Timer A input divider: 2 - /4 */
#define ID_3                   (0x00C0)       /* Timer A input divider: 3 - /8 */
#define TASSEL_0               (0x0000)       /* Timer A clock source select: 0 - TACLK */
#define TASSEL_1               (0x0100)       /* Timer A clock source select: 1 - ACLK  */
#define TASSEL_2               (0x0200)       /* Timer A clock source select: 2 - SMCLK */
#define TASSEL_3               (0x0300)       /* Timer A clock source select: 3 - INCLK */

#define CM1                    (0x8000)       /* Capture mode 1 */
#define CM0                    (0x4000)       /* Capture mode 0 */
#define CCIS1                  (0x2000)       /* Capture input select 1 */
#define CCIS0                  (0x1000)       /* Capture input select 0 */
#define SCS                    (0x0800)       /* Capture sychronize */
#define SCCI                   (0x0400)       /* Latched capture signal (read) */
#define CAP                    (0x0100)       /* Capture mode: 1 /Compare mode : 0 */
#define OUTMOD2                (0x0080)       /* Output mode 2 */
#define OUTMOD1                (0x0040)       /* Output mode 1 */
#define OUTMOD0                (0x0020)       /* Output mode 0 */
#define CCIE                   (0x0010)       /* Capture/compare interrupt enable */
#define CCI                    (0x0008)       /* Capture input signal (read) */
#define OUT                    (0x0004)       /* PWM Output signal if output mode 0 */
#define COV                    (0x0002)       /* Capture/compare overflow flag */
#define CCIFG                  (0x0001)       /* Capture/compare interrupt flag */

#define OUTMOD_0               (0x0000)       /* PWM output mode: 0 - output only */
#define OUTMOD_1               (0x0020)       /* PWM output mode: 1 - set */
#define OUTMOD_2               (0x0040)       /* PWM output mode: 2 - PWM toggle/reset */
#define OUTMOD_3               (0x0060)       /* PWM output mode: 3 - PWM set/reset */
#define OUTMOD_4               (0x0080)       /* PWM output mode: 4 - toggle */
#define OUTMOD_5               (0x00A0)       /* PWM output mode: 5 - Reset */
#define OUTMOD_6               (0x00C0)       /* PWM output mode: 6 - PWM toggle/set */
#define OUTMOD_7               (0x00E0)       /* PWM output mode: 7 - PWM reset/set */
#define CCIS_0                 (0x0000)       /* Capture input select: 0 - CCIxA */
#define CCIS_1                 (0x1000)       /* Capture input select: 1 - CCIxB */
#define CCIS_2                 (0x2000)       /* Capture input select: 2 - GND */
#define CCIS_3                 (0x3000)       /* Capture input select: 3 - Vcc */
#define CM_0                   (0x0000)       /* Capture mode: 0 - disabled */
#define CM_1                   (0x4000)       /* Capture mode: 1 - pos. edge */
#define CM_2                   (0x8000)       /* Capture mode: 1 - neg. edge */
#define CM_3                   (0xC000)       /* Capture mode: 1 - both edges */

/* T0_A3IV Definitions */
#define TA0IV_NONE             (0x0000)       /* No Interrupt pending */
#define TA0IV_TACCR1           (0x0002)       /* TA0CCR1_CCIFG */
#define TA0IV_TACCR2           (0x0004)       /* TA0CCR2_CCIFG */
#define TA0IV_6                (0x0006)       /* Reserved */
#define TA0IV_8                (0x0008)       /* Reserved */
#define TA0IV_TAIFG            (0x000A)       /* TA0IFG */

/************************************************************
* Timer1_A5
************************************************************/
#define __MSP430_HAS_T1A5__                   /* Definition to show that Module is available */

sfr_w(TA1IV);                                 /* Timer1_A5 Interrupt Vector Word */
sfr_w(TA1CTL);                                /* Timer1_A5 Control */
sfr_w(TA1CCTL0);                              /* Timer1_A5 Capture/Compare Control 0 */
sfr_w(TA1CCTL1);                              /* Timer1_A5 Capture/Compare Control 1 */
sfr_w(TA1CCTL2);                              /* Timer1_A5 Capture/Compare Control 2 */
sfr_w(TA1CCTL3);                              /* Timer1_A5 Capture/Compare Control 3 */
sfr_w(TA1CCTL4);                              /* Timer1_A5 Capture/Compare Control 4 */
sfr_w(TA1R);                                  /* Timer1_A5 Counter Register */
sfr_w(TA1CCR0);                               /* Timer1_A5 Capture/Compare 0 */
sfr_w(TA1CCR1);                               /* Timer1_A5 Capture/Compare 1 */
sfr_w(TA1CCR2);                               /* Timer1_A5 Capture/Compare 2 */
sfr_w(TA1CCR3);                               /* Timer1_A5 Capture/Compare 3 */
sfr_w(TA1CCR4);                               /* Timer1_A5 Capture/Compare 4 */

/* Bits are already defined within the Timer0_Ax */

/* T1_A5IV Definitions */
#define TA1IV_NONE             (0x0000)       /* No Interrupt pending */
#define TA1IV_TACCR1           (0x0002)       /* TA1CCR1_CCIFG */
#define TA1IV_TACCR2           (0x0004)       /* TA1CCR2_CCIFG */
#define TA1IV_TACCR3           (0x0006)       /* TA1CCR3_CCIFG */
#define TA1IV_TACCR4           (0x0008)       /* TA1CCR4_CCIFG */
#define TA1IV_TAIFG            (0x000A)       /* TA1IFG */

/*************************************************************
* Flash Memory
*************************************************************/
#define __MSP430_HAS_FLASH__                  /* Definition to show that Module is available */

sfr_w(FCTL1);                                 /* FLASH Control 1 */
sfr_w(FCTL2);                                 /* FLASH Control 2 */
sfr_w(FCTL3);                                 /* FLASH Control 3 */

#define FRKEY                  (0x9600)       /* Flash key returned by read */
#define FWKEY                  (0xA500)       /* Flash key for write */
#define FXKEY                  (0x3300)       /* for use with XOR instruction */

#define ERASE                  (0x0002)       /* Enable bit for Flash segment erase */
#define MERAS                  (0x0004)       /* Enable bit for Flash mass erase */
#define WRT                    (0x0040)       /* Enable bit for Flash write */
#define BLKWRT                 (0x0080)       /* Enable bit for Flash segment write */
#define SEGWRT                 (0x0080)       /* old definition */ /* Enable bit for Flash segment write */

#define FN0                    (0x0001)       /* Divide Flash clock by 1 to 64 using FN0 to FN5 according to: */
#define FN1                    (0x0002)       /*  32*FN5 + 16*FN4 + 8*FN3 + 4*FN2 + 2*FN1 + FN0 + 1 */
#ifndef FN2
#define FN2                    (0x0004)
#endif
#ifndef FN3
#define FN3                    (0x0008)
#endif
#ifndef FN4
#define FN4                    (0x0010)
#endif
#define FN5                    (0x0020)
#define FSSEL0                 (0x0040)       /* Flash clock select 0 */        /* to distinguish from USART SSELx */
#define FSSEL1                 (0x0080)       /* Flash clock select 1 */

#define FSSEL_0                (0x0000)       /* Flash clock select: 0 - ACLK */
#define FSSEL_1                (0x0040)       /* Flash clock select: 1 - MCLK */
#define FSSEL_2                (0x0080)       /* Flash clock select: 2 - SMCLK */
#define FSSEL_3                (0x00C0)       /* Flash clock select: 3 - SMCLK */

#define BUSY                   (0x0001)       /* Flash busy: 1 */
#define KEYV                   (0x0002)       /* Flash Key violation flag */
#define ACCVIFG                (0x0004)       /* Flash Access violation flag */
#define WAIT                   (0x0008)       /* Wait flag for segment write */
#define LOCK                   (0x0010)       /* Lock bit: 1 - Flash is locked (read only) */
#define EMEX                   (0x0020)       /* Flash Emergency Exit */

/************************************************************
* Comparator A
************************************************************/
#define __MSP430_HAS_COMPA__                  /* Definition to show that Module is available */

sfr_b(CACTL1);                                /* Comparator A Control 1 */
sfr_b(CACTL2);                                /* Comparator A Control 2 */
sfr_b(CAPD);                                  /* Comparator A Port Disable */

#define CAIFG                  (0x01)         /* Comp. A Interrupt Flag */
#define CAIE                   (0x02)         /* Comp. A Interrupt Enable */
#define CAIES                  (0x04)         /* Comp. A Int. Edge Select: 0:rising / 1:falling */
#define CAON                   (0x08)         /* Comp. A enable */
#define CAREF0                 (0x10)         /* Comp. A Internal Reference Select 0 */
#define CAREF1                 (0x20)         /* Comp. A Internal Reference Select 1 */
#define CARSEL                 (0x40)         /* Comp. A Internal Reference Enable */
#define CAEX                   (0x80)         /* Comp. A Exchange Inputs */

#define CAREF_0                (0x00)         /* Comp. A Int. Ref. Select 0 : Off */
#define CAREF_1                (0x10)         /* Comp. A Int. Ref. Select 1 : 0.25*Vcc */
#define CAREF_2                (0x20)         /* Comp. A Int. Ref. Select 2 : 0.5*Vcc */
#define CAREF_3                (0x30)         /* Comp. A Int. Ref. Select 3 : Vt*/

#define CAOUT                  (0x01)         /* Comp. A Output */
#define CAF                    (0x02)         /* Comp. A Enable Output Filter */
#define P2CA0                  (0x04)         /* Comp. A Connect External Signal to CA0 : 1 */
#define P2CA1                  (0x08)         /* Comp. A Connect External Signal to CA1 : 1 */
#define CACTL24                (0x10)
#define CACTL25                (0x20)
#define CACTL26                (0x40)
#define CACTL27                (0x80)

#define CAPD0                  (0x01)         /* Comp. A Disable Input Buffer of Port Register .0 */
#define CAPD1                  (0x02)         /* Comp. A Disable Input Buffer of Port Register .1 */
#define CAPD2                  (0x04)         /* Comp. A Disable Input Buffer of Port Register .2 */
#define CAPD3                  (0x08)         /* Comp. A Disable Input Buffer of Port Register .3 */
#define CAPD4                  (0x10)         /* Comp. A Disable Input Buffer of Port Register .4 */
#define CAPD5                  (0x20)         /* Comp. A Disable Input Buffer of Port Register .5 */
#define CAPD6                  (0x40)         /* Comp. A Disable Input Buffer of Port Register .6 */
#define CAPD7                  (0x80)         /* Comp. A Disable Input Buffer of Port Register .7 */

/************************************************************
* Scan-I/F
************************************************************/
#define __MSP430_HAS_SCANIF__                 /* Definition to show that Module is available */

sfr_w(SIFDEBUG);                              /* SIF, Debug Register */
sfr_w(SIFCNT);                                /* SIF, Counter1/2 */
sfr_w(SIFPSMV);                               /* SIF, Processing State Machine */
sfr_w(SIFCTL1);                               /* SIF, Control Register 1 */
sfr_w(SIFCTL2);                               /* SIF, Control Register 2 */
sfr_w(SIFCTL3);                               /* SIF, Control Register 3 */
sfr_w(SIFCTL4);                               /* SIF, Control Register 4 */
sfr_w(SIFCTL5);                               /* SIF, Control Register 5 */
#define SIFDACR_               (0x01C0)       /* SIF, Digital to Analog Conv. 0 */
#ifndef __STDC__
#define SIFDACR                (SIFDACR_)     /* SIF, Digital to Analog Conv. Memory (for assembler) */
#else
#define SIFDACR                ((unsigned     int*) SIFDACR_) /* SIF, Digital to Analog Conv. Memory (for C) */
#endif
sfr_w(SIFDACR0);                              /* SIF, Digital to Analog Conv. 0 */
sfr_w(SIFDACR1);                              /* SIF, Digital to Analog Conv. 1 */
sfr_w(SIFDACR2);                              /* SIF, Digital to Analog Conv. 2 */
sfr_w(SIFDACR3);                              /* SIF, Digital to Analog Conv. 3 */
sfr_w(SIFDACR4);                              /* SIF, Digital to Analog Conv. 4 */
sfr_w(SIFDACR5);                              /* SIF, Digital to Analog Conv. 5 */
sfr_w(SIFDACR6);                              /* SIF, Digital to Analog Conv. 6 */
sfr_w(SIFDACR7);                              /* SIF, Digital to Analog Conv. 7 */
#define SIFTSM_                (0x01D0)       /* SIF, Timing State Machine 0 */
#ifndef __STDC__
#define SIFTSM                 (SIFTSM_)      /* SIF, Timing State Machine (for assembler) */
#else
#define SIFTSM                 ((unsigned     int*) SIFTSM_) /* SIF, Timing State Machine (for C) */
#endif
sfr_w(SIFTSM0);                               /* SIF, Timing State Machine 0 */
sfr_w(SIFTSM1);                               /* SIF, Timing State Machine 1 */
sfr_w(SIFTSM2);                               /* SIF, Timing State Machine 2 */
sfr_w(SIFTSM3);                               /* SIF, Timing State Machine 3 */
sfr_w(SIFTSM4);                               /* SIF, Timing State Machine 4 */
sfr_w(SIFTSM5);                               /* SIF, Timing State Machine 5 */
sfr_w(SIFTSM6);                               /* SIF, Timing State Machine 6 */
sfr_w(SIFTSM7);                               /* SIF, Timing State Machine 7 */
sfr_w(SIFTSM8);                               /* SIF, Timing State Machine 8 */
sfr_w(SIFTSM9);                               /* SIF, Timing State Machine 9 */
sfr_w(SIFTSM10);                              /* SIF, Timing State Machine 10 */
sfr_w(SIFTSM11);                              /* SIF, Timing State Machine 11 */
sfr_w(SIFTSM12);                              /* SIF, Timing State Machine 12 */
sfr_w(SIFTSM13);                              /* SIF, Timing State Machine 13 */
sfr_w(SIFTSM14);                              /* SIF, Timing State Machine 14 */
sfr_w(SIFTSM15);                              /* SIF, Timing State Machine 15 */
sfr_w(SIFTSM16);                              /* SIF, Timing State Machine 16 */
sfr_w(SIFTSM17);                              /* SIF, Timing State Machine 17 */
sfr_w(SIFTSM18);                              /* SIF, Timing State Machine 18 */
sfr_w(SIFTSM19);                              /* SIF, Timing State Machine 19 */
sfr_w(SIFTSM20);                              /* SIF, Timing State Machine 20 */
sfr_w(SIFTSM21);                              /* SIF, Timing State Machine 21 */
sfr_w(SIFTSM22);                              /* SIF, Timing State Machine 22 */
sfr_w(SIFTSM23);                              /* SIF, Timing State Machine 23 */

/* SIFCTL1 */
#define SIFEN                  (0x0001)       /* SIF Enable */
#define SIFTESTD               (0x0002)       /* SIF 0:Normal / 1:Test Mode */
#define SIFIFG0                (0x0004)       /* SIF Interrupt Flag 0 */
#define SIFIFG1                (0x0008)       /* SIF Interrupt Flag 1 */
#define SIFIFG2                (0x0010)       /* SIF Interrupt Flag 2 */
#define SIFIFG3                (0x0020)       /* SIF Interrupt Flag 3 */
#define SIFIFG4                (0x0040)       /* SIF Interrupt Flag 4 */
#define SIFIFG5                (0x0080)       /* SIF Interrupt Flag 5 */
#define SIFIFG6                (0x0100)       /* SIF Interrupt Flag 6 */
#define SIFIE0                 (0x0200)       /* SIF Interrupt Enable 0 */
#define SIFIE1                 (0x0400)       /* SIF Interrupt Enable 1 */
#define SIFIE2                 (0x0800)       /* SIF Interrupt Enable 2 */
#define SIFIE3                 (0x1000)       /* SIF Interrupt Enable 3 */
#define SIFIE4                 (0x2000)       /* SIF Interrupt Enable 4 */
#define SIFIE5                 (0x4000)       /* SIF Interrupt Enable 5 */
#define SIFIE6                 (0x8000)       /* SIF Interrupt Enable 6 */

/* SIFCTL2 */
#define SIFTCH0OUT             (0x0001)       /* SIF TCH0 result */
#define SIFTCH1OUT             (0x0002)       /* SIF TCH1 result */
#define SIFTCH00               (0x0004)       /* SIF 1. Channel select 0 */
#define SIFTCH01               (0x0008)       /* SIF 1. Channel select 1 */
#define SIFTCH10               (0x0010)       /* SIF 2. Channel select 0 */
#define SIFTCH11               (0x0020)       /* SIF 2. Channel select 1 */
#define SIFTEN                 (0x0040)       /* SIF Enable Transistors */
#define SIFSH                  (0x0080)       /* SIF Sample on/off */
#define SIFVCC2                (0x0100)       /* SIF VCC/2 Generator off/on */
#define SIFVSS                 (0x0200)       /* SIF Select Terminal for sample Cap. */
#define SIFCACI3               (0x0400)       /* SIF Selection of SIFCI3 */
#define SIFCISEL               (0x0800)       /* SIF Comparator Input Select */
#define SIFCAX                 (0x1000)       /* SIF Select CA Source */
#define SIFCAINV               (0x2000)       /* SIF Invert CA Output 0:off/1:on */
#define SIFCAON                (0x4000)       /* SIF Switch CA on */
#define SIFDACON               (0x8000)       /* SIF Switch DAC on */

/* SIFCTL3 */
#define SIF0OUT                (0x0001)       /* SIF Sensor 0 Out */
#define SIF1OUT                (0x0002)       /* SIF Sensor 1 Out */
#define SIF2OUT                (0x0004)       /* SIF Sensor 2 Out */
#define SIF3OUT                (0x0008)       /* SIF Sensor 3 Out */
#define SIFIFGSET0             (0x0010)       /* SIF SIFIFG0 level select */
#define SIFIFGSET1             (0x0020)       /* SIF SIFIFG1 level select */
#define SIFIFGSET2             (0x0040)       /* SIF SIFIFG2 level select */
#define SIFCS                  (0x0080)       /* SIF Capture Select */
#define SIFIS10                (0x0100)       /* SIF SIFIFG3 Int.Flag Source 0 */
#define SIFIS11                (0x0200)       /* SIF SIFIFG3 Int.Flag Source 1 */
#define SIFIS20                (0x0400)       /* SIF SIFIFG4 Int.Flag Source 0 */
#define SIFIS21                (0x0800)       /* SIF SIFIFG4 Int.Flag Source 1 */
#define SIFS10                 (0x1000)       /* SIF S1 Source Select 0 */
#define SIFS11                 (0x2000)       /* SIF S1 Source Select 1 */
#define SIFS20                 (0x4000)       /* SIF S2 Source Select 0 */
#define SIFS21                 (0x8000)       /* SIF S2 Source Select 1 */

#define SIFIS1_0               (0x0000)       /* SIF SIFIFG3 set with each count of SIFCNT1 */
#define SIFIS1_1               (0x0100)       /* SIF SIFIFG3 set if (SIFCNT1 mod  4)=0 */
#define SIFIS1_2               (0x0200)       /* SIF SIFIFG3 set if (SIFCNT1 mod 64)=0 */
#define SIFIS1_3               (0x0300)       /* SIF SIFIFG3 set if SIFCNT1 rolls over */
#define SIFIS2_0               (0x0000)       /* SIF SIFIFG4 set with each count of SIFCNT2 */
#define SIFIS2_1               (0x0400)       /* SIF SIFIFG4 set if (SIFCNT2 mod  4)=0 */
#define SIFIS2_2               (0x0800)       /* SIF SIFIFG4 set if (SIFCNT2 mod 64)=0 */
#define SIFIS2_3               (0x0C00)       /* SIF SIFIFG4 set if SIFCNT2 rolls over */
#define SIFS1_0                (0x0000)       /* SIF S1 Source : SIF0OUT */
#define SIFS1_1                (0x1000)       /* SIF S1 Source : SIF1OUT */
#define SIFS1_2                (0x2000)       /* SIF S1 Source : SIF2OUT */
#define SIFS1_3                (0x3000)       /* SIF S1 Source : SIF3OUT */
#define SIFS2_0                (0x0000)       /* SIF S2 Source : SIF0OUT */
#define SIFS2_1                (0x4000)       /* SIF S2 Source : SIF1OUT */
#define SIFS2_2                (0x8000)       /* SIF S2 Source : SIF2OUT */
#define SIFS2_3                (0xC000)       /* SIF S2 Source : SIF3OUT */

/* SIFCTL4 */
#define SIFDIV10               (0x0001)       /* SIF Clock Divider 1.0 */
#define SIFDIV11               (0x0002)       /* SIF Clock Divider 1.1 */
#define SIFDIV20               (0x0004)       /* SIF Clock Divider 2.0 */
#define SIFDIV21               (0x0008)       /* SIF Clock Divider 2.1 */
#define SIFDIV3A0              (0x0010)       /* SIF Clock Divider 3.0 */
#define SIFDIV3A1              (0x0020)       /* SIF Clock Divider 3.1 */
#define SIFDIV3A2              (0x0040)       /* SIF Clock Divider 3.2 */
#define SIFDIV3B0              (0x0080)       /* SIF Clock Divider 3.3 */
#define SIFDIV3B1              (0x0100)       /* SIF Clock Divider 3.4 */
#define SIFDIV3B2              (0x0200)       /* SIF Clock Divider 3.5 */
#define SIFQ6EN                (0x0400)       /* SIF Feedback 6 Enable */
#define SIFQ7EN                (0x0800)       /* SIF Feedback 7 Enable */
#define SIFCNT1ENP             (0x1000)       /* SIF Enable SIFCNT1 up count */
#define SIFCNT1ENM             (0x2000)       /* SIF Enable SIFCNT1 down count */
#define SIFCNT2EN              (0x4000)       /* SIF Enable SIFCNT2 count */
#define SIFCNTRST              (0x8000)       /* SIF Enable Counter Reset on Read */

#define SIFDIV1_1              (0x0000)       /* SIF Clock Divider 1: /1 */
#define SIFDIV1_2              (0x0001)       /* SIF Clock Divider 1: /2 */
#define SIFDIV1_4              (0x0002)       /* SIF Clock Divider 1: /4 */
#define SIFDIV1_8              (0x0003)       /* SIF Clock Divider 1: /8 */
#define SIFDIV2_1              (0x0000)       /* SIF Clock Divider 2: /1 */
#define SIFDIV2_2              (0x0004)       /* SIF Clock Divider 2: /2 */
#define SIFDIV2_4              (0x0008)       /* SIF Clock Divider 2: /4 */
#define SIFDIV2_8              (0x000C)       /* SIF Clock Divider 2: /8 */

#define SIFDIV3_2              (0x0000)       /* SIF Clock Divider 3: /2 */
#define SIFDIV3_6              (0x0010)       /* SIF Clock Divider 3: /6 */
#define SIFDIV3_10             (0x0020)       /* SIF Clock Divider 3: /10 */
#define SIFDIV3_14             (0x0030)       /* SIF Clock Divider 3: /14 */
#define SIFDIV3_18             (0x0040)       /* SIF Clock Divider 3: /18 */
#define SIFDIV3_22             (0x0050)       /* SIF Clock Divider 3: /22 */
#define SIFDIV3_26             (0x0060)       /* SIF Clock Divider 3: /26 */
#define SIFDIV3_30             (0x0070)       /* SIF Clock Divider 3: /30 */
#define SIFDIV3_42             (0x00B0)       /* SIF Clock Divider 3: /42 */
#define SIFDIV3_50             (0x0120)       /* SIF Clock Divider 3: /50 */
#define SIFDIV3_54             (0x00C0)       /* SIF Clock Divider 3: /54 */
#define SIFDIV3_66             (0x00D0)       /* SIF Clock Divider 3: /66 */
#define SIFDIV3_70             (0x0130)       /* SIF Clock Divider 3: /70 */
#define SIFDIV3_78             (0x00E0)       /* SIF Clock Divider 3: /78 */
#define SIFDIV3_90             (0x00F0)       /* SIF Clock Divider 3: /90 */
#define SIFDIV3_98             (0x01B0)       /* SIF Clock Divider 3: /98 */
#define SIFDIV3_110            (0x0150)       /* SIF Clock Divider 3: /110 */
#define SIFDIV3_126            (0x01C0)       /* SIF Clock Divider 3: /126 */
#define SIFDIV3_130            (0x0160)       /* SIF Clock Divider 3: /130 */
#define SIFDIV3_150            (0x0170)       /* SIF Clock Divider 3: /150 */
#define SIFDIV3_154            (0x01D0)       /* SIF Clock Divider 3: /154 */
#define SIFDIV3_162            (0x0240)       /* SIF Clock Divider 3: /162 */
#define SIFDIV3_182            (0x01E0)       /* SIF Clock Divider 3: /182 */
#define SIFDIV3_198            (0x0250)       /* SIF Clock Divider 3: /198 */
#define SIFDIV3_210            (0x01F0)       /* SIF Clock Divider 3: /210 */
#define SIFDIV3_234            (0x0260)       /* SIF Clock Divider 3: /234 */
#define SIFDIV3_242            (0x02D0)       /* SIF Clock Divider 3: /242 */
#define SIFDIV3_270            (0x0270)       /* SIF Clock Divider 3: /270 */
#define SIFDIV3_286            (0x02E0)       /* SIF Clock Divider 3: /286 */
#define SIFDIV3_330            (0x02F0)       /* SIF Clock Divider 3: /330 */
#define SIFDIV3_338            (0x0360)       /* SIF Clock Divider 3: /338 */
#define SIFDIV3_390            (0x0370)       /* SIF Clock Divider 3: /390 */
#define SIFDIV3_450            (0x03F0)       /* SIF Clock Divider 3: /450 */

/* SIFCTL5 */
#define SIFCLKEN               (0x0001)       /* SIF 0:SMCLK for SIFCLK / 1:SIFCLKG for SIFCLK */
#define SIFCLKGON              (0x0002)       /* SIF Switch SIFCLKG on */
#define SIFFNOM                (0x0004)       /* SIF Select Nominal Frequ. 0:4MHz / 1:1MHz */
#define SIFCLKFQ0              (0x0008)       /* SIF Clock Generator frequency adjust 0 */
#define SIFCLKFQ1              (0x0010)       /* SIF Clock Generator frequency adjust 1 */
#define SIFCLKFQ2              (0x0020)       /* SIF Clock Generator frequency adjust 2 */
#define SIFCLKFQ3              (0x0040)       /* SIF Clock Generator frequency adjust 3 */
#define SIFTSMRP               (0x0080)       /* SIF Timing State Machine Repeat mode */
#define SIFCNT30               (0x0100)       /* SIF Counter 3.0 */
#define SIFCNT31               (0x0200)       /* SIF Counter 3.1 */
#define SIFCNT32               (0x0400)       /* SIF Counter 3.2 */
#define SIFCNT33               (0x0800)       /* SIF Counter 3.3 */
#define SIFCNT34               (0x1000)       /* SIF Counter 3.4 */
#define SIFCNT35               (0x2000)       /* SIF Counter 3.5 */
#define SIFCNT36               (0x4000)       /* SIF Counter 3.6 */
#define SIFCNT37               (0x8000)       /* SIF Counter 3.7 */

/* SIFTSM */
#define SIFCH0                 (0x0001)       /* SIF Select channel for tsm: 0 */
#define SIFCH1                 (0x0002)       /* SIF Select channel for tsm: 1 */
#define SIFLCEN                (0x0004)       /* SIF LC enable */
#define SIFEX                  (0x0008)       /* SIF  */
#define SIFCA                  (0x0010)       /* SIF  */
#define SIFCLKON               (0x0020)       /* SIF  */
#define SIFRSON                (0x0040)       /* SIF  */
#define SIFTESTS1              (0x0080)       /* SIF  */
#define SIFDAC                 (0x0100)       /* SIF  */
#define SIFSTOP                (0x0200)       /* SIF  */
#define SIFACLK                (0x0400)       /* SIF  */
#define SIFREPEAT0             (0x0800)       /* SIF  */
#define SIFREPEAT1             (0x1000)       /* SIF  */
#define SIFREPEAT2             (0x2000)       /* SIF  */
#define SIFREPEAT3             (0x4000)       /* SIF  */
#define SIFREPEAT4             (0x8000)       /* SIF  */

/************************************************************
* Interrupt Vectors (offset from 0xFFE0)
************************************************************/

#define BASICTIMER_VECTOR       ( 1)                     /* 0xFFE0 Basic Timer */
#define PORT2_VECTOR            ( 2)                     /* 0xFFE2 Port 2 */
#define PORT1_VECTOR            ( 5)                     /* 0xFFE8 Port 1 */
#define TIMER0_A1_VECTOR        ( 6)                     /* 0xFFEA Timer0_A CC1-2, TA0 */
#define TIMER0_A0_VECTOR        ( 7)                     /* 0xFFEC Timer0_A CC0 */
#define SCANIF_VECTOR           (10)                     /* 0xFFF2 Scan Inteface */
#define WDT_VECTOR              (11)                     /* 0xFFF4 Watchdog Timer */
#define COMPARATORA_VECTOR      (12)                     /* 0xFFF6 Comparator A */
#define TIMER1_A1_VECTOR        (13)                     /* 0xFFF8 Timer1_A CC1-4, TA1 */
#define TIMER1_A0_VECTOR        (14)                     /* 0xFFFA Timer1_A CC0 */
#define NMI_VECTOR              (15)                     /* 0xFFFC Non-maskable */
#define RESET_VECTOR            ("reset")                /* 0xFFFE Reset [Highest Priority] */

/* Alternate Names */

/************************************************************
* End of Modules
************************************************************/

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* #ifndef __msp430xW42x */

