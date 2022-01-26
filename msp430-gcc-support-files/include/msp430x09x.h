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

/******************************************************************************/
/* Legacy Header File                                                         */
/* Not recommended for use in new projects.                                   */
/* Please use the msp430.h file or the device specific header file            */
/******************************************************************************/

/********************************************************************
*
* Standard register and bit definitions for the Texas Instruments
* MSP430 microcontroller.
*
* This file supports assembler and C development for
* MSP430x09x devices.
*
* Texas Instruments, Version 1.1
*
* Rev. 1.0, Initial Release
* Rev. 1.0, Added LCMP : A-POOL Latch comparator
*
*
********************************************************************/

#ifndef __msp430x09x
#define __msp430x09x

#define __MSP430_HAS_MSP430XV2_CPU__                /* Definition to show that it has MSP430XV2 CPU */

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
* A-POOL
************************************************************/
#define __MSP430_HAS_APOOL__                  /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_APOOL__ 0x01A0
#define APOOL_BASE             __MSP430_BASEADDRESS_APOOL__

sfr_w(APCNF);                                 /* A-POOL Configuration Register */
sfr_b(APCNF_L);                               /* A-POOL Configuration Register */
sfr_b(APCNF_H);                               /* A-POOL Configuration Register */
sfr_w(APCTL);                                 /* A-POOL Control Register 1 */
sfr_b(APCTL_L);                               /* A-POOL Control Register 1 */
sfr_b(APCTL_H);                               /* A-POOL Control Register 1 */
sfr_w(APOMR);                                 /* A-POOL Operation Mode Register 2 */
sfr_b(APOMR_L);                               /* A-POOL Operation Mode Register 2 */
sfr_b(APOMR_H);                               /* A-POOL Operation Mode Register 2 */
sfr_w(APVDIV);                                /* A-POOL Voltage Divider Register 3 */
sfr_b(APVDIV_L);                              /* A-POOL Voltage Divider Register 3 */
sfr_b(APVDIV_H);                              /* A-POOL Voltage Divider Register 3 */
sfr_w(APTRIM);                                /* A-POOL trimming register */
sfr_b(APTRIM_L);                              /* A-POOL trimming register */
sfr_b(APTRIM_H);                              /* A-POOL trimming register */
sfr_w(APINT);                                 /* A-POOL Integer Conversion Register */
sfr_b(APINT_L);                               /* A-POOL Integer Conversion Register */
sfr_b(APINT_H);                               /* A-POOL Integer Conversion Register */
sfr_w(APINTB);                                /* A-POOL Integer Conversion Buffer Register */
sfr_b(APINTB_L);                              /* A-POOL Integer Conversion Buffer Register */
sfr_b(APINTB_H);                              /* A-POOL Integer Conversion Buffer Register */
sfr_w(APFRACT);                               /* A-POOL Fractional Conversion Register */
sfr_b(APFRACT_L);                             /* A-POOL Fractional Conversion Register */
sfr_b(APFRACT_H);                             /* A-POOL Fractional Conversion Register */
sfr_w(APFRACTB);                              /* A-POOL Fractional Conversion Buffer Register */
sfr_b(APFRACTB_L);                            /* A-POOL Fractional Conversion Buffer Register */
sfr_b(APFRACTB_H);                            /* A-POOL Fractional Conversion Buffer Register */
sfr_w(APIFG);                                 /* A-POOL Interrupt Flag Register */
sfr_b(APIFG_L);                               /* A-POOL Interrupt Flag Register */
sfr_b(APIFG_H);                               /* A-POOL Interrupt Flag Register */
sfr_w(APIE);                                  /* A-POOL Interrupt Enable Register */
sfr_b(APIE_L);                                /* A-POOL Interrupt Enable Register */
sfr_b(APIE_H);                                /* A-POOL Interrupt Enable Register */
sfr_w(APIV);                                  /* A-POOL Interrupt Vector Word */
sfr_b(APIV_L);                                /* A-POOL Interrupt Vector Word */
sfr_b(APIV_H);                                /* A-POOL Interrupt Vector Word */

/* APCNF Control Bits */
#define TA0EN                  (0x0001)       /* A-POOL TimerA0 trigger enable */
#define TA1EN                  (0x0002)       /* A-POOL TimerA1 trigger enable */
#define DFSET0                 (0x0004)       /* A-POOL Deglitch Filter Bit: 0 */
#define DFSET1                 (0x0008)       /* A-POOL Deglitch Filter Bit: 1 */
#define LCMP                   (0x0010)       /* A-POOL Latch comparator */
#define CMPON                  (0x0020)       /* A-POOL Comparator enable */
#define DBON                   (0x0040)       /* A-POOL DAC buffer enable signal */
#define CONVON                 (0x0080)       /* A-POOL Enable for converter's resistor ladder */
#define CLKSEL0                (0x0100)       /* A-POOL Conversion clock select Bit: 0 */
#define CLKSEL1                (0x0200)       /* A-POOL Conversion clock select Bit: 1 */
#define EOCBU                  (0x0400)       /* A-POOL Enable bit for loading conversion buffer */
#define ATBU                   (0x0800)       /* A-POOL Automatic update of conversion register */
#define A3PSEL                 (0x1000)       /* A-POOL Analog input A3 access Bit */
#define APREFON                (0x2000)       /* A-POOL Internal voltage reference enable */
#define VREFEN                 (0x4000)       /* A-POOL Reference voltage pin enable */
//#define RESERVED             (0x8000)  /* A-POOL */

/* APCNF Control Bits */
#define TA0EN_L                (0x0001)       /* A-POOL TimerA0 trigger enable */
#define TA1EN_L                (0x0002)       /* A-POOL TimerA1 trigger enable */
#define DFSET0_L               (0x0004)       /* A-POOL Deglitch Filter Bit: 0 */
#define DFSET1_L               (0x0008)       /* A-POOL Deglitch Filter Bit: 1 */
#define LCMP_L                 (0x0010)       /* A-POOL Latch comparator */
#define CMPON_L                (0x0020)       /* A-POOL Comparator enable */
#define DBON_L                 (0x0040)       /* A-POOL DAC buffer enable signal */
#define CONVON_L               (0x0080)       /* A-POOL Enable for converter's resistor ladder */
//#define RESERVED             (0x8000)  /* A-POOL */

/* APCNF Control Bits */
#define CLKSEL0_H              (0x0001)       /* A-POOL Conversion clock select Bit: 0 */
#define CLKSEL1_H              (0x0002)       /* A-POOL Conversion clock select Bit: 1 */
#define EOCBU_H                (0x0004)       /* A-POOL Enable bit for loading conversion buffer */
#define ATBU_H                 (0x0008)       /* A-POOL Automatic update of conversion register */
#define A3PSEL_H               (0x0010)       /* A-POOL Analog input A3 access Bit */
#define APREFON_H              (0x0020)       /* A-POOL Internal voltage reference enable */
#define VREFEN_H               (0x0040)       /* A-POOL Reference voltage pin enable */
//#define RESERVED             (0x8000)  /* A-POOL */

#define DFSET_0                (0x0000)       /* A-POOL Deglitch Filter select: 0 */
#define DFSET_1                (0x0004)       /* A-POOL Deglitch Filter select: 1 */
#define DFSET_2                (0x0008)       /* A-POOL Deglitch Filter select: 2 */
#define DFSET_3                (0x000C)       /* A-POOL Deglitch Filter select: 3 */

#define CLKSEL_0               (0x0000)       /* A-POOL Conversion clock select: 0 */
#define CLKSEL_1               (0x0100)       /* A-POOL Conversion clock select: 1 */
#define CLKSEL_2               (0x0200)       /* A-POOL Conversion clock select: 2 */
#define CLKSEL_VLOCLK          (0x0000)       /* A-POOL Conversion clock select: VLOCLK */
#define CLKSEL_MCLK            (0x0100)       /* A-POOL Conversion clock select: MCLK */
#define CLKSEL_SMCLK           (0x0200)       /* A-POOL Conversion clock select: SMCLK */

/* APCTL Control Bits */
#define ODEN                   (0x0001)       /* A-POOL Output driver enable */
#define OSWP                   (0x0002)       /* A-POOL Output swap */
#define OSEL                   (0x0004)       /* A-POOL Output buffer select */
#define SLOPE                  (0x0008)       /* A-POOL Slope select of converter */
#define APNSEL0                (0x0010)       /* A-POOL Neg. Channel Input Select 0 */
#define APNSEL1                (0x0020)       /* A-POOL Neg. Channel Input Select 1 */
#define APNSEL2                (0x0040)       /* A-POOL Neg. Channel Input Select 2 */
#define APNSEL3                (0x0080)       /* A-POOL Neg. Channel Input Select 3 */
#define RUNSTOP                (0x0100)       /* A-POOL Converter's Run/Stop bit */
#define SBSTP                  (0x0200)       /* A-POOL Saturation based conversion stop enable */
#define CBSTP                  (0x0400)       /* A-POOL Comparator based conversion stop enable */
#define TBSTP                  (0x0800)       /* A-POOL Timer based conversion stop enable for TimerA0 */
#define APPSEL0                (0x1000)       /* A-POOL Pos. Channel Input Select 0 */
#define APPSEL1                (0x2000)       /* A-POOL Pos. Channel Input Select 1 */
#define APPSEL2                (0x4000)       /* A-POOL Pos. Channel Input Select 2 */
#define APPSEL3                (0x8000)       /* A-POOL Pos. Channel Input Select 3 */

/* APCTL Control Bits */
#define ODEN_L                 (0x0001)       /* A-POOL Output driver enable */
#define OSWP_L                 (0x0002)       /* A-POOL Output swap */
#define OSEL_L                 (0x0004)       /* A-POOL Output buffer select */
#define SLOPE_L                (0x0008)       /* A-POOL Slope select of converter */
#define APNSEL0_L              (0x0010)       /* A-POOL Neg. Channel Input Select 0 */
#define APNSEL1_L              (0x0020)       /* A-POOL Neg. Channel Input Select 1 */
#define APNSEL2_L              (0x0040)       /* A-POOL Neg. Channel Input Select 2 */
#define APNSEL3_L              (0x0080)       /* A-POOL Neg. Channel Input Select 3 */

/* APCTL Control Bits */
#define RUNSTOP_H              (0x0001)       /* A-POOL Converter's Run/Stop bit */
#define SBSTP_H                (0x0002)       /* A-POOL Saturation based conversion stop enable */
#define CBSTP_H                (0x0004)       /* A-POOL Comparator based conversion stop enable */
#define TBSTP_H                (0x0008)       /* A-POOL Timer based conversion stop enable for TimerA0 */
#define APPSEL0_H              (0x0010)       /* A-POOL Pos. Channel Input Select 0 */
#define APPSEL1_H              (0x0020)       /* A-POOL Pos. Channel Input Select 1 */
#define APPSEL2_H              (0x0040)       /* A-POOL Pos. Channel Input Select 2 */
#define APPSEL3_H              (0x0080)       /* A-POOL Pos. Channel Input Select 3 */

#define APNSEL_0               (0x0000)       /* A-POOL V- terminal Input Select: Channel 0 */
#define APNSEL_1               (0x0010)       /* A-POOL V- terminal Input Select: Channel 1 */
#define APNSEL_2               (0x0020)       /* A-POOL V- terminal Input Select: Channel 2 */
#define APNSEL_3               (0x0030)       /* A-POOL V- terminal Input Select: Channel 3 */
#define APNSEL_4               (0x0040)       /* A-POOL V- terminal Input Select: Channel 4 */
#define APNSEL_5               (0x0050)       /* A-POOL V- terminal Input Select: Channel 5 */
#define APNSEL_6               (0x0060)       /* A-POOL V- terminal Input Select: Channel 6 */
#define APNSEL_7               (0x0070)       /* A-POOL V- terminal Input Select: Channel 7 */

#define APPSEL_0               (0x0000)       /* A-POOL V+ Terminal Input Select: Channel 0 */
#define APPSEL_1               (0x1000)       /* A-POOL V+ Terminal Input Select: Channel 1 */
#define APPSEL_2               (0x2000)       /* A-POOL V+ Terminal Input Select: Channel 2 */
#define APPSEL_3               (0x3000)       /* A-POOL V+ Terminal Input Select: Channel 3 */
#define APPSEL_4               (0x4000)       /* A-POOL V+ Terminal Input Select: Channel 4 */
#define APPSEL_5               (0x5000)       /* A-POOL V+ Terminal Input Select: Channel 5 */
#define APPSEL_6               (0x6000)       /* A-POOL V+ Terminal Input Select: Channel 6 */
#define APPSEL_7               (0x7000)       /* A-POOL V+ Terminal Input Select: Channel 7 */
#define APPSEL_8               (0x8000)       /* A-POOL V+ Terminal Input Select: Channel 8 */

/* APVDIV Control Bits */
#define A0DIV                  (0x0001)       /* A-POOL Analog channel #0 voltage divider control */
#define A1DIV                  (0x0002)       /* A-POOL Analog channel #1 voltage divider control */
#define A2DIV0                 (0x0004)       /* A-POOL Analog channel #2 voltage divider control Bit : 0 */
#define A2DIV1                 (0x0008)       /* A-POOL Analog channel #2 voltage divider control Bit : 1 */
#define A3DIV0                 (0x0010)       /* A-POOL Analog channel #3 voltage divider control Bit : 0 */
#define A3DIV1                 (0x0020)       /* A-POOL Analog channel #3 voltage divider control Bit : 0 */
#define TMPSEN                 (0x0040)       /* A-POOL Temperature sensor enable */
#define VCCDIVEN               (0x0080)       /* A-POOL VCC voltage divider enable */
//#define RESERVED             (0x0100)  /* A-POOL */
//#define RESERVED             (0x0200)  /* A-POOL */
#define CLKTRIM0               (0x0400)       /* A-POOL Clock trimming Bit : 0 */
#define CLKTRIM1               (0x0800)       /* A-POOL Clock trimming Bit : 1 */
//#define RESERVED             (0x1000)  /* A-POOL */
//#define RESERVED             (0x2000)  /* A-POOL */
//#define RESERVED             (0x4000)  /* A-POOL */
//#define RESERVED             (0x8000)  /* A-POOL */

/* APVDIV Control Bits */
#define A0DIV_L                (0x0001)       /* A-POOL Analog channel #0 voltage divider control */
#define A1DIV_L                (0x0002)       /* A-POOL Analog channel #1 voltage divider control */
#define A2DIV0_L               (0x0004)       /* A-POOL Analog channel #2 voltage divider control Bit : 0 */
#define A2DIV1_L               (0x0008)       /* A-POOL Analog channel #2 voltage divider control Bit : 1 */
#define A3DIV0_L               (0x0010)       /* A-POOL Analog channel #3 voltage divider control Bit : 0 */
#define A3DIV1_L               (0x0020)       /* A-POOL Analog channel #3 voltage divider control Bit : 0 */
#define TMPSEN_L               (0x0040)       /* A-POOL Temperature sensor enable */
#define VCCDIVEN_L             (0x0080)       /* A-POOL VCC voltage divider enable */
//#define RESERVED             (0x0100)  /* A-POOL */
//#define RESERVED             (0x0200)  /* A-POOL */
//#define RESERVED             (0x1000)  /* A-POOL */
//#define RESERVED             (0x2000)  /* A-POOL */
//#define RESERVED             (0x4000)  /* A-POOL */
//#define RESERVED             (0x8000)  /* A-POOL */

/* APVDIV Control Bits */
//#define RESERVED             (0x0100)  /* A-POOL */
//#define RESERVED             (0x0200)  /* A-POOL */
#define CLKTRIM0_H             (0x0004)       /* A-POOL Clock trimming Bit : 0 */
#define CLKTRIM1_H             (0x0008)       /* A-POOL Clock trimming Bit : 1 */
//#define RESERVED             (0x1000)  /* A-POOL */
//#define RESERVED             (0x2000)  /* A-POOL */
//#define RESERVED             (0x4000)  /* A-POOL */
//#define RESERVED             (0x8000)  /* A-POOL */

#define A2DIV_0                (0x0000)       /* A-POOL Analog channel #2 voltage divider control: 0 */
#define A2DIV_1                (0x0004)       /* A-POOL Analog channel #2 voltage divider control: 1 */
#define A2DIV_2                (0x0008)       /* A-POOL Analog channel #2 voltage divider control: 2 */
#define A2DIV_3                (0x000C)       /* A-POOL Analog channel #2 voltage divider control: 3 */

#define A3DIV_0                (0x0000)       /* A-POOL Analog channel #3 voltage divider control: 0 */
#define A3DIV_1                (0x0010)       /* A-POOL Analog channel #3 voltage divider control: 1 */
#define A3DIV_2                (0x0020)       /* A-POOL Analog channel #3 voltage divider control: 2 */
#define A3DIV_3                (0x0030)       /* A-POOL Analog channel #3 voltage divider control: 3 */

#define CLKTRIM_0              (0x0000)       /* A-POOL Clock trimming: 0 */
#define CLKTRIM_1              (0x0400)       /* A-POOL Clock trimming: 1 */
#define CLKTRIM_2              (0x0800)       /* A-POOL Clock trimming: 2 */
#define CLKTRIM_3              (0x0C00)       /* A-POOL Clock trimming: 3 */

#define REFTRIM_0              (0x0000)       /* A-POOL Reference trimming: 0 */
#define REFTRIM_1              (0x1000)       /* A-POOL Reference trimming: 1 */
#define REFTRIM_2              (0x2000)       /* A-POOL Reference trimming: 2 */
#define REFTRIM_3              (0x3000)       /* A-POOL Reference trimming: 3 */
#define REFTRIM_4              (0x4000)       /* A-POOL Reference trimming: 4 */
#define REFTRIM_5              (0x5000)       /* A-POOL Reference trimming: 5 */
#define REFTRIM_6              (0x6000)       /* A-POOL Reference trimming: 6 */
#define REFTRIM_7              (0x7000)       /* A-POOL Reference trimming: 7 */

/* APTRIM Control Bits */
#define REFTSEL                (0x0001)       /* A-POOL Register bank used for the reference trimming */
#define REFTRIM0               (0x1000)       /* A-POOL Reference trimming bit: 0 */
#define REFTRIM1               (0x2000)       /* A-POOL Reference trimming bit: 1 */
#define REFTRIM2               (0x4000)       /* A-POOL Reference trimming bit: 2 */
#define REFTRIM3               (0x8000)       /* A-POOL Reference trimming bit: 3 */

/* APTRIM Control Bits */
#define REFTSEL_L              (0x0001)       /* A-POOL Register bank used for the reference trimming */

/* APTRIM Control Bits */
#define REFTRIM0_H             (0x0010)       /* A-POOL Reference trimming bit: 0 */
#define REFTRIM1_H             (0x0020)       /* A-POOL Reference trimming bit: 1 */
#define REFTRIM2_H             (0x0040)       /* A-POOL Reference trimming bit: 2 */
#define REFTRIM3_H             (0x0080)       /* A-POOL Reference trimming bit: 3 */

/* APOMR Control Bits */
#define CLKDIV0                (0x0001)       /* A-POOL Prescaler Control Bit: 0 */
#define CLKDIV1                (0x0002)       /* A-POOL Prescaler Control Bit: 1 */
#define CLKDIV2                (0x0004)       /* A-POOL Prescaler Control Bit: 2 */
#define SAREN                  (0x0008)       /* A-POOL SAR conversion enable */
#define CTEN                   (0x0100)       /* A-POOL Continuous time mode of comparator */
#define AZCMP                  (0x0200)       /* A-POOL Clocked zero compensated long term comparison */
#define AZSWREQ                (0x0400)       /* A-POOL SW request for Auto Zero Phase */
#define SVMINH                 (0x0800)       /* A-POOL Suppress the generation of an SVM interrupt event. */

/* APOMR Control Bits */
#define CLKDIV0_L              (0x0001)       /* A-POOL Prescaler Control Bit: 0 */
#define CLKDIV1_L              (0x0002)       /* A-POOL Prescaler Control Bit: 1 */
#define CLKDIV2_L              (0x0004)       /* A-POOL Prescaler Control Bit: 2 */
#define SAREN_L                (0x0008)       /* A-POOL SAR conversion enable */

/* APOMR Control Bits */
#define CTEN_H                 (0x0001)       /* A-POOL Continuous time mode of comparator */
#define AZCMP_H                (0x0002)       /* A-POOL Clocked zero compensated long term comparison */
#define AZSWREQ_H              (0x0004)       /* A-POOL SW request for Auto Zero Phase */
#define SVMINH_H               (0x0008)       /* A-POOL Suppress the generation of an SVM interrupt event. */

#define CLKDIV_0               (0x0000)       /* A-POOL Prescaler Control 0 : /1 */
#define CLKDIV_1               (0x0001)       /* A-POOL Prescaler Control 1 : /2 */
#define CLKDIV_2               (0x0002)       /* A-POOL Prescaler Control 2 : /4 */
#define CLKDIV_3               (0x0003)       /* A-POOL Prescaler Control 3 : /8 */
#define CLKDIV_4               (0x0004)       /* A-POOL Prescaler Control 4 : /16 */
#define CLKDIV_5               (0x0005)       /* A-POOL Prescaler Control 5 : /32 */
#define CLKDIV__1              (0x0000)       /* A-POOL Prescaler Control 0 : /1 */
#define CLKDIV__2              (0x0001)       /* A-POOL Prescaler Control 1 : /2 */
#define CLKDIV__4              (0x0002)       /* A-POOL Prescaler Control 2 : /4 */
#define CLKDIV__8              (0x0003)       /* A-POOL Prescaler Control 3 : /8 */
#define CLKDIV__16             (0x0004)       /* A-POOL Prescaler Control 4 : /16 */
#define CLKDIV__32             (0x0005)       /* A-POOL Prescaler Control 5 : /32 */

/* APIFG Control Bits */
#define EOCIFG                 (0x0001)       /* A-POOL End of conversion interrupt flag */
#define CFIFG                  (0x0002)       /* A-POOL Comparator falling edge interrupt flag */
#define CRIFG                  (0x0004)       /* A-POOL Comparator rising edge interrupt flag */
#define REFOKIFG               (0x0008)       /* A-POOL Reference voltage ready interrupt flag */

/* APIFG Control Bits */
#define EOCIFG_L               (0x0001)       /* A-POOL End of conversion interrupt flag */
#define CFIFG_L                (0x0002)       /* A-POOL Comparator falling edge interrupt flag */
#define CRIFG_L                (0x0004)       /* A-POOL Comparator rising edge interrupt flag */
#define REFOKIFG_L             (0x0008)       /* A-POOL Reference voltage ready interrupt flag */

/* APIFG Control Bits */
#define EOCIE                  (0x0001)       /* A-POOL End of conversion interrupt enable */
#define CFIE                   (0x0002)       /* A-POOL Comparator falling edge interrupt enable */
#define CRIE                   (0x0004)       /* A-POOL Comparator rising edge interrupt enable */
#define REFIKIE                (0x0008)       /* A-POOL Reference voltage ready interrupt enable */

/* APIFG Control Bits */
#define EOCIE_L                (0x0001)       /* A-POOL End of conversion interrupt enable */
#define CFIE_L                 (0x0002)       /* A-POOL Comparator falling edge interrupt enable */
#define CRIE_L                 (0x0004)       /* A-POOL Comparator rising edge interrupt enable */
#define REFIKIE_L              (0x0008)       /* A-POOL Reference voltage ready interrupt enable */

/* APIV Definitions */
#define APIV_NONE              (0x0000)       /* No Interrupt pending */
#define APIV_EOCIF             (0x0002)       /* EOCIFG */
#define APIV_CFIFG             (0x0004)       /* CFIFG */
#define APIV_CRIFG             (0x0006)       /* CRIFG */

/************************************************************
* COMPACT CLOCK SYSTEM
************************************************************/
#define __MSP430_HAS_CCS__                    /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_CCS__ 0x0160
#define CCS_BASE               __MSP430_BASEADDRESS_CCS__

sfr_w(CCSCTL0);                               /* CCS Control Register 0 */
sfr_b(CCSCTL0_L);                             /* CCS Control Register 0 */
sfr_b(CCSCTL0_H);                             /* CCS Control Register 0 */
sfr_w(CCSCTL1);                               /* CCS Control Register 1 */
sfr_b(CCSCTL1_L);                             /* CCS Control Register 1 */
sfr_b(CCSCTL1_H);                             /* CCS Control Register 1 */
sfr_w(CCSCTL2);                               /* CCS Control Register 2 */
sfr_b(CCSCTL2_L);                             /* CCS Control Register 2 */
sfr_b(CCSCTL2_H);                             /* CCS Control Register 2 */
sfr_w(CCSCTL4);                               /* CCS Control Register 4 */
sfr_b(CCSCTL4_L);                             /* CCS Control Register 4 */
sfr_b(CCSCTL4_H);                             /* CCS Control Register 4 */
sfr_w(CCSCTL5);                               /* CCS Control Register 5 */
sfr_b(CCSCTL5_L);                             /* CCS Control Register 5 */
sfr_b(CCSCTL5_H);                             /* CCS Control Register 5 */
sfr_w(CCSCTL6);                               /* CCS Control Register 6 */
sfr_b(CCSCTL6_L);                             /* CCS Control Register 6 */
sfr_b(CCSCTL6_H);                             /* CCS Control Register 6 */
sfr_w(CCSCTL7);                               /* CCS Control Register 7 */
sfr_b(CCSCTL7_L);                             /* CCS Control Register 7 */
sfr_b(CCSCTL7_H);                             /* CCS Control Register 7 */
sfr_w(CCSCTL8);                               /* CCS Control Register 8 */
sfr_b(CCSCTL8_L);                             /* CCS Control Register 8 */
sfr_b(CCSCTL8_H);                             /* CCS Control Register 8 */

/* CCSCTL0 Control Bits */

#define CCSKEY                 (0xA500)       /* CCS Password */

/* CCSCTL1 Control Bits */
#define DIVCLK                 (0x0001)       /* Clock division for CLKIN / X-OSC */

/* CCSCTL1 Control Bits */
#define DIVCLK_L               (0x0001)       /* Clock division for CLKIN / X-OSC */

/* CCSCTL2 Control Bits */
#define FSEL0                  (0x0001)       /* Frequency trimming of the HF-OSC Bit: 0 */
#define FSEL1                  (0x0002)       /* Frequency trimming of the HF-OSC Bit: 1 */
#define FSEL2                  (0x0004)       /* Frequency trimming of the HF-OSC Bit: 2 */
#define FSEL3                  (0x0008)       /* Frequency trimming of the HF-OSC Bit: 3 */
#define FSEL4                  (0x0010)       /* Frequency trimming of the HF-OSC Bit: 4 */
#define FSEL5                  (0x0020)       /* Frequency trimming of the HF-OSC Bit: 5 */
#define FSEL6                  (0x0040)       /* Frequency trimming of the HF-OSC Bit: 6 */

/* CCSCTL2 Control Bits */
#define FSEL0_L                (0x0001)       /* Frequency trimming of the HF-OSC Bit: 0 */
#define FSEL1_L                (0x0002)       /* Frequency trimming of the HF-OSC Bit: 1 */
#define FSEL2_L                (0x0004)       /* Frequency trimming of the HF-OSC Bit: 2 */
#define FSEL3_L                (0x0008)       /* Frequency trimming of the HF-OSC Bit: 3 */
#define FSEL4_L                (0x0010)       /* Frequency trimming of the HF-OSC Bit: 4 */
#define FSEL5_L                (0x0020)       /* Frequency trimming of the HF-OSC Bit: 5 */
#define FSEL6_L                (0x0040)       /* Frequency trimming of the HF-OSC Bit: 6 */

/* CCSCTL4 Control Bits */
#define SELM0                  (0x0001)       /* MCLK Source Select Bit: 0 */
#define SELM1                  (0x0002)       /* MCLK Source Select Bit: 1 */
//#define RESERVED            (0x0004)    /* RESERVED */
//#define RESERVED            (0x0008)    /* RESERVED */
#define SELS0                  (0x0010)       /* SMCLK Source Select Bit: 0 */
#define SELS1                  (0x0020)       /* SMCLK Source Select Bit: 1 */
//#define RESERVED            (0x0040)    /* RESERVED */
//#define RESERVED            (0x0080)    /* RESERVED */
#define SELA0                  (0x0100)       /* ACLK Source Select Bit: 0 */
#define SELA1                  (0x0200)       /* ACLK Source Select Bit: 1 */
//#define RESERVED            (0x0400)    /* RESERVED */
//#define RESERVED            (0x0800)    /* RESERVED */
//#define RESERVED            (0x1000)    /* RESERVED */
//#define RESERVED            (0x2000)    /* RESERVED */
//#define RESERVED            (0x4000)    /* RESERVED */
//#define RESERVED            (0x8000)    /* RESERVED */

/* CCSCTL4 Control Bits */
#define SELM0_L                (0x0001)       /* MCLK Source Select Bit: 0 */
#define SELM1_L                (0x0002)       /* MCLK Source Select Bit: 1 */
//#define RESERVED            (0x0004)    /* RESERVED */
//#define RESERVED            (0x0008)    /* RESERVED */
#define SELS0_L                (0x0010)       /* SMCLK Source Select Bit: 0 */
#define SELS1_L                (0x0020)       /* SMCLK Source Select Bit: 1 */
//#define RESERVED            (0x0040)    /* RESERVED */
//#define RESERVED            (0x0080)    /* RESERVED */
//#define RESERVED            (0x0400)    /* RESERVED */
//#define RESERVED            (0x0800)    /* RESERVED */
//#define RESERVED            (0x1000)    /* RESERVED */
//#define RESERVED            (0x2000)    /* RESERVED */
//#define RESERVED            (0x4000)    /* RESERVED */
//#define RESERVED            (0x8000)    /* RESERVED */

/* CCSCTL4 Control Bits */
//#define RESERVED            (0x0004)    /* RESERVED */
//#define RESERVED            (0x0008)    /* RESERVED */
//#define RESERVED            (0x0040)    /* RESERVED */
//#define RESERVED            (0x0080)    /* RESERVED */
#define SELA0_H                (0x0001)       /* ACLK Source Select Bit: 0 */
#define SELA1_H                (0x0002)       /* ACLK Source Select Bit: 1 */
//#define RESERVED            (0x0400)    /* RESERVED */
//#define RESERVED            (0x0800)    /* RESERVED */
//#define RESERVED            (0x1000)    /* RESERVED */
//#define RESERVED            (0x2000)    /* RESERVED */
//#define RESERVED            (0x4000)    /* RESERVED */
//#define RESERVED            (0x8000)    /* RESERVED */

#define SELM_0                 (0x0000)       /* MCLK Source Select 0 */
#define SELM_1                 (0x0001)       /* MCLK Source Select 1 */
#define SELM_2                 (0x0002)       /* MCLK Source Select 2 */
#define SELM_3                 (0x0003)       /* MCLK Source Select 3 */
#define SELM__HFCLK            (0x0000)       /* MCLK Source Select HFCLK */
#define SELM__LFCLK            (0x0001)       /* MCLK Source Select LFCLK */
#define SELM__CLKIN            (0x0002)       /* MCLK Source Select CLKIN */

#define SELS_0                 (0x0000)       /* SMCLK Source Select 0 */
#define SELS_1                 (0x0010)       /* SMCLK Source Select 1 */
#define SELS_2                 (0x0020)       /* SMCLK Source Select 2 */
#define SELS_3                 (0x0030)       /* SMCLK Source Select 3 */
#define SELS__HFCLK            (0x0000)       /* SMCLK Source Select HFCLK */
#define SELS__LFCLK            (0x0010)       /* SMCLK Source Select LFCLK */
#define SELS__CLKIN            (0x0020)       /* SMCLK Source Select CLKIN */

#define SELA_0                 (0x0000)       /* ACLK Source Select 0 */
#define SELA_1                 (0x0100)       /* ACLK Source Select 1 */
#define SELA_2                 (0x0200)       /* ACLK Source Select 2 */
#define SELA_3                 (0x0300)       /* ACLK Source Select 3 */
#define SELA__HFCLK            (0x0000)       /* ACLK Source Select HFCLK */
#define SELA__LFCLK            (0x0100)       /* ACLK Source Select LFCLK */
#define SELA__CLKIN            (0x0200)       /* ACLK Source Select CLKIN */

/* CCSCTL5 Control Bits */
#define DIVM0                  (0x0001)       /* MCLK Divider Bit: 0 */
#define DIVM1                  (0x0002)       /* MCLK Divider Bit: 1 */
#define DIVM2                  (0x0004)       /* MCLK Divider Bit: 2 */
//#define RESERVED            (0x0004)    /* RESERVED */
//#define RESERVED            (0x0008)    /* RESERVED */
#define DIVS0                  (0x0010)       /* SMCLK Divider Bit: 0 */
#define DIVS1                  (0x0020)       /* SMCLK Divider Bit: 1 */
#define DIVS2                  (0x0040)       /* SMCLK Divider Bit: 2 */
//#define RESERVED            (0x0040)    /* RESERVED */
//#define RESERVED            (0x0080)    /* RESERVED */
#define DIVA0                  (0x0100)       /* ACLK Divider Bit: 0 */
#define DIVA1                  (0x0200)       /* ACLK Divider Bit: 1 */
#define DIVA2                  (0x0400)       /* ACLK Divider Bit: 2 */
//#define RESERVED            (0x0400)    /* RESERVED */
//#define RESERVED            (0x0800)    /* RESERVED */
//#define RESERVED            (0x1000)    /* RESERVED */
//#define RESERVED            (0x2000)    /* RESERVED */
//#define RESERVED            (0x4000)    /* RESERVED */
//#define RESERVED            (0x8000)    /* RESERVED */

/* CCSCTL5 Control Bits */
#define DIVM0_L                (0x0001)       /* MCLK Divider Bit: 0 */
#define DIVM1_L                (0x0002)       /* MCLK Divider Bit: 1 */
#define DIVM2_L                (0x0004)       /* MCLK Divider Bit: 2 */
//#define RESERVED            (0x0004)    /* RESERVED */
//#define RESERVED            (0x0008)    /* RESERVED */
#define DIVS0_L                (0x0010)       /* SMCLK Divider Bit: 0 */
#define DIVS1_L                (0x0020)       /* SMCLK Divider Bit: 1 */
#define DIVS2_L                (0x0040)       /* SMCLK Divider Bit: 2 */
//#define RESERVED            (0x0040)    /* RESERVED */
//#define RESERVED            (0x0080)    /* RESERVED */
//#define RESERVED            (0x0400)    /* RESERVED */
//#define RESERVED            (0x0800)    /* RESERVED */
//#define RESERVED            (0x1000)    /* RESERVED */
//#define RESERVED            (0x2000)    /* RESERVED */
//#define RESERVED            (0x4000)    /* RESERVED */
//#define RESERVED            (0x8000)    /* RESERVED */

/* CCSCTL5 Control Bits */
//#define RESERVED            (0x0004)    /* RESERVED */
//#define RESERVED            (0x0008)    /* RESERVED */
//#define RESERVED            (0x0040)    /* RESERVED */
//#define RESERVED            (0x0080)    /* RESERVED */
#define DIVA0_H                (0x0001)       /* ACLK Divider Bit: 0 */
#define DIVA1_H                (0x0002)       /* ACLK Divider Bit: 1 */
#define DIVA2_H                (0x0004)       /* ACLK Divider Bit: 2 */
//#define RESERVED            (0x0400)    /* RESERVED */
//#define RESERVED            (0x0800)    /* RESERVED */
//#define RESERVED            (0x1000)    /* RESERVED */
//#define RESERVED            (0x2000)    /* RESERVED */
//#define RESERVED            (0x4000)    /* RESERVED */
//#define RESERVED            (0x8000)    /* RESERVED */

#define DIVM_0                 (0x0000)       /* MCLK Source Divider 0 */
#define DIVM_1                 (0x0001)       /* MCLK Source Divider 1 */
#define DIVM_2                 (0x0002)       /* MCLK Source Divider 2 */
#define DIVM_3                 (0x0003)       /* MCLK Source Divider 3 */
#define DIVM_4                 (0x0004)       /* MCLK Source Divider 4 */
#define DIVM_5                 (0x0005)       /* MCLK Source Divider 5 */
#define DIVM__1                (0x0000)       /* MCLK Source Divider f(MCLK)/1 */
#define DIVM__2                (0x0001)       /* MCLK Source Divider f(MCLK)/2 */
#define DIVM__4                (0x0002)       /* MCLK Source Divider f(MCLK)/4 */
#define DIVM__8                (0x0003)       /* MCLK Source Divider f(MCLK)/8 */
#define DIVM__16               (0x0004)       /* MCLK Source Divider f(MCLK)/16 */
#define DIVM__32               (0x0005)       /* MCLK Source Divider f(MCLK)/32 */

#define DIVS_0                 (0x0000)       /* SMCLK Source Divider 0 */
#define DIVS_1                 (0x0010)       /* SMCLK Source Divider 1 */
#define DIVS_2                 (0x0020)       /* SMCLK Source Divider 2 */
#define DIVS_3                 (0x0030)       /* SMCLK Source Divider 3 */
#define DIVS_4                 (0x0040)       /* SMCLK Source Divider 4 */
#define DIVS_5                 (0x0050)       /* SMCLK Source Divider 5 */
#define DIVS__1                (0x0000)       /* SMCLK Source Divider f(SMCLK)/1 */
#define DIVS__2                (0x0010)       /* SMCLK Source Divider f(SMCLK)/2 */
#define DIVS__4                (0x0020)       /* SMCLK Source Divider f(SMCLK)/4 */
#define DIVS__8                (0x0030)       /* SMCLK Source Divider f(SMCLK)/8 */
#define DIVS__16               (0x0040)       /* SMCLK Source Divider f(SMCLK)/16 */
#define DIVS__32               (0x0050)       /* SMCLK Source Divider f(SMCLK)/32 */

#define DIVA_0                 (0x0000)       /* ACLK Source Divider 0 */
#define DIVA_1                 (0x0100)       /* ACLK Source Divider 1 */
#define DIVA_2                 (0x0200)       /* ACLK Source Divider 2 */
#define DIVA_3                 (0x0300)       /* ACLK Source Divider 3 */
#define DIVA_4                 (0x0400)       /* ACLK Source Divider 4 */
#define DIVA_5                 (0x0500)       /* ACLK Source Divider 5 */
#define DIVA__1                (0x0000)       /* ACLK Source Divider f(ACLK)/1 */
#define DIVA__2                (0x0100)       /* ACLK Source Divider f(ACLK)/2 */
#define DIVA__4                (0x0200)       /* ACLK Source Divider f(ACLK)/4 */
#define DIVA__8                (0x0300)       /* ACLK Source Divider f(ACLK)/8 */
#define DIVA__16               (0x0400)       /* ACLK Source Divider f(ACLK)/16 */
#define DIVA__32               (0x0500)       /* ACLK Source Divider f(ACLK)/32 */

/* CCSCTL6 Control Bits */
#define XTOFF                  (0x0001)       /* Disable XT oscillator */

/* CCSCTL6 Control Bits */
#define XTOFF_L                (0x0001)       /* Disable XT oscillator */

/* CCSCTL7 Control Bits */
#define XOFFG                  (0x0001)       /* X-tal Oscillator Fault Flag */
#define HFOFFG                 (0x0002)       /* High Frequency Oscillator Fault Flag */

/* CCSCTL7 Control Bits */
#define XOFFG_L                (0x0001)       /* X-tal Oscillator Fault Flag */
#define HFOFFG_L               (0x0002)       /* High Frequency Oscillator Fault Flag */

/* CCSCTL8 Control Bits */
#define ACLKREQEN              (0x0001)       /* ACLK Clock Request Enable */
#define MCLKREQEN              (0x0002)       /* MCLK Clock Request Enable */
#define SMCLKREQEN             (0x0004)       /* SMCLK Clock Request Enable */

/* CCSCTL8 Control Bits */
#define ACLKREQEN_L            (0x0001)       /* ACLK Clock Request Enable */
#define MCLKREQEN_L            (0x0002)       /* MCLK Clock Request Enable */
#define SMCLKREQEN_L           (0x0004)       /* SMCLK Clock Request Enable */

/************************************************************
* DIGITAL I/O Port1/2 Pull up / Pull down Resistors
************************************************************/
#define __MSP430_HAS_PORT1_R__                /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_PORT1_R__ 0x0200
#define P1_BASE                __MSP430_BASEADDRESS_PORT1_R__
#define __MSP430_HAS_PORT2_R__                /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_PORT2_R__ 0x0200
#define P2_BASE                __MSP430_BASEADDRESS_PORT2_R__
#define __MSP430_HAS_PORTA_R__                /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_PORTA_R__ 0x0200
#define PA_BASE                __MSP430_BASEADDRESS_PORTA_R__
#define __MSP430_HAS_P1SEL0__                 /* Define for DriverLib */
#define __MSP430_HAS_P2SEL0__                 /* Define for DriverLib */
#define __MSP430_HAS_PASEL0__                 /* Define for DriverLib */
#define __MSP430_HAS_P1SEL1__                 /* Define for DriverLib */
#define __MSP430_HAS_P2SEL1__                 /* Define for DriverLib */
#define __MSP430_HAS_PASEL1__                 /* Define for DriverLib */

sfr_w(PAIN);                                  /* Port A Input */
sfr_b(PAIN_L);                                /* Port A Input */
sfr_b(PAIN_H);                                /* Port A Input */
sfr_w(PAOUT);                                 /* Port A Output */
sfr_b(PAOUT_L);                               /* Port A Output */
sfr_b(PAOUT_H);                               /* Port A Output */
sfr_w(PADIR);                                 /* Port A Direction */
sfr_b(PADIR_L);                               /* Port A Direction */
sfr_b(PADIR_H);                               /* Port A Direction */
sfr_w(PAREN);                                 /* Port A Resistor Enable */
sfr_b(PAREN_L);                               /* Port A Resistor Enable */
sfr_b(PAREN_H);                               /* Port A Resistor Enable */
sfr_w(PADS);                                  /* Port A Drive Strenght */
sfr_b(PADS_L);                                /* Port A Drive Strenght */
sfr_b(PADS_H);                                /* Port A Drive Strenght */
sfr_w(PASEL0);                                /* Port A Selection 0 */
sfr_b(PASEL0_L);                              /* Port A Selection 0 */
sfr_b(PASEL0_H);                              /* Port A Selection 0 */
sfr_w(PASEL1);                                /* Port A Selection 1 */
sfr_b(PASEL1_L);                              /* Port A Selection 1 */
sfr_b(PASEL1_H);                              /* Port A Selection 1 */
sfr_w(PAIES);                                 /* Port A Interrupt Edge Select */
sfr_b(PAIES_L);                               /* Port A Interrupt Edge Select */
sfr_b(PAIES_H);                               /* Port A Interrupt Edge Select */
sfr_w(PAIE);                                  /* Port A Interrupt Enable */
sfr_b(PAIE_L);                                /* Port A Interrupt Enable */
sfr_b(PAIE_H);                                /* Port A Interrupt Enable */
sfr_w(PAIFG);                                 /* Port A Interrupt Flag */
sfr_b(PAIFG_L);                               /* Port A Interrupt Flag */
sfr_b(PAIFG_H);                               /* Port A Interrupt Flag */


sfr_w(P1IV);                                  /* Port 1 Interrupt Vector Word */
sfr_w(P2IV);                                  /* Port 2 Interrupt Vector Word */
#define P1IN                   (PAIN_L)       /* Port 1 Input */
#define P1OUT                  (PAOUT_L)      /* Port 1 Output */
#define P1DIR                  (PADIR_L)      /* Port 1 Direction */
#define P1REN                  (PAREN_L)      /* Port 1 Resistor Enable */
#define P1DS                   (PADS_L)       /* Port 1 Drive Strenght */
#define P1SEL0                 (PASEL0_L)     /* Port 1 Selection 0 */
#define P1SEL1                 (PASEL1_L)     /* Port 1 Selection 1 */
#define P1IES                  (PAIES_L)      /* Port 1 Interrupt Edge Select */
#define P1IE                   (PAIE_L)       /* Port 1 Interrupt Enable */
#define P1IFG                  (PAIFG_L)      /* Port 1 Interrupt Flag */

//Definitions for P1IV
#define P1IV_NONE              (0x0000)       /* No Interrupt pending */
#define P1IV_P1IFG0            (0x0002)       /* P1IV P1IFG.0 */
#define P1IV_P1IFG1            (0x0004)       /* P1IV P1IFG.1 */
#define P1IV_P1IFG2            (0x0006)       /* P1IV P1IFG.2 */
#define P1IV_P1IFG3            (0x0008)       /* P1IV P1IFG.3 */
#define P1IV_P1IFG4            (0x000A)       /* P1IV P1IFG.4 */
#define P1IV_P1IFG5            (0x000C)       /* P1IV P1IFG.5 */
#define P1IV_P1IFG6            (0x000E)       /* P1IV P1IFG.6 */
#define P1IV_P1IFG7            (0x0010)       /* P1IV P1IFG.7 */

#define P2IN                   (PAIN_H)       /* Port 2 Input */
#define P2OUT                  (PAOUT_H)      /* Port 2 Output */
#define P2DIR                  (PADIR_H)      /* Port 2 Direction */
#define P2REN                  (PAREN_H)      /* Port 2 Resistor Enable */
#define P2DS                   (PADS_H)       /* Port 2 Drive Strenght */
#define P2SEL0                 (PASEL0_H)     /* Port 2 Selection 0 */
#define P2SEL1                 (PASEL1_H)     /* Port 2 Selection 1 */
#define P2IES                  (PAIES_H)      /* Port 2 Interrupt Edge Select */
#define P2IE                   (PAIE_H)       /* Port 2 Interrupt Enable */
#define P2IFG                  (PAIFG_H)      /* Port 2 Interrupt Flag */

//Definitions for P2IV
#define P2IV_NONE              (0x0000)       /* No Interrupt pending */
#define P2IV_P2IFG0            (0x0002)       /* P2IV P2IFG.0 */
#define P2IV_P2IFG1            (0x0004)       /* P2IV P2IFG.1 */
#define P2IV_P2IFG2            (0x0006)       /* P2IV P2IFG.2 */
#define P2IV_P2IFG3            (0x0008)       /* P2IV P2IFG.3 */
#define P2IV_P2IFG4            (0x000A)       /* P2IV P2IFG.4 */
#define P2IV_P2IFG5            (0x000C)       /* P2IV P2IFG.5 */
#define P2IV_P2IFG6            (0x000E)       /* P2IV P2IFG.6 */
#define P2IV_P2IFG7            (0x0010)       /* P2IV P2IFG.7 */


/************************************************************
* SFR - Special Function Register Module
************************************************************/
#define __MSP430_HAS_SFR__                    /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_SFR__ 0x0100
#define SFR_BASE               __MSP430_BASEADDRESS_SFR__

sfr_w(SFRIE1);                                /* Interrupt Enable 1 */
sfr_b(SFRIE1_L);                              /* Interrupt Enable 1 */
sfr_b(SFRIE1_H);                              /* Interrupt Enable 1 */

/* SFRIE1 Control Bits */
#define WDTIE                  (0x0001)       /* WDT Interrupt Enable */
#define OFIE                   (0x0002)       /* Osc Fault Enable */
//#define Reserved          (0x0004)
#define VMAIE                  (0x0008)       /* Vacant Memory Interrupt Enable */
#define NMIIE                  (0x0010)       /* NMI Interrupt Enable */
#define JMBINIE                (0x0040)       /* JTAG Mail Box input Interrupt Enable */
#define JMBOUTIE               (0x0080)       /* JTAG Mail Box output Interrupt Enable */
#define SVMIE                  (0x0100)       /* SVM Interrupt Enable */

#define WDTIE_L                (0x0001)       /* WDT Interrupt Enable */
#define OFIE_L                 (0x0002)       /* Osc Fault Enable */
//#define Reserved          (0x0004)
#define VMAIE_L                (0x0008)       /* Vacant Memory Interrupt Enable */
#define NMIIE_L                (0x0010)       /* NMI Interrupt Enable */
#define JMBINIE_L              (0x0040)       /* JTAG Mail Box input Interrupt Enable */
#define JMBOUTIE_L             (0x0080)       /* JTAG Mail Box output Interrupt Enable */

//#define Reserved          (0x0004)
#define SVMIE_H                (0x0001)       /* SVM Interrupt Enable */

sfr_w(SFRIFG1);                               /* Interrupt Flag 1 */
sfr_b(SFRIFG1_L);                             /* Interrupt Flag 1 */
sfr_b(SFRIFG1_H);                             /* Interrupt Flag 1 */
/* SFRIFG1 Control Bits */
#define WDTIFG                 (0x0001)       /* WDT Interrupt Flag */
#define OFIFG                  (0x0002)       /* Osc Fault Flag */
//#define Reserved          (0x0004)
#define VMAIFG                 (0x0008)       /* Vacant Memory Interrupt Flag */
#define NMIIFG                 (0x0010)       /* NMI Interrupt Flag */
//#define Reserved          (0x0020)
#define JMBINIFG               (0x0040)       /* JTAG Mail Box input Interrupt Flag */
#define JMBOUTIFG              (0x0080)       /* JTAG Mail Box output Interrupt Flag */
#define SVMIFG                 (0x0100)       /* SVM Interrupt Flag */

#define WDTIFG_L               (0x0001)       /* WDT Interrupt Flag */
#define OFIFG_L                (0x0002)       /* Osc Fault Flag */
//#define Reserved          (0x0004)
#define VMAIFG_L               (0x0008)       /* Vacant Memory Interrupt Flag */
#define NMIIFG_L               (0x0010)       /* NMI Interrupt Flag */
//#define Reserved          (0x0020)
#define JMBINIFG_L             (0x0040)       /* JTAG Mail Box input Interrupt Flag */
#define JMBOUTIFG_L            (0x0080)       /* JTAG Mail Box output Interrupt Flag */

//#define Reserved          (0x0004)
//#define Reserved          (0x0020)
#define SVMIFG_H               (0x0001)       /* SVM Interrupt Flag */

sfr_w(SFRRPCR);                               /* RESET Pin Control Register */
sfr_b(SFRRPCR_L);                             /* RESET Pin Control Register */
sfr_b(SFRRPCR_H);                             /* RESET Pin Control Register */
/* SFRRPCR Control Bits */
#define SYSNMI                 (0x0001)       /* NMI select */
#define SYSNMIIES              (0x0002)       /* NMI edge select */
#define SYSRSTUP               (0x0004)       /* RESET Pin pull down/up select */
#define SYSRSTRE               (0x0008)       /* RESET Pin Resistor enable */

#define SYSNMI_L               (0x0001)       /* NMI select */
#define SYSNMIIES_L            (0x0002)       /* NMI edge select */
#define SYSRSTUP_L             (0x0004)       /* RESET Pin pull down/up select */
#define SYSRSTRE_L             (0x0008)       /* RESET Pin Resistor enable */

/************************************************************
* COMPACT SYS - System Module
************************************************************/
#define __MSP430_HAS_SYS__                    /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_SYS__ 0x0180
#define SYS_BASE               __MSP430_BASEADDRESS_SYS__

sfr_w(SYSCTL);                                /* System control */
sfr_b(SYSCTL_L);                              /* System control */
sfr_b(SYSCTL_H);                              /* System control */
sfr_w(SYSBSLC);                               /* Boot strap configuration area */
sfr_b(SYSBSLC_L);                             /* Boot strap configuration area */
sfr_b(SYSBSLC_H);                             /* Boot strap configuration area */
sfr_w(SYSJMBC);                               /* JTAG mailbox control */
sfr_b(SYSJMBC_L);                             /* JTAG mailbox control */
sfr_b(SYSJMBC_H);                             /* JTAG mailbox control */
sfr_w(SYSJMBI0);                              /* JTAG mailbox input 0 */
sfr_b(SYSJMBI0_L);                            /* JTAG mailbox input 0 */
sfr_b(SYSJMBI0_H);                            /* JTAG mailbox input 0 */
sfr_w(SYSJMBI1);                              /* JTAG mailbox input 1 */
sfr_b(SYSJMBI1_L);                            /* JTAG mailbox input 1 */
sfr_b(SYSJMBI1_H);                            /* JTAG mailbox input 1 */
sfr_w(SYSJMBO0);                              /* JTAG mailbox output 0 */
sfr_b(SYSJMBO0_L);                            /* JTAG mailbox output 0 */
sfr_b(SYSJMBO0_H);                            /* JTAG mailbox output 0 */
sfr_w(SYSJMBO1);                              /* JTAG mailbox output 1 */
sfr_b(SYSJMBO1_L);                            /* JTAG mailbox output 1 */
sfr_b(SYSJMBO1_H);                            /* JTAG mailbox output 1 */
sfr_w(SYSCNF);                                /* System Configuration Register */
sfr_b(SYSCNF_L);                              /* System Configuration Register */
sfr_b(SYSCNF_H);                              /* System Configuration Register */

sfr_w(SYSBERRIV);                             /* Bus Error vector generator */
sfr_b(SYSBERRIV_L);                           /* Bus Error vector generator */
sfr_b(SYSBERRIV_H);                           /* Bus Error vector generator */
sfr_w(SYSUNIV);                               /* User NMI vector generator */
sfr_b(SYSUNIV_L);                             /* User NMI vector generator */
sfr_b(SYSUNIV_H);                             /* User NMI vector generator */
sfr_w(SYSSNIV);                               /* System NMI vector generator */
sfr_b(SYSSNIV_L);                             /* System NMI vector generator */
sfr_b(SYSSNIV_H);                             /* System NMI vector generator */
sfr_w(SYSRSTIV);                              /* Reset vector generator */
sfr_b(SYSRSTIV_L);                            /* Reset vector generator */
sfr_b(SYSRSTIV_H);                            /* Reset vector generator */

/* SYSCTL Control Bits */
#define SYSRIVECT              (0x0001)       /* SYS - RAM based interrupt vectors */
//#define RESERVED          (0x0002)  /* SYS - Reserved */
#define SYSPMMPE               (0x0004)       /* SYS - PMM access protect */
//#define RESERVED          (0x0008)  /* SYS - Reserved */
#define SYSBSLIND              (0x0010)       /* SYS - TCK/RST indication detected */
#define SYSJTAGPIN             (0x0020)       /* SYS - Dedicated JTAG pins enabled */
//#define RESERVED          (0x0040)  /* SYS - Reserved */
//#define RESERVED          (0x0080)  /* SYS - Reserved */
//#define RESERVED          (0x0100)  /* SYS - Reserved */
//#define RESERVED          (0x0200)  /* SYS - Reserved */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSCTL Control Bits */
#define SYSRIVECT_L            (0x0001)       /* SYS - RAM based interrupt vectors */
//#define RESERVED          (0x0002)  /* SYS - Reserved */
#define SYSPMMPE_L             (0x0004)       /* SYS - PMM access protect */
//#define RESERVED          (0x0008)  /* SYS - Reserved */
#define SYSBSLIND_L            (0x0010)       /* SYS - TCK/RST indication detected */
#define SYSJTAGPIN_L           (0x0020)       /* SYS - Dedicated JTAG pins enabled */
//#define RESERVED          (0x0040)  /* SYS - Reserved */
//#define RESERVED          (0x0080)  /* SYS - Reserved */
//#define RESERVED          (0x0100)  /* SYS - Reserved */
//#define RESERVED          (0x0200)  /* SYS - Reserved */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSBSLC Control Bits */
#define SYSBSLSIZE0            (0x0001)       /* SYS - BSL Protection Size 0 */
#define SYSBSLSIZE1            (0x0002)       /* SYS - BSL Protection Size 1 */
#define SYSBSLR                (0x0004)       /* SYS - RAM assigned to BSL */
//#define RESERVED            (0x0008)  /* SYS - Reserved */
//#define RESERVED            (0x0010)  /* SYS - Reserved */
//#define RESERVED            (0x0020)  /* SYS - Reserved */
//#define RESERVED            (0x0040)  /* SYS - Reserved */
//#define RESERVED            (0x0080)  /* SYS - Reserved */
//#define RESERVED            (0x0100)  /* SYS - Reserved */
//#define RESERVED            (0x0200)  /* SYS - Reserved */
//#define RESERVED            (0x0400)  /* SYS - Reserved */
//#define RESERVED            (0x0800)  /* SYS - Reserved */
//#define RESERVED            (0x1000)  /* SYS - Reserved */
//#define RESERVED            (0x2000)  /* SYS - Reserved */
#define SYSBSLOFF              (0x4000)       /* SYS - BSL Memory disabled */
#define SYSBSLPE               (0x8000)       /* SYS - BSL Memory protection enabled */

/* SYSBSLC Control Bits */
#define SYSBSLSIZE0_L          (0x0001)       /* SYS - BSL Protection Size 0 */
#define SYSBSLSIZE1_L          (0x0002)       /* SYS - BSL Protection Size 1 */
#define SYSBSLR_L              (0x0004)       /* SYS - RAM assigned to BSL */
//#define RESERVED            (0x0008)  /* SYS - Reserved */
//#define RESERVED            (0x0010)  /* SYS - Reserved */
//#define RESERVED            (0x0020)  /* SYS - Reserved */
//#define RESERVED            (0x0040)  /* SYS - Reserved */
//#define RESERVED            (0x0080)  /* SYS - Reserved */
//#define RESERVED            (0x0100)  /* SYS - Reserved */
//#define RESERVED            (0x0200)  /* SYS - Reserved */
//#define RESERVED            (0x0400)  /* SYS - Reserved */
//#define RESERVED            (0x0800)  /* SYS - Reserved */
//#define RESERVED            (0x1000)  /* SYS - Reserved */
//#define RESERVED            (0x2000)  /* SYS - Reserved */

/* SYSBSLC Control Bits */
//#define RESERVED            (0x0008)  /* SYS - Reserved */
//#define RESERVED            (0x0010)  /* SYS - Reserved */
//#define RESERVED            (0x0020)  /* SYS - Reserved */
//#define RESERVED            (0x0040)  /* SYS - Reserved */
//#define RESERVED            (0x0080)  /* SYS - Reserved */
//#define RESERVED            (0x0100)  /* SYS - Reserved */
//#define RESERVED            (0x0200)  /* SYS - Reserved */
//#define RESERVED            (0x0400)  /* SYS - Reserved */
//#define RESERVED            (0x0800)  /* SYS - Reserved */
//#define RESERVED            (0x1000)  /* SYS - Reserved */
//#define RESERVED            (0x2000)  /* SYS - Reserved */
#define SYSBSLOFF_H            (0x0040)       /* SYS - BSL Memory disabled */
#define SYSBSLPE_H             (0x0080)       /* SYS - BSL Memory protection enabled */

/* SYSJMBC Control Bits */
#define JMBIN0FG               (0x0001)       /* SYS - Incoming JTAG Mailbox 0 Flag */
#define JMBIN1FG               (0x0002)       /* SYS - Incoming JTAG Mailbox 1 Flag */
#define JMBOUT0FG              (0x0004)       /* SYS - Outgoing JTAG Mailbox 0 Flag */
#define JMBOUT1FG              (0x0008)       /* SYS - Outgoing JTAG Mailbox 1 Flag */
#define JMBMODE                (0x0010)       /* SYS - JMB 16/32 Bit Mode */
//#define RESERVED          (0x0020)  /* SYS - Reserved */
#define JMBCLR0OFF             (0x0040)       /* SYS - Incoming JTAG Mailbox 0 Flag auto-clear disalbe */
#define JMBCLR1OFF             (0x0080)       /* SYS - Incoming JTAG Mailbox 1 Flag auto-clear disalbe */
//#define RESERVED          (0x0100)  /* SYS - Reserved */
//#define RESERVED          (0x0200)  /* SYS - Reserved */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSJMBC Control Bits */
#define JMBIN0FG_L             (0x0001)       /* SYS - Incoming JTAG Mailbox 0 Flag */
#define JMBIN1FG_L             (0x0002)       /* SYS - Incoming JTAG Mailbox 1 Flag */
#define JMBOUT0FG_L            (0x0004)       /* SYS - Outgoing JTAG Mailbox 0 Flag */
#define JMBOUT1FG_L            (0x0008)       /* SYS - Outgoing JTAG Mailbox 1 Flag */
#define JMBMODE_L              (0x0010)       /* SYS - JMB 16/32 Bit Mode */
//#define RESERVED          (0x0020)  /* SYS - Reserved */
#define JMBCLR0OFF_L           (0x0040)       /* SYS - Incoming JTAG Mailbox 0 Flag auto-clear disalbe */
#define JMBCLR1OFF_L           (0x0080)       /* SYS - Incoming JTAG Mailbox 1 Flag auto-clear disalbe */
//#define RESERVED          (0x0100)  /* SYS - Reserved */
//#define RESERVED          (0x0200)  /* SYS - Reserved */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSCNF Control Bits */
//#define RESERVED          (0x0001)  /* SYS - Reserved */
//#define RESERVED          (0x0002)  /* SYS - Reserved */
#define SVMOE                  (0x0004)       /* SYS - SVM output enable */
#define SVMPO                  (0x0008)       /* SYS - SVM based Ports off flag */
#define SVMPD                  (0x0010)       /* SYS - Incoming JTAG Mailbox 0 Flag */
#define SVMEN                  (0x0020)       /* SYS - SVM based port disable */
//#define RESERVED          (0x0040)  /* SYS - Reserved */
//#define RESERVED          (0x0080)  /* SYS - Reserved */
#define RAMLCK0                (0x0100)       /* SYS - Write lock enable for configuration RAM */
#define RAMLCK1                (0x0200)       /* SYS - Write lock enable for application's code RAM */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSCNF Control Bits */
//#define RESERVED          (0x0001)  /* SYS - Reserved */
//#define RESERVED          (0x0002)  /* SYS - Reserved */
#define SVMOE_L                (0x0004)       /* SYS - SVM output enable */
#define SVMPO_L                (0x0008)       /* SYS - SVM based Ports off flag */
#define SVMPD_L                (0x0010)       /* SYS - Incoming JTAG Mailbox 0 Flag */
#define SVMEN_L                (0x0020)       /* SYS - SVM based port disable */
//#define RESERVED          (0x0040)  /* SYS - Reserved */
//#define RESERVED          (0x0080)  /* SYS - Reserved */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSCNF Control Bits */
//#define RESERVED          (0x0001)  /* SYS - Reserved */
//#define RESERVED          (0x0002)  /* SYS - Reserved */
//#define RESERVED          (0x0040)  /* SYS - Reserved */
//#define RESERVED          (0x0080)  /* SYS - Reserved */
#define RAMLCK0_H              (0x0001)       /* SYS - Write lock enable for configuration RAM */
#define RAMLCK1_H              (0x0002)       /* SYS - Write lock enable for application's code RAM */
//#define RESERVED          (0x0400)  /* SYS - Reserved */
//#define RESERVED          (0x0800)  /* SYS - Reserved */
//#define RESERVED          (0x1000)  /* SYS - Reserved */
//#define RESERVED          (0x2000)  /* SYS - Reserved */
//#define RESERVED          (0x4000)  /* SYS - Reserved */
//#define RESERVED          (0x8000)  /* SYS - Reserved */

/* SYSUNIV Definitions */
#define SYSUNIV_NONE           (0x0000)       /* No Interrupt pending */
#define SYSUNIV_NMIIFG         (0x0002)       /* SYSUNIV : NMIIFG */
#define SYSUNIV_OFIFG          (0x0004)       /* SYSUNIV : Osc. Fail - OFIFG */
#define SYSUNIV_SYSBERRIV      (0x0006)       /* SYSUNIV : Bus Error - SYSBERRIV */

/* SYSSNIV Definitions */
#define SYSSNIV_NONE           (0x0000)       /* No Interrupt pending */
#define SYSSNIV_SVMIFG         (0x0002)       /* SYSSNIV : SVMLIFG */
#define SYSSNIV_VMAIFG         (0x0004)       /* SYSSNIV : VMAIFG */
#define SYSSNIV_JMBINIFG       (0x0006)       /* SYSSNIV : JMBINIFG */
#define SYSSNIV_JMBOUTIFG      (0x0008)       /* SYSSNIV : JMBOUTIFG */

/* SYSRSTIV Definitions */
#define SYSRSTIV_NONE          (0x0000)       /* No Interrupt pending */
#define SYSRSTIV_BOR           (0x0002)       /* SYSRSTIV : BOR */
#define SYSRSTIV_SVMBOR        (0x0004)       /* SYSRSTIV : SVMBOR */
#define SYSRSTIV_RSTNMI        (0x0006)       /* SYSRSTIV : RST/NMI */
#define SYSRSTIV_DOBOR         (0x0008)       /* SYSRSTIV : Do BOR */
#define SYSRSTIV_SECYV         (0x000A)       /* SYSRSTIV : Security violation */
#define SYSRSTIV_DOPOR         (0x000C)       /* SYSRSTIV : Do POR */
#define SYSRSTIV_WDTTO         (0x000E)       /* SYSRSTIV : WDT Time out */
#define SYSRSTIV_WDTKEY        (0x0010)       /* SYSRSTIV : WDTKEY violation */
#define SYSRSTIV_CCSKEY        (0x0012)       /* SYSRSTIV : CCS Key violation */
#define SYSRSTIV_PMMKEY        (0x0014)       /* SYSRSTIV : PMMKEY violation */
#define SYSRSTIV_PERF          (0x0016)       /* SYSRSTIV : peripheral/config area fetch */
/************************************************************
* Timer0_A3
************************************************************/
#define __MSP430_HAS_T0A3__                   /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_T0A3__ 0x0340
#define TIMER_A0_BASE          __MSP430_BASEADDRESS_T0A3__

sfr_w(TA0CTL);                                /* Timer0_A3 Control */
sfr_w(TA0CCTL0);                              /* Timer0_A3 Capture/Compare Control 0 */
sfr_w(TA0CCTL1);                              /* Timer0_A3 Capture/Compare Control 1 */
sfr_w(TA0CCTL2);                              /* Timer0_A3 Capture/Compare Control 2 */
sfr_w(TA0R);                                  /* Timer0_A3 */
sfr_w(TA0CCR0);                               /* Timer0_A3 Capture/Compare 0 */
sfr_w(TA0CCR1);                               /* Timer0_A3 Capture/Compare 1 */
sfr_w(TA0CCR2);                               /* Timer0_A3 Capture/Compare 2 */
sfr_w(TA0IV);                                 /* Timer0_A3 Interrupt Vector Word */
sfr_w(TA0EX0);                                /* Timer0_A3 Expansion Register 0 */

/* TAxCTL Control Bits */
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
#define MC_2                   (0x0020)       /* Timer A mode control: 2 - Continuous up */
#define MC_3                   (0x0030)       /* Timer A mode control: 3 - Up/Down */
#define ID_0                   (0x0000)       /* Timer A input divider: 0 - /1 */
#define ID_1                   (0x0040)       /* Timer A input divider: 1 - /2 */
#define ID_2                   (0x0080)       /* Timer A input divider: 2 - /4 */
#define ID_3                   (0x00C0)       /* Timer A input divider: 3 - /8 */
#define TASSEL_0               (0x0000)       /* Timer A clock source select: 0 - TACLK */
#define TASSEL_1               (0x0100)       /* Timer A clock source select: 1 - ACLK  */
#define TASSEL_2               (0x0200)       /* Timer A clock source select: 2 - SMCLK */
#define TASSEL_3               (0x0300)       /* Timer A clock source select: 3 - INCLK */
#define MC__STOP               (0x0000)       /* Timer A mode control: 0 - Stop */
#define MC__UP                 (0x0010)       /* Timer A mode control: 1 - Up to CCR0 */
#define MC__CONTINUOUS         (0x0020)       /* Timer A mode control: 2 - Continuous up */
#define MC__CONTINOUS          (0x0020)       /* Legacy define */
#define MC__UPDOWN             (0x0030)       /* Timer A mode control: 3 - Up/Down */
#define ID__1                  (0x0000)       /* Timer A input divider: 0 - /1 */
#define ID__2                  (0x0040)       /* Timer A input divider: 1 - /2 */
#define ID__4                  (0x0080)       /* Timer A input divider: 2 - /4 */
#define ID__8                  (0x00C0)       /* Timer A input divider: 3 - /8 */
#define TASSEL__TACLK          (0x0000)       /* Timer A clock source select: 0 - TACLK */
#define TASSEL__ACLK           (0x0100)       /* Timer A clock source select: 1 - ACLK  */
#define TASSEL__SMCLK          (0x0200)       /* Timer A clock source select: 2 - SMCLK */
#define TASSEL__INCLK          (0x0300)       /* Timer A clock source select: 3 - INCLK */

/* TAxCCTLx Control Bits */
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

/* TAxEX0 Control Bits */
#define TAIDEX0                (0x0001)       /* Timer A Input divider expansion Bit: 0 */
#define TAIDEX1                (0x0002)       /* Timer A Input divider expansion Bit: 1 */
#define TAIDEX2                (0x0004)       /* Timer A Input divider expansion Bit: 2 */

#define TAIDEX_0               (0x0000)       /* Timer A Input divider expansion : /1 */
#define TAIDEX_1               (0x0001)       /* Timer A Input divider expansion : /2 */
#define TAIDEX_2               (0x0002)       /* Timer A Input divider expansion : /3 */
#define TAIDEX_3               (0x0003)       /* Timer A Input divider expansion : /4 */
#define TAIDEX_4               (0x0004)       /* Timer A Input divider expansion : /5 */
#define TAIDEX_5               (0x0005)       /* Timer A Input divider expansion : /6 */
#define TAIDEX_6               (0x0006)       /* Timer A Input divider expansion : /7 */
#define TAIDEX_7               (0x0007)       /* Timer A Input divider expansion : /8 */

/* T0A3IV Definitions */
#define TA0IV_NONE             (0x0000)       /* No Interrupt pending */
#define TA0IV_TACCR1           (0x0002)       /* TA0CCR1_CCIFG */
#define TA0IV_TACCR2           (0x0004)       /* TA0CCR2_CCIFG */
#define TA0IV_3                (0x0006)       /* Reserved */
#define TA0IV_4                (0x0008)       /* Reserved */
#define TA0IV_5                (0x000A)       /* Reserved */
#define TA0IV_6                (0x000C)       /* Reserved */
#define TA0IV_TAIFG            (0x000E)       /* TA0IFG */

/* Legacy Defines */
#define TA0IV_TA0CCR1          (0x0002)       /* TA0CCR1_CCIFG */
#define TA0IV_TA0CCR2          (0x0004)       /* TA0CCR2_CCIFG */
#define TA0IV_TA0IFG           (0x000E)       /* TA0IFG */

/************************************************************
* Timer1_A3
************************************************************/
#define __MSP430_HAS_T1A3__                   /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_T1A3__ 0x0380
#define TIMER_A1_BASE          __MSP430_BASEADDRESS_T1A3__

sfr_w(TA1CTL);                                /* Timer1_A3 Control */
sfr_w(TA1CCTL0);                              /* Timer1_A3 Capture/Compare Control 0 */
sfr_w(TA1CCTL1);                              /* Timer1_A3 Capture/Compare Control 1 */
sfr_w(TA1CCTL2);                              /* Timer1_A3 Capture/Compare Control 2 */
sfr_w(TA1R);                                  /* Timer1_A3 */
sfr_w(TA1CCR0);                               /* Timer1_A3 Capture/Compare 0 */
sfr_w(TA1CCR1);                               /* Timer1_A3 Capture/Compare 1 */
sfr_w(TA1CCR2);                               /* Timer1_A3 Capture/Compare 2 */
sfr_w(TA1IV);                                 /* Timer1_A3 Interrupt Vector Word */
sfr_w(TA1EX0);                                /* Timer1_A3 Expansion Register 0 */

/* Bits are already defined within the Timer0_Ax */

/* TA1IV Definitions */
#define TA1IV_NONE             (0x0000)       /* No Interrupt pending */
#define TA1IV_TACCR1           (0x0002)       /* TA1CCR1_CCIFG */
#define TA1IV_TACCR2           (0x0004)       /* TA1CCR2_CCIFG */
#define TA1IV_3                (0x0006)       /* Reserved */
#define TA1IV_4                (0x0008)       /* Reserved */
#define TA1IV_5                (0x000A)       /* Reserved */
#define TA1IV_6                (0x000C)       /* Reserved */
#define TA1IV_TAIFG            (0x000E)       /* TA1IFG */

/* Legacy Defines */
#define TA1IV_TA1CCR1          (0x0002)       /* TA1CCR1_CCIFG */
#define TA1IV_TA1CCR2          (0x0004)       /* TA1CCR2_CCIFG */
#define TA1IV_TA1IFG           (0x000E)       /* TA1IFG */

/************************************************************
* WATCHDOG TIMER A
************************************************************/
#define __MSP430_HAS_WDT_A__                  /* Definition to show that Module is available */
#define __MSP430_BASEADDRESS_WDT_A__ 0x0150
#define WDT_A_BASE             __MSP430_BASEADDRESS_WDT_A__

sfr_w(WDTCTL);                                /* Watchdog Timer Control */
sfr_b(WDTCTL_L);                              /* Watchdog Timer Control */
sfr_b(WDTCTL_H);                              /* Watchdog Timer Control */
/* The bit names have been prefixed with "WDT" */
/* WDTCTL Control Bits */
#define WDTIS0                 (0x0001)       /* WDT - Timer Interval Select 0 */
#define WDTIS1                 (0x0002)       /* WDT - Timer Interval Select 1 */
#define WDTIS2                 (0x0004)       /* WDT - Timer Interval Select 2 */
#define WDTCNTCL               (0x0008)       /* WDT - Timer Clear */
#define WDTTMSEL               (0x0010)       /* WDT - Timer Mode Select */
#define WDTSSEL0               (0x0020)       /* WDT - Timer Clock Source Select 0 */
#define WDTSSEL1               (0x0040)       /* WDT - Timer Clock Source Select 1 */
#define WDTHOLD                (0x0080)       /* WDT - Timer hold */

/* WDTCTL Control Bits */
#define WDTIS0_L               (0x0001)       /* WDT - Timer Interval Select 0 */
#define WDTIS1_L               (0x0002)       /* WDT - Timer Interval Select 1 */
#define WDTIS2_L               (0x0004)       /* WDT - Timer Interval Select 2 */
#define WDTCNTCL_L             (0x0008)       /* WDT - Timer Clear */
#define WDTTMSEL_L             (0x0010)       /* WDT - Timer Mode Select */
#define WDTSSEL0_L             (0x0020)       /* WDT - Timer Clock Source Select 0 */
#define WDTSSEL1_L             (0x0040)       /* WDT - Timer Clock Source Select 1 */
#define WDTHOLD_L              (0x0080)       /* WDT - Timer hold */

#define WDTPW                  (0x5A00)

#define WDTIS_0                (0x0000)       /* WDT - Timer Interval Select: /2G */
#define WDTIS_1                (0x0001)       /* WDT - Timer Interval Select: /128M */
#define WDTIS_2                (0x0002)       /* WDT - Timer Interval Select: /8192k */
#define WDTIS_3                (0x0003)       /* WDT - Timer Interval Select: /512k */
#define WDTIS_4                (0x0004)       /* WDT - Timer Interval Select: /32k */
#define WDTIS_5                (0x0005)       /* WDT - Timer Interval Select: /8192 */
#define WDTIS_6                (0x0006)       /* WDT - Timer Interval Select: /512 */
#define WDTIS_7                (0x0007)       /* WDT - Timer Interval Select: /64 */
#define WDTIS__2G              (0x0000)       /* WDT - Timer Interval Select: /2G */
#define WDTIS__128M            (0x0001)       /* WDT - Timer Interval Select: /128M */
#define WDTIS__8192K           (0x0002)       /* WDT - Timer Interval Select: /8192k */
#define WDTIS__512K            (0x0003)       /* WDT - Timer Interval Select: /512k */
#define WDTIS__32K             (0x0004)       /* WDT - Timer Interval Select: /32k */
#define WDTIS__8192            (0x0005)       /* WDT - Timer Interval Select: /8192 */
#define WDTIS__512             (0x0006)       /* WDT - Timer Interval Select: /512 */
#define WDTIS__64              (0x0007)       /* WDT - Timer Interval Select: /64 */

#define WDTSSEL_0              (0x0000)       /* WDT - Timer Clock Source Select: SMCLK */
#define WDTSSEL_1              (0x0020)       /* WDT - Timer Clock Source Select: ACLK */
#define WDTSSEL_2              (0x0040)       /* WDT - Timer Clock Source Select: VLO_CLK */
#define WDTSSEL_3              (0x0060)       /* WDT - Timer Clock Source Select: reserved */
#define WDTSSEL__SMCLK         (0x0000)       /* WDT - Timer Clock Source Select: SMCLK */
#define WDTSSEL__ACLK          (0x0020)       /* WDT - Timer Clock Source Select: ACLK */
#define WDTSSEL__VLO           (0x0040)       /* WDT - Timer Clock Source Select: VLO_CLK */

/* WDT-interval times [1ms] coded with Bits 0-2 */
/* WDT is clocked by fSMCLK (assumed 1MHz) */
#define WDT_MDLY_32         (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2)                         /* 32ms interval (default) */
#define WDT_MDLY_8          (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTIS0)                  /* 8ms     " */
#define WDT_MDLY_0_5        (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTIS1)                  /* 0.5ms   " */
#define WDT_MDLY_0_064      (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTIS1+WDTIS0)           /* 0.064ms " */
/* WDT is clocked by fACLK (assumed 32KHz) */
#define WDT_ADLY_1000       (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTSSEL0)                /* 1000ms  " */
#define WDT_ADLY_250        (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTSSEL0+WDTIS0)         /* 250ms   " */
#define WDT_ADLY_16         (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTSSEL0+WDTIS1)         /* 16ms    " */
#define WDT_ADLY_1_9        (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTSSEL0+WDTIS1+WDTIS0)  /* 1.9ms   " */
/* Watchdog mode -> reset after expired time */
/* WDT is clocked by fSMCLK (assumed 1MHz) */
#define WDT_MRST_32         (WDTPW+WDTCNTCL+WDTIS2)                                  /* 32ms interval (default) */
#define WDT_MRST_8          (WDTPW+WDTCNTCL+WDTIS2+WDTIS0)                           /* 8ms     " */
#define WDT_MRST_0_5        (WDTPW+WDTCNTCL+WDTIS2+WDTIS1)                           /* 0.5ms   " */
#define WDT_MRST_0_064      (WDTPW+WDTCNTCL+WDTIS2+WDTIS1+WDTIS0)                    /* 0.064ms " */
/* WDT is clocked by fACLK (assumed 32KHz) */
#define WDT_ARST_1000       (WDTPW+WDTCNTCL+WDTSSEL0+WDTIS2)                         /* 1000ms  " */
#define WDT_ARST_250        (WDTPW+WDTCNTCL+WDTSSEL0+WDTIS2+WDTIS0)                  /* 250ms   " */
#define WDT_ARST_16         (WDTPW+WDTCNTCL+WDTSSEL0+WDTIS2+WDTIS1)                  /* 16ms    " */
#define WDT_ARST_1_9        (WDTPW+WDTCNTCL+WDTSSEL0+WDTIS2+WDTIS1+WDTIS0)           /* 1.9ms   " */


/************************************************************
* Interrupt Vectors (offset from 0xFFFF - 0x20)
************************************************************/


#define PORT2_VECTOR            ( 6)                     /* 0xFFEA Port 2 */
#define TIMER0_A1_VECTOR        ( 7)                     /* 0xFFEC Timer0_A3 CC1-2, TA1 */
#define TIMER0_A0_VECTOR        ( 8)                     /* 0xFFEE Timer0_A3 CC0 */
#define PORT1_VECTOR            ( 9)                     /* 0xFFF0 Port 1 */
#define APOOL_VECTOR            (10)                     /* 0xFFF2 Analog Pool */
#define WDT_VECTOR              (11)                     /* 0xFFF4 Watchdog Timer */
#define TIMER1_A1_VECTOR        (12)                     /* 0xFFF6 Timer1_A5 CC1-4, TA */
#define TIMER1_A0_VECTOR        (13)                     /* 0xFFF8 Timer1_A5 CC0 */
#define UNMI_VECTOR             (14)                     /* 0xFFFA User Non-maskable */
#define SYSNMI_VECTOR           (15)                     /* 0xFFFC System Non-maskable */
#define RESET_VECTOR            ("reset")                /* 0xFFFE Reset [Highest Priority] */

/************************************************************
* End of Modules
************************************************************/

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* #ifndef __msp430x09x */

