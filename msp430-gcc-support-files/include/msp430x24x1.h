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
* MSP430x24x1 devices.
*
* Texas Instruments, Version 1.2
*
* Rev. 1.0, Initial Version
* Rev. 1.1  added TLV in INFO Memory
* Rev. 1.2, added definitions for Interrupt Vectors xxIV
*
********************************************************************/

#ifndef __msp430x24x1
#define __msp430x24x1

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
#define WDTIE                  (0x01)         /* Watchdog Interrupt Enable */
#define OFIE                   (0x02)         /* Osc. Fault  Interrupt Enable */
#define NMIIE                  (0x10)         /* NMI Interrupt Enable */
#define ACCVIE                 (0x20)         /* Flash Access Violation Interrupt Enable */

sfr_b(IFG1);                                  /* Interrupt Flag 1 */
#define WDTIFG                 (0x01)         /* Watchdog Interrupt Flag */
#define OFIFG                  (0x02)         /* Osc. Fault Interrupt Flag */
#define PORIFG                 (0x04)         /* Power On Interrupt Flag */
#define RSTIFG                 (0x08)         /* Reset Interrupt Flag */
#define NMIIFG                 (0x10)         /* NMI Interrupt Flag */

sfr_b(IE2);                                   /* Interrupt Enable 2 */
#define UC0IE                  IE2
#define UCA0RXIE               (0x01)
#define UCA0TXIE               (0x02)
#define UCB0RXIE               (0x04)
#define UCB0TXIE               (0x08)

sfr_b(IFG2);                                  /* Interrupt Flag 2 */
#define UC0IFG                 IFG2
#define UCA0RXIFG              (0x01)
#define UCA0TXIFG              (0x02)
#define UCB0RXIFG              (0x04)
#define UCB0TXIFG              (0x08)

sfr_b(UC1IE);                                 /* USCI 1 Interrupt Enable */
#define UCA1RXIE               (0x01)
#define UCA1TXIE               (0x02)
#define UCB1RXIE               (0x04)
#define UCB1TXIE               (0x08)

sfr_b(UC1IFG);                                /* ISCI 1 Interrupt Flags */
#define UCA1RXIFG              (0x01)
#define UCA1TXIFG              (0x02)
#define UCB1RXIFG              (0x04)
#define UCB1TXIFG              (0x08)

/************************************************************
* Basic Clock Module
************************************************************/
#define __MSP430_HAS_BC2__                    /* Definition to show that Module is available */

sfr_b(DCOCTL);                                /* DCO Clock Frequency Control */
sfr_b(BCSCTL1);                               /* Basic Clock System Control 1 */
sfr_b(BCSCTL2);                               /* Basic Clock System Control 2 */
sfr_b(BCSCTL3);                               /* Basic Clock System Control 3 */

#define MOD0                   (0x01)         /* Modulation Bit 0 */
#define MOD1                   (0x02)         /* Modulation Bit 1 */
#define MOD2                   (0x04)         /* Modulation Bit 2 */
#define MOD3                   (0x08)         /* Modulation Bit 3 */
#define MOD4                   (0x10)         /* Modulation Bit 4 */
#define DCO0                   (0x20)         /* DCO Select Bit 0 */
#define DCO1                   (0x40)         /* DCO Select Bit 1 */
#define DCO2                   (0x80)         /* DCO Select Bit 2 */

#define RSEL0                  (0x01)         /* Range Select Bit 0 */
#define RSEL1                  (0x02)         /* Range Select Bit 1 */
#define RSEL2                  (0x04)         /* Range Select Bit 2 */
#define RSEL3                  (0x08)         /* Range Select Bit 3 */
#define DIVA0                  (0x10)         /* ACLK Divider 0 */
#define DIVA1                  (0x20)         /* ACLK Divider 1 */
#define XTS                    (0x40)         /* LFXTCLK 0:Low Freq. / 1: High Freq. */
#define XT2OFF                 (0x80)         /* Enable XT2CLK */

#define DIVA_0                 (0x00)         /* ACLK Divider 0: /1 */
#define DIVA_1                 (0x10)         /* ACLK Divider 1: /2 */
#define DIVA_2                 (0x20)         /* ACLK Divider 2: /4 */
#define DIVA_3                 (0x30)         /* ACLK Divider 3: /8 */

#define DCOR                   (0x01)         /* Enable External Resistor : 1 */
#define DIVS0                  (0x02)         /* SMCLK Divider 0 */
#define DIVS1                  (0x04)         /* SMCLK Divider 1 */
#define SELS                   (0x08)         /* SMCLK Source Select 0:DCOCLK / 1:XT2CLK/LFXTCLK */
#define DIVM0                  (0x10)         /* MCLK Divider 0 */
#define DIVM1                  (0x20)         /* MCLK Divider 1 */
#define SELM0                  (0x40)         /* MCLK Source Select 0 */
#define SELM1                  (0x80)         /* MCLK Source Select 1 */

#define DIVS_0                 (0x00)         /* SMCLK Divider 0: /1 */
#define DIVS_1                 (0x02)         /* SMCLK Divider 1: /2 */
#define DIVS_2                 (0x04)         /* SMCLK Divider 2: /4 */
#define DIVS_3                 (0x06)         /* SMCLK Divider 3: /8 */

#define DIVM_0                 (0x00)         /* MCLK Divider 0: /1 */
#define DIVM_1                 (0x10)         /* MCLK Divider 1: /2 */
#define DIVM_2                 (0x20)         /* MCLK Divider 2: /4 */
#define DIVM_3                 (0x30)         /* MCLK Divider 3: /8 */

#define SELM_0                 (0x00)         /* MCLK Source Select 0: DCOCLK */
#define SELM_1                 (0x40)         /* MCLK Source Select 1: DCOCLK */
#define SELM_2                 (0x80)         /* MCLK Source Select 2: XT2CLK/LFXTCLK */
#define SELM_3                 (0xC0)         /* MCLK Source Select 3: LFXTCLK */

#define LFXT1OF                (0x01)         /* Low/high Frequency Oscillator Fault Flag */
#define XT2OF                  (0x02)         /* High frequency oscillator 2 fault flag */
#define XCAP0                  (0x04)         /* XIN/XOUT Cap 0 */
#define XCAP1                  (0x08)         /* XIN/XOUT Cap 1 */
#define LFXT1S0                (0x10)         /* Mode 0 for LFXT1 (XTS = 0) */
#define LFXT1S1                (0x20)         /* Mode 1 for LFXT1 (XTS = 0) */
#define XT2S0                  (0x40)         /* Mode 0 for XT2 */
#define XT2S1                  (0x80)         /* Mode 1 for XT2 */

#define XCAP_0                 (0x00)         /* XIN/XOUT Cap : 0 pF */
#define XCAP_1                 (0x04)         /* XIN/XOUT Cap : 6 pF */
#define XCAP_2                 (0x08)         /* XIN/XOUT Cap : 10 pF */
#define XCAP_3                 (0x0C)         /* XIN/XOUT Cap : 12.5 pF */

#define LFXT1S_0               (0x00)         /* Mode 0 for LFXT1 : Normal operation */
#define LFXT1S_1               (0x10)         /* Mode 1 for LFXT1 : Reserved */
#define LFXT1S_2               (0x20)         /* Mode 2 for LFXT1 : VLO */
#define LFXT1S_3               (0x30)         /* Mode 3 for LFXT1 : Digital input signal */

#define XT2S_0                 (0x00)         /* Mode 0 for XT2 : 0.4 - 1 MHz */
#define XT2S_1                 (0x40)         /* Mode 1 for XT2 : 1 - 4 MHz */
#define XT2S_2                 (0x80)         /* Mode 2 for XT2 : 2 - 16 MHz */
#define XT2S_3                 (0xC0)         /* Mode 3 for XT2 : Digital input signal */

/************************************************************
* Comparator A
************************************************************/
#define __MSP430_HAS_CAPLUS__                 /* Definition to show that Module is available */

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
#define P2CA0                  (0x04)         /* Comp. A +Terminal Multiplexer */
#define P2CA1                  (0x08)         /* Comp. A -Terminal Multiplexer */
#define P2CA2                  (0x10)         /* Comp. A -Terminal Multiplexer */
#define P2CA3                  (0x20)         /* Comp. A -Terminal Multiplexer */
#define P2CA4                  (0x40)         /* Comp. A +Terminal Multiplexer */
#define CASHORT                (0x80)         /* Comp. A Short + and - Terminals */

#define CAPD0                  (0x01)         /* Comp. A Disable Input Buffer of Port Register .0 */
#define CAPD1                  (0x02)         /* Comp. A Disable Input Buffer of Port Register .1 */
#define CAPD2                  (0x04)         /* Comp. A Disable Input Buffer of Port Register .2 */
#define CAPD3                  (0x08)         /* Comp. A Disable Input Buffer of Port Register .3 */
#define CAPD4                  (0x10)         /* Comp. A Disable Input Buffer of Port Register .4 */
#define CAPD5                  (0x20)         /* Comp. A Disable Input Buffer of Port Register .5 */
#define CAPD6                  (0x40)         /* Comp. A Disable Input Buffer of Port Register .6 */
#define CAPD7                  (0x80)         /* Comp. A Disable Input Buffer of Port Register .7 */

/*************************************************************
* Flash Memory
*************************************************************/
#define __MSP430_HAS_FLASH2__                 /* Definition to show that Module is available */

sfr_w(FCTL1);                                 /* FLASH Control 1 */
sfr_w(FCTL2);                                 /* FLASH Control 2 */
sfr_w(FCTL3);                                 /* FLASH Control 3 */
sfr_w(FCTL4);                                 /* FLASH Control 4 */

#define FRKEY                  (0x9600)       /* Flash key returned by read */
#define FWKEY                  (0xA500)       /* Flash key for write */
#define FXKEY                  (0x3300)       /* for use with XOR instruction */

#define ERASE                  (0x0002)       /* Enable bit for Flash segment erase */
#define MERAS                  (0x0004)       /* Enable bit for Flash mass erase */
#define EEI                    (0x0008)       /* Enable Erase Interrupts */
#define EEIEX                  (0x0010)       /* Enable Emergency Interrupt Exit */
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
#define LOCKA                  (0x0040)       /* Segment A Lock bit: read = 1 - Segment is locked (read only) */
#define FAIL                   (0x0080)       /* Last Program or Erase failed */

#define MGR0                   (0x0010)       /* Marginal read 0 mode. */
#define MGR1                   (0x0020)       /* Marginal read 1 mode. */

/************************************************************
* HARDWARE MULTIPLIER
************************************************************/
#define __MSP430_HAS_MPY__                    /* Definition to show that Module is available */

sfr_w(MPY);                                   /* Multiply Unsigned/Operand 1 */
sfr_w(MPYS);                                  /* Multiply Signed/Operand 1 */
sfr_w(MAC);                                   /* Multiply Unsigned and Accumulate/Operand 1 */
sfr_w(MACS);                                  /* Multiply Signed and Accumulate/Operand 1 */
sfr_w(OP2);                                   /* Operand 2 */
sfr_w(RESLO);                                 /* Result Low Word */
sfr_w(RESHI);                                 /* Result High Word */
sfr_w(SUMEXT);                                /* Sum Extend */

/************************************************************
* DIGITAL I/O Port1/2 Pull up / Pull down Resistors
************************************************************/
#define __MSP430_HAS_PORT1_R__                /* Definition to show that Module is available */
#define __MSP430_HAS_PORT2_R__                /* Definition to show that Module is available */

#define __MSP430_HAS_P1SEL__                  /* Define for DriverLib */
#define __MSP430_HAS_P2SEL__                  /* Define for DriverLib */

sfr_b(P1IN);                                  /* Port 1 Input */
sfr_b(P1OUT);                                 /* Port 1 Output */
sfr_b(P1DIR);                                 /* Port 1 Direction */
sfr_b(P1IFG);                                 /* Port 1 Interrupt Flag */
sfr_b(P1IES);                                 /* Port 1 Interrupt Edge Select */
sfr_b(P1IE);                                  /* Port 1 Interrupt Enable */
sfr_b(P1SEL);                                 /* Port 1 Selection */
sfr_b(P1REN);                                 /* Port 1 Resistor Enable */

sfr_b(P2IN);                                  /* Port 2 Input */
sfr_b(P2OUT);                                 /* Port 2 Output */
sfr_b(P2DIR);                                 /* Port 2 Direction */
sfr_b(P2IFG);                                 /* Port 2 Interrupt Flag */
sfr_b(P2IES);                                 /* Port 2 Interrupt Edge Select */
sfr_b(P2IE);                                  /* Port 2 Interrupt Enable */
sfr_b(P2SEL);                                 /* Port 2 Selection */
sfr_b(P2REN);                                 /* Port 2 Resistor Enable */

/************************************************************
* DIGITAL I/O Port3/4 Pull up / Pull down Resistors
************************************************************/
#define __MSP430_HAS_PORT3_R__                /* Definition to show that Module is available */
#define __MSP430_HAS_PORT4_R__                /* Definition to show that Module is available */

#define __MSP430_HAS_P3SEL__                  /* Define for DriverLib */
#define __MSP430_HAS_P4SEL__                  /* Define for DriverLib */

sfr_b(P3IN);                                  /* Port 3 Input */
sfr_b(P3OUT);                                 /* Port 3 Output */
sfr_b(P3DIR);                                 /* Port 3 Direction */
sfr_b(P3SEL);                                 /* Port 3 Selection */
sfr_b(P3REN);                                 /* Port 3 Resistor Enable */

sfr_b(P4IN);                                  /* Port 4 Input */
sfr_b(P4OUT);                                 /* Port 4 Output */
sfr_b(P4DIR);                                 /* Port 4 Direction */
sfr_b(P4SEL);                                 /* Port 4 Selection */
sfr_b(P4REN);                                 /* Port 4 Resistor Enable */

/************************************************************
* DIGITAL I/O Port5/6 Pull up / Pull down Resistors
************************************************************/
#define __MSP430_HAS_PORT5_R__                /* Definition to show that Module is available */
#define __MSP430_HAS_PORT6_R__                /* Definition to show that Module is available */

#define __MSP430_HAS_P5SEL__                  /* Define for DriverLib */
#define __MSP430_HAS_P6SEL__                  /* Define for DriverLib */

sfr_b(P5IN);                                  /* Port 5 Input */
sfr_b(P5OUT);                                 /* Port 5 Output */
sfr_b(P5DIR);                                 /* Port 5 Direction */
sfr_b(P5SEL);                                 /* Port 5 Selection */
sfr_b(P5REN);                                 /* Port 5 Resistor Enable */

sfr_b(P6IN);                                  /* Port 6 Input */
sfr_b(P6OUT);                                 /* Port 6 Output */
sfr_b(P6DIR);                                 /* Port 6 Direction */
sfr_b(P6SEL);                                 /* Port 6 Selection */
sfr_b(P6REN);                                 /* Port 6 Resistor Enable */

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
* Timer A3
************************************************************/
#define __MSP430_HAS_TA3__                    /* Definition to show that Module is available */

sfr_w(TAIV);                                  /* Timer A Interrupt Vector Word */
sfr_w(TACTL);                                 /* Timer A Control */
sfr_w(TACCTL0);                               /* Timer A Capture/Compare Control 0 */
sfr_w(TACCTL1);                               /* Timer A Capture/Compare Control 1 */
sfr_w(TACCTL2);                               /* Timer A Capture/Compare Control 2 */
sfr_w(TAR);                                   /* Timer A Counter Register */
sfr_w(TACCR0);                                /* Timer A Capture/Compare 0 */
sfr_w(TACCR1);                                /* Timer A Capture/Compare 1 */
sfr_w(TACCR2);                                /* Timer A Capture/Compare 2 */

/* Alternate register names */
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
/* Alternate register names - 5xx style */
#define TA0IV                  TAIV           /* Timer A Interrupt Vector Word */
#define TA0CTL                 TACTL          /* Timer A Control */
#define TA0CCTL0               TACCTL0        /* Timer A Capture/Compare Control 0 */
#define TA0CCTL1               TACCTL1        /* Timer A Capture/Compare Control 1 */
#define TA0CCTL2               TACCTL2        /* Timer A Capture/Compare Control 2 */
#define TA0R                   TAR            /* Timer A Counter Register */
#define TA0CCR0                TACCR0         /* Timer A Capture/Compare 0 */
#define TA0CCR1                TACCR1         /* Timer A Capture/Compare 1 */
#define TA0CCR2                TACCR2         /* Timer A Capture/Compare 2 */
#define TA0IV_                 TAIV_          /* Timer A Interrupt Vector Word */
#define TA0CTL_                TACTL_         /* Timer A Control */
#define TA0CCTL0_              TACCTL0_       /* Timer A Capture/Compare Control 0 */
#define TA0CCTL1_              TACCTL1_       /* Timer A Capture/Compare Control 1 */
#define TA0CCTL2_              TACCTL2_       /* Timer A Capture/Compare Control 2 */
#define TA0R_                  TAR_           /* Timer A Counter Register */
#define TA0CCR0_               TACCR0_        /* Timer A Capture/Compare 0 */
#define TA0CCR1_               TACCR1_        /* Timer A Capture/Compare 1 */
#define TA0CCR2_               TACCR2_        /* Timer A Capture/Compare 2 */
#define TIMER0_A1_VECTOR       TIMERA1_VECTOR /* Int. Vector: Timer A CC1-2, TA */
#define TIMER0_A0_VECTOR       TIMERA0_VECTOR /* Int. Vector: Timer A CC0 */

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

/* TA3IV Definitions */
#define TAIV_NONE              (0x0000)       /* No Interrupt pending */
#define TAIV_TACCR1            (0x0002)       /* TACCR1_CCIFG */
#define TAIV_TACCR2            (0x0004)       /* TACCR2_CCIFG */
#define TAIV_6                 (0x0006)       /* Reserved */
#define TAIV_8                 (0x0008)       /* Reserved */
#define TAIV_TAIFG             (0x000A)       /* TAIFG */

/* Alternate register names - 5xx style */
#define TA0IV_NONE             (0x0000)       /* No Interrupt pending */
#define TA0IV_TACCR1           (0x0002)       /* TA0CCR1_CCIFG */
#define TA0IV_TACCR2           (0x0004)       /* TA0CCR2_CCIFG */
#define TA0IV_6                (0x0006)       /* Reserved */
#define TA0IV_8                (0x0008)       /* Reserved */
#define TA0IV_TAIFG            (0x000A)       /* TA0IFG */

/************************************************************
* Timer B7
************************************************************/
#define __MSP430_HAS_TB7__                    /* Definition to show that Module is available */

sfr_w(TBIV);                                  /* Timer B Interrupt Vector Word */
sfr_w(TBCTL);                                 /* Timer B Control */
sfr_w(TBCCTL0);                               /* Timer B Capture/Compare Control 0 */
sfr_w(TBCCTL1);                               /* Timer B Capture/Compare Control 1 */
sfr_w(TBCCTL2);                               /* Timer B Capture/Compare Control 2 */
sfr_w(TBCCTL3);                               /* Timer B Capture/Compare Control 3 */
sfr_w(TBCCTL4);                               /* Timer B Capture/Compare Control 4 */
sfr_w(TBCCTL5);                               /* Timer B Capture/Compare Control 5 */
sfr_w(TBCCTL6);                               /* Timer B Capture/Compare Control 6 */
sfr_w(TBR);                                   /* Timer B Counter Register */
sfr_w(TBCCR0);                                /* Timer B Capture/Compare 0 */
sfr_w(TBCCR1);                                /* Timer B Capture/Compare 1 */
sfr_w(TBCCR2);                                /* Timer B Capture/Compare 2 */
sfr_w(TBCCR3);                                /* Timer B Capture/Compare 3 */
sfr_w(TBCCR4);                                /* Timer B Capture/Compare 4 */
sfr_w(TBCCR5);                                /* Timer B Capture/Compare 5 */
sfr_w(TBCCR6);                                /* Timer B Capture/Compare 6 */

/* Alternate register names - 5xx style */
#define TB0IV                  TBIV           /* Timer B Interrupt Vector Word */
#define TB0CTL                 TBCTL          /* Timer B Control */
#define TB0CCTL0               TBCCTL0        /* Timer B Capture/Compare Control 0 */
#define TB0CCTL1               TBCCTL1        /* Timer B Capture/Compare Control 1 */
#define TB0CCTL2               TBCCTL2        /* Timer B Capture/Compare Control 2 */
#define TB0CCTL3               TBCCTL3        /* Timer B Capture/Compare Control 3 */
#define TB0CCTL4               TBCCTL4        /* Timer B Capture/Compare Control 4 */
#define TB0CCTL5               TBCCTL5        /* Timer B Capture/Compare Control 5 */
#define TB0CCTL6               TBCCTL6        /* Timer B Capture/Compare Control 6 */
#define TB0R                   TBR            /* Timer B Counter Register */
#define TB0CCR0                TBCCR0         /* Timer B Capture/Compare 0 */
#define TB0CCR1                TBCCR1         /* Timer B Capture/Compare 1 */
#define TB0CCR2                TBCCR2         /* Timer B Capture/Compare 2 */
#define TB0CCR3                TBCCR3         /* Timer B Capture/Compare 3 */
#define TB0CCR4                TBCCR4         /* Timer B Capture/Compare 4 */
#define TB0CCR5                TBCCR5         /* Timer B Capture/Compare 5 */
#define TB0CCR6                TBCCR6         /* Timer B Capture/Compare 6 */
#define TB0IV_                 TBIV_          /* Timer B Interrupt Vector Word */
#define TB0CTL_                TBCTL_         /* Timer B Control */
#define TB0CCTL0_              TBCCTL0_       /* Timer B Capture/Compare Control 0 */
#define TB0CCTL1_              TBCCTL1_       /* Timer B Capture/Compare Control 1 */
#define TB0CCTL2_              TBCCTL2_       /* Timer B Capture/Compare Control 2 */
#define TB0CCTL3_              TBCCTL3_       /* Timer B Capture/Compare Control 3 */
#define TB0CCTL4_              TBCCTL4_       /* Timer B Capture/Compare Control 4 */
#define TB0CCTL5_              TBCCTL5_       /* Timer B Capture/Compare Control 5 */
#define TB0CCTL6_              TBCCTL6_       /* Timer B Capture/Compare Control 6 */
#define TB0R_                  TBR_           /* Timer B Counter Register */
#define TB0CCR0_               TBCCR0_        /* Timer B Capture/Compare 0 */
#define TB0CCR1_               TBCCR1_        /* Timer B Capture/Compare 1 */
#define TB0CCR2_               TBCCR2_        /* Timer B Capture/Compare 2 */
#define TB0CCR3_               TBCCR3_        /* Timer B Capture/Compare 3 */
#define TB0CCR4_               TBCCR4_        /* Timer B Capture/Compare 4 */
#define TB0CCR5_               TBCCR5_        /* Timer B Capture/Compare 5 */
#define TB0CCR6_               TBCCR6_        /* Timer B Capture/Compare 6 */
#define TIMER0_B1_VECTOR       TIMERB1_VECTOR /* Int. Vector: Timer B CC1-6, TB */
#define TIMER0_B0_VECTOR       TIMERB0_VECTOR /* Int. Vector: Timer B CC0 */

#define TBCLGRP1               (0x4000)       /* Timer B Compare latch load group 1 */
#define TBCLGRP0               (0x2000)       /* Timer B Compare latch load group 0 */
#define CNTL1                  (0x1000)       /* Counter lenght 1 */
#define CNTL0                  (0x0800)       /* Counter lenght 0 */
#define TBSSEL1                (0x0200)       /* Clock source 1 */
#define TBSSEL0                (0x0100)       /* Clock source 0 */
#define TBCLR                  (0x0004)       /* Timer B counter clear */
#define TBIE                   (0x0002)       /* Timer B interrupt enable */
#define TBIFG                  (0x0001)       /* Timer B interrupt flag */

#define SHR1                   (0x4000)       /* Timer B Compare latch load group 1 */
#define SHR0                   (0x2000)       /* Timer B Compare latch load group 0 */

#define TBSSEL_0               (0x0000)       /* Clock Source: TBCLK */
#define TBSSEL_1               (0x0100)       /* Clock Source: ACLK  */
#define TBSSEL_2               (0x0200)       /* Clock Source: SMCLK */
#define TBSSEL_3               (0x0300)       /* Clock Source: INCLK */
#define CNTL_0                 (0x0000)       /* Counter lenght: 16 bit */
#define CNTL_1                 (0x0800)       /* Counter lenght: 12 bit */
#define CNTL_2                 (0x1000)       /* Counter lenght: 10 bit */
#define CNTL_3                 (0x1800)       /* Counter lenght:  8 bit */
#define SHR_0                  (0x0000)       /* Timer B Group: 0 - individually */
#define SHR_1                  (0x2000)       /* Timer B Group: 1 - 3 groups (1-2, 3-4, 5-6) */
#define SHR_2                  (0x4000)       /* Timer B Group: 2 - 2 groups (1-3, 4-6)*/
#define SHR_3                  (0x6000)       /* Timer B Group: 3 - 1 group (all) */
#define TBCLGRP_0              (0x0000)       /* Timer B Group: 0 - individually */
#define TBCLGRP_1              (0x2000)       /* Timer B Group: 1 - 3 groups (1-2, 3-4, 5-6) */
#define TBCLGRP_2              (0x4000)       /* Timer B Group: 2 - 2 groups (1-3, 4-6)*/
#define TBCLGRP_3              (0x6000)       /* Timer B Group: 3 - 1 group (all) */

/* Additional Timer B Control Register bits are defined in Timer A */
#define CLLD1                  (0x0400)       /* Compare latch load source 1 */
#define CLLD0                  (0x0200)       /* Compare latch load source 0 */

#define SLSHR1                 (0x0400)       /* Compare latch load source 1 */
#define SLSHR0                 (0x0200)       /* Compare latch load source 0 */

#define SLSHR_0                (0x0000)       /* Compare latch load sourec : 0 - immediate */
#define SLSHR_1                (0x0200)       /* Compare latch load sourec : 1 - TBR counts to 0 */
#define SLSHR_2                (0x0400)       /* Compare latch load sourec : 2 - up/down */
#define SLSHR_3                (0x0600)       /* Compare latch load sourec : 3 - TBR counts to TBCTL0 */

#define CLLD_0                 (0x0000)       /* Compare latch load sourec : 0 - immediate */
#define CLLD_1                 (0x0200)       /* Compare latch load sourec : 1 - TBR counts to 0 */
#define CLLD_2                 (0x0400)       /* Compare latch load sourec : 2 - up/down */
#define CLLD_3                 (0x0600)       /* Compare latch load sourec : 3 - TBR counts to TBCTL0 */

/* TB7IV Definitions */
#define TBIV_NONE              (0x0000)       /* No Interrupt pending */
#define TBIV_TBCCR1            (0x0002)       /* TBCCR1_CCIFG */
#define TBIV_TBCCR2            (0x0004)       /* TBCCR2_CCIFG */
#define TBIV_TBCCR3            (0x0006)       /* TBCCR3_CCIFG */
#define TBIV_TBCCR4            (0x0008)       /* TBCCR4_CCIFG */
#define TBIV_TBCCR5            (0x000A)       /* TBCCR3_CCIFG */
#define TBIV_TBCCR6            (0x000C)       /* TBCCR4_CCIFG */
#define TBIV_TBIFG             (0x000E)       /* TBIFG */

/* Alternate register names - 5xx style */
#define TB0IV_NONE             (0x0000)       /* No Interrupt pending */
#define TB0IV_TBCCR1           (0x0002)       /* TB0CCR1_CCIFG */
#define TB0IV_TBCCR2           (0x0004)       /* TB0CCR2_CCIFG */
#define TB0IV_TBCCR3           (0x0006)       /* TB0CCR3_CCIFG */
#define TB0IV_TBCCR4           (0x0008)       /* TB0CCR4_CCIFG */
#define TB0IV_TBCCR5           (0x000A)       /* TB0CCR3_CCIFG */
#define TB0IV_TBCCR6           (0x000C)       /* TB0CCR4_CCIFG */
#define TB0IV_TBIFG            (0x000E)       /* TB0IFG */

/************************************************************
* USCI
************************************************************/
#define __MSP430_HAS_USCI__                   /* Definition to show that Module is available */
#define __MSP430_HAS_USCI_AB0__                /* Definition to show that Module is available */
#define __MSP430_HAS_USCI_AB1__                /* Definition to show that Module is available */

sfr_b(UCA0CTL0);                              /* USCI A0 Control Register 0 */
sfr_b(UCA0CTL1);                              /* USCI A0 Control Register 1 */
sfr_b(UCA0BR0);                               /* USCI A0 Baud Rate 0 */
sfr_b(UCA0BR1);                               /* USCI A0 Baud Rate 1 */
sfr_b(UCA0MCTL);                              /* USCI A0 Modulation Control */
sfr_b(UCA0STAT);                              /* USCI A0 Status Register */
sfr_b(UCA0RXBUF);                             /* USCI A0 Receive Buffer */
sfr_b(UCA0TXBUF);                             /* USCI A0 Transmit Buffer */
sfr_b(UCA0ABCTL);                             /* USCI A0 LIN Control */
sfr_b(UCA0IRTCTL);                            /* USCI A0 IrDA Transmit Control */
sfr_b(UCA0IRRCTL);                            /* USCI A0 IrDA Receive Control */



sfr_b(UCB0CTL0);                              /* USCI B0 Control Register 0 */
sfr_b(UCB0CTL1);                              /* USCI B0 Control Register 1 */
sfr_b(UCB0BR0);                               /* USCI B0 Baud Rate 0 */
sfr_b(UCB0BR1);                               /* USCI B0 Baud Rate 1 */
sfr_b(UCB0I2CIE);                             /* USCI B0 I2C Interrupt Enable Register */
sfr_b(UCB0STAT);                              /* USCI B0 Status Register */
sfr_b(UCB0RXBUF);                             /* USCI B0 Receive Buffer */
sfr_b(UCB0TXBUF);                             /* USCI B0 Transmit Buffer */
sfr_w(UCB0I2COA);                             /* USCI B0 I2C Own Address */
sfr_w(UCB0I2CSA);                             /* USCI B0 I2C Slave Address */

sfr_b(UCA1CTL0);                              /* USCI A1 Control Register 0 */
sfr_b(UCA1CTL1);                              /* USCI A1 Control Register 1 */
sfr_b(UCA1BR0);                               /* USCI A1 Baud Rate 0 */
sfr_b(UCA1BR1);                               /* USCI A1 Baud Rate 1 */
sfr_b(UCA1MCTL);                              /* USCI A1 Modulation Control */
sfr_b(UCA1STAT);                              /* USCI A1 Status Register */
sfr_b(UCA1RXBUF);                             /* USCI A1 Receive Buffer */
sfr_b(UCA1TXBUF);                             /* USCI A1 Transmit Buffer */
sfr_b(UCA1ABCTL);                             /* USCI A1 LIN Control */
sfr_b(UCA1IRTCTL);                            /* USCI A1 IrDA Transmit Control */
sfr_b(UCA1IRRCTL);                            /* USCI A1 IrDA Receive Control */



sfr_b(UCB1CTL0);                              /* USCI B1 Control Register 0 */
sfr_b(UCB1CTL1);                              /* USCI B1 Control Register 1 */
sfr_b(UCB1BR0);                               /* USCI B1 Baud Rate 0 */
sfr_b(UCB1BR1);                               /* USCI B1 Baud Rate 1 */
sfr_b(UCB1I2CIE);                             /* USCI B1 I2C Interrupt Enable Register */
sfr_b(UCB1STAT);                              /* USCI B1 Status Register */
sfr_b(UCB1RXBUF);                             /* USCI B1 Receive Buffer */
sfr_b(UCB1TXBUF);                             /* USCI B1 Transmit Buffer */
sfr_w(UCB1I2COA);                             /* USCI B1 I2C Own Address */
sfr_w(UCB1I2CSA);                             /* USCI B1 I2C Slave Address */

// UART-Mode Bits
#define UCPEN                  (0x80)         /* Async. Mode: Parity enable */
#define UCPAR                  (0x40)         /* Async. Mode: Parity     0:odd / 1:even */
#define UCMSB                  (0x20)         /* Async. Mode: MSB first  0:LSB / 1:MSB */
#define UC7BIT                 (0x10)         /* Async. Mode: Data Bits  0:8-bits / 1:7-bits */
#define UCSPB                  (0x08)         /* Async. Mode: Stop Bits  0:one / 1: two */
#define UCMODE1                (0x04)         /* Async. Mode: USCI Mode 1 */
#define UCMODE0                (0x02)         /* Async. Mode: USCI Mode 0 */
#define UCSYNC                 (0x01)         /* Sync-Mode  0:UART-Mode / 1:SPI-Mode */

// SPI-Mode Bits
#define UCCKPH                 (0x80)         /* Sync. Mode: Clock Phase */
#define UCCKPL                 (0x40)         /* Sync. Mode: Clock Polarity */
#define UCMST                  (0x08)         /* Sync. Mode: Master Select */

// I2C-Mode Bits
#define UCA10                  (0x80)         /* 10-bit Address Mode */
#define UCSLA10                (0x40)         /* 10-bit Slave Address Mode */
#define UCMM                   (0x20)         /* Multi-Master Environment */
//#define res               (0x10)    /* reserved */
#define UCMODE_0               (0x00)         /* Sync. Mode: USCI Mode: 0 */
#define UCMODE_1               (0x02)         /* Sync. Mode: USCI Mode: 1 */
#define UCMODE_2               (0x04)         /* Sync. Mode: USCI Mode: 2 */
#define UCMODE_3               (0x06)         /* Sync. Mode: USCI Mode: 3 */

// UART-Mode Bits
#define UCSSEL1                (0x80)         /* USCI 0 Clock Source Select 1 */
#define UCSSEL0                (0x40)         /* USCI 0 Clock Source Select 0 */
#define UCRXEIE                (0x20)         /* RX Error interrupt enable */
#define UCBRKIE                (0x10)         /* Break interrupt enable */
#define UCDORM                 (0x08)         /* Dormant (Sleep) Mode */
#define UCTXADDR               (0x04)         /* Send next Data as Address */
#define UCTXBRK                (0x02)         /* Send next Data as Break */
#define UCSWRST                (0x01)         /* USCI Software Reset */

// SPI-Mode Bits
//#define res               (0x20)    /* reserved */
//#define res               (0x10)    /* reserved */
//#define res               (0x08)    /* reserved */
//#define res               (0x04)    /* reserved */
//#define res               (0x02)    /* reserved */

// I2C-Mode Bits
//#define res               (0x20)    /* reserved */
#define UCTR                   (0x10)         /* Transmit/Receive Select/Flag */
#define UCTXNACK               (0x08)         /* Transmit NACK */
#define UCTXSTP                (0x04)         /* Transmit STOP */
#define UCTXSTT                (0x02)         /* Transmit START */
#define UCSSEL_0               (0x00)         /* USCI 0 Clock Source: 0 */
#define UCSSEL_1               (0x40)         /* USCI 0 Clock Source: 1 */
#define UCSSEL_2               (0x80)         /* USCI 0 Clock Source: 2 */
#define UCSSEL_3               (0xC0)         /* USCI 0 Clock Source: 3 */

#define UCBRF3                 (0x80)         /* USCI First Stage Modulation Select 3 */
#define UCBRF2                 (0x40)         /* USCI First Stage Modulation Select 2 */
#define UCBRF1                 (0x20)         /* USCI First Stage Modulation Select 1 */
#define UCBRF0                 (0x10)         /* USCI First Stage Modulation Select 0 */
#define UCBRS2                 (0x08)         /* USCI Second Stage Modulation Select 2 */
#define UCBRS1                 (0x04)         /* USCI Second Stage Modulation Select 1 */
#define UCBRS0                 (0x02)         /* USCI Second Stage Modulation Select 0 */
#define UCOS16                 (0x01)         /* USCI 16-times Oversampling enable */

#define UCBRF_0                (0x00)         /* USCI First Stage Modulation: 0 */
#define UCBRF_1                (0x10)         /* USCI First Stage Modulation: 1 */
#define UCBRF_2                (0x20)         /* USCI First Stage Modulation: 2 */
#define UCBRF_3                (0x30)         /* USCI First Stage Modulation: 3 */
#define UCBRF_4                (0x40)         /* USCI First Stage Modulation: 4 */
#define UCBRF_5                (0x50)         /* USCI First Stage Modulation: 5 */
#define UCBRF_6                (0x60)         /* USCI First Stage Modulation: 6 */
#define UCBRF_7                (0x70)         /* USCI First Stage Modulation: 7 */
#define UCBRF_8                (0x80)         /* USCI First Stage Modulation: 8 */
#define UCBRF_9                (0x90)         /* USCI First Stage Modulation: 9 */
#define UCBRF_10               (0xA0)         /* USCI First Stage Modulation: A */
#define UCBRF_11               (0xB0)         /* USCI First Stage Modulation: B */
#define UCBRF_12               (0xC0)         /* USCI First Stage Modulation: C */
#define UCBRF_13               (0xD0)         /* USCI First Stage Modulation: D */
#define UCBRF_14               (0xE0)         /* USCI First Stage Modulation: E */
#define UCBRF_15               (0xF0)         /* USCI First Stage Modulation: F */

#define UCBRS_0                (0x00)         /* USCI Second Stage Modulation: 0 */
#define UCBRS_1                (0x02)         /* USCI Second Stage Modulation: 1 */
#define UCBRS_2                (0x04)         /* USCI Second Stage Modulation: 2 */
#define UCBRS_3                (0x06)         /* USCI Second Stage Modulation: 3 */
#define UCBRS_4                (0x08)         /* USCI Second Stage Modulation: 4 */
#define UCBRS_5                (0x0A)         /* USCI Second Stage Modulation: 5 */
#define UCBRS_6                (0x0C)         /* USCI Second Stage Modulation: 6 */
#define UCBRS_7                (0x0E)         /* USCI Second Stage Modulation: 7 */

#define UCLISTEN               (0x80)         /* USCI Listen mode */
#define UCFE                   (0x40)         /* USCI Frame Error Flag */
#define UCOE                   (0x20)         /* USCI Overrun Error Flag */
#define UCPE                   (0x10)         /* USCI Parity Error Flag */
#define UCBRK                  (0x08)         /* USCI Break received */
#define UCRXERR                (0x04)         /* USCI RX Error Flag */
#define UCADDR                 (0x02)         /* USCI Address received Flag */
#define UCBUSY                 (0x01)         /* USCI Busy Flag */
#define UCIDLE                 (0x02)         /* USCI Idle line detected Flag */

//#define res               (0x80)    /* reserved */
//#define res               (0x40)    /* reserved */
//#define res               (0x20)    /* reserved */
//#define res               (0x10)    /* reserved */
#define UCNACKIE               (0x08)         /* NACK Condition interrupt enable */
#define UCSTPIE                (0x04)         /* STOP Condition interrupt enable */
#define UCSTTIE                (0x02)         /* START Condition interrupt enable */
#define UCALIE                 (0x01)         /* Arbitration Lost interrupt enable */

#define UCSCLLOW               (0x40)         /* SCL low */
#define UCGC                   (0x20)         /* General Call address received Flag */
#define UCBBUSY                (0x10)         /* Bus Busy Flag */
#define UCNACKIFG              (0x08)         /* NAK Condition interrupt Flag */
#define UCSTPIFG               (0x04)         /* STOP Condition interrupt Flag */
#define UCSTTIFG               (0x02)         /* START Condition interrupt Flag */
#define UCALIFG                (0x01)         /* Arbitration Lost interrupt Flag */

#define UCIRTXPL5              (0x80)         /* IRDA Transmit Pulse Length 5 */
#define UCIRTXPL4              (0x40)         /* IRDA Transmit Pulse Length 4 */
#define UCIRTXPL3              (0x20)         /* IRDA Transmit Pulse Length 3 */
#define UCIRTXPL2              (0x10)         /* IRDA Transmit Pulse Length 2 */
#define UCIRTXPL1              (0x08)         /* IRDA Transmit Pulse Length 1 */
#define UCIRTXPL0              (0x04)         /* IRDA Transmit Pulse Length 0 */
#define UCIRTXCLK              (0x02)         /* IRDA Transmit Pulse Clock Select */
#define UCIREN                 (0x01)         /* IRDA Encoder/Decoder enable */

#define UCIRRXFL5              (0x80)         /* IRDA Receive Filter Length 5 */
#define UCIRRXFL4              (0x40)         /* IRDA Receive Filter Length 4 */
#define UCIRRXFL3              (0x20)         /* IRDA Receive Filter Length 3 */
#define UCIRRXFL2              (0x10)         /* IRDA Receive Filter Length 2 */
#define UCIRRXFL1              (0x08)         /* IRDA Receive Filter Length 1 */
#define UCIRRXFL0              (0x04)         /* IRDA Receive Filter Length 0 */
#define UCIRRXPL               (0x02)         /* IRDA Receive Input Polarity */
#define UCIRRXFE               (0x01)         /* IRDA Receive Filter enable */

//#define res               (0x80)    /* reserved */
//#define res               (0x40)    /* reserved */
#define UCDELIM1               (0x20)         /* Break Sync Delimiter 1 */
#define UCDELIM0               (0x10)         /* Break Sync Delimiter 0 */
#define UCSTOE                 (0x08)         /* Sync-Field Timeout error */
#define UCBTOE                 (0x04)         /* Break Timeout error */
//#define res               (0x02)    /* reserved */
#define UCABDEN                (0x01)         /* Auto Baud Rate detect enable */

#define UCGCEN                 (0x8000)       /* I2C General Call enable */
#define UCOA9                  (0x0200)       /* I2C Own Address 9 */
#define UCOA8                  (0x0100)       /* I2C Own Address 8 */
#define UCOA7                  (0x0080)       /* I2C Own Address 7 */
#define UCOA6                  (0x0040)       /* I2C Own Address 6 */
#define UCOA5                  (0x0020)       /* I2C Own Address 5 */
#define UCOA4                  (0x0010)       /* I2C Own Address 4 */
#define UCOA3                  (0x0008)       /* I2C Own Address 3 */
#define UCOA2                  (0x0004)       /* I2C Own Address 2 */
#define UCOA1                  (0x0002)       /* I2C Own Address 1 */
#define UCOA0                  (0x0001)       /* I2C Own Address 0 */

#define UCSA9                  (0x0200)       /* I2C Slave Address 9 */
#define UCSA8                  (0x0100)       /* I2C Slave Address 8 */
#define UCSA7                  (0x0080)       /* I2C Slave Address 7 */
#define UCSA6                  (0x0040)       /* I2C Slave Address 6 */
#define UCSA5                  (0x0020)       /* I2C Slave Address 5 */
#define UCSA4                  (0x0010)       /* I2C Slave Address 4 */
#define UCSA3                  (0x0008)       /* I2C Slave Address 3 */
#define UCSA2                  (0x0004)       /* I2C Slave Address 2 */
#define UCSA1                  (0x0002)       /* I2C Slave Address 1 */
#define UCSA0                  (0x0001)       /* I2C Slave Address 0 */

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
* Calibration Data in Info Mem
************************************************************/

/* TLV Calibration Data Structure */
#define TAG_DCO_30             (0x01)         /* Tag for DCO30  Calibration Data */
#define TAG_EMPTY              (0xFE)         /* Tag for Empty Data Field in Calibration Data */

#ifndef __DisableCalData
sfr_w(TLV_CHECKSUM);                          /* TLV CHECK SUM */
sfr_b(TLV_DCO_30_TAG);                        /* TLV TAG_DCO30 TAG */
sfr_b(TLV_DCO_30_LEN);                        /* TLV TAG_DCO30 LEN */
#endif

#define CAL_DCO_16MHZ          (0x0000)       /* Index for DCOCTL  Calibration Data for 16MHz */
#define CAL_BC1_16MHZ          (0x0001)       /* Index for BCSCTL1 Calibration Data for 16MHz */
#define CAL_DCO_12MHZ          (0x0002)       /* Index for DCOCTL  Calibration Data for 12MHz */
#define CAL_BC1_12MHZ          (0x0003)       /* Index for BCSCTL1 Calibration Data for 12MHz */
#define CAL_DCO_8MHZ           (0x0004)       /* Index for DCOCTL  Calibration Data for 8MHz */
#define CAL_BC1_8MHZ           (0x0005)       /* Index for BCSCTL1 Calibration Data for 8MHz */
#define CAL_DCO_1MHZ           (0x0006)       /* Index for DCOCTL  Calibration Data for 1MHz */
#define CAL_BC1_1MHZ           (0x0007)       /* Index for BCSCTL1 Calibration Data for 1MHz */


/************************************************************
* Calibration Data in Info Mem
************************************************************/

#ifndef __DisableCalData

sfr_b(CALDCO_16MHZ);                          /* DCOCTL  Calibration Data for 16MHz */
sfr_b(CALBC1_16MHZ);                          /* BCSCTL1 Calibration Data for 16MHz */
sfr_b(CALDCO_12MHZ);                          /* DCOCTL  Calibration Data for 12MHz */
sfr_b(CALBC1_12MHZ);                          /* BCSCTL1 Calibration Data for 12MHz */
sfr_b(CALDCO_8MHZ);                           /* DCOCTL  Calibration Data for 8MHz */
sfr_b(CALBC1_8MHZ);                           /* BCSCTL1 Calibration Data for 8MHz */
sfr_b(CALDCO_1MHZ);                           /* DCOCTL  Calibration Data for 1MHz */
sfr_b(CALBC1_1MHZ);                           /* BCSCTL1 Calibration Data for 1MHz */

#endif /* #ifndef __DisableCalData */

/************************************************************
* Interrupt Vectors (offset from 0xFFC0)
************************************************************/

#define RESERVED0_VECTOR        ( 1)                     /* 0xFFC0 Reserved Int. Vector 0 */
#define RESERVED1_VECTOR        ( 2)                     /* 0xFFC2 Reserved Int. Vector 1 */
#define RESERVED2_VECTOR        ( 3)                     /* 0xFFC4 Reserved Int. Vector 2 */
#define RESERVED3_VECTOR        ( 4)                     /* 0xFFC6 Reserved Int. Vector 3 */
#define RESERVED4_VECTOR        ( 5)                     /* 0xFFC8 Reserved Int. Vector 4 */
#define RESERVED5_VECTOR        ( 6)                     /* 0xFFCA Reserved Int. Vector 5 */
#define RESERVED6_VECTOR        ( 7)                     /* 0xFFCC Reserved Int. Vector 6 */
#define RESERVED7_VECTOR        ( 8)                     /* 0xFFCE Reserved Int. Vector 7 */
#define RESERVED8_VECTOR        ( 9)                     /* 0xFFD0 Reserved Int. Vector 8 */
#define RESERVED9_VECTOR        (10)                     /* 0xFFD2 Reserved Int. Vector 9 */
#define RESERVED10_VECTOR       (11)                     /* 0xFFD4 Reserved Int. Vector 10 */
#define RESERVED11_VECTOR       (12)                     /* 0xFFD6 Reserved Int. Vector 11 */
#define RESERVED12_VECTOR       (13)                     /* 0xFFD8 Reserved Int. Vector 12 */
#define RESERVED13_VECTOR       (14)                     /* 0xFFDA Reserved Int. Vector 13 */
#define RESERVED14_VECTOR       (15)                     /* 0xFFDC Reserved Int. Vector 14 */
#define RESERVED15_VECTOR       (16)                     /* 0xFFDE Reserved Int. Vector 15 */
#define USCIAB1TX_VECTOR        (17)                     /* 0xFFE0 USCI A1/B1 Transmit */
#define USCIAB1RX_VECTOR        (18)                     /* 0xFFE2 USCI A1/B1 Receive */
#define PORT1_VECTOR            (19)                     /* 0xFFE4 Port 1 */
#define PORT2_VECTOR            (20)                     /* 0xFFE6 Port 2 */
#define RESERVED20_VECTOR       (21)                     /* 0xFFE8 Reserved Int. Vector 20 */
#define RESERVED21_VECTOR       (22)                     /* 0xFFEA Reserved Int. Vector 21 */
#define USCIAB0TX_VECTOR        (23)                     /* 0xFFEC USCI A0/B0 Transmit */
#define USCIAB0RX_VECTOR        (24)                     /* 0xFFEE USCI A0/B0 Receive */
#define TIMERA1_VECTOR          (25)                     /* 0xFFF0 Timer A CC1-2, TA */
#define TIMERA0_VECTOR          (26)                     /* 0xFFF2 Timer A CC0 */
#define WDT_VECTOR              (27)                     /* 0xFFF4 Watchdog Timer */
#define COMPARATORA_VECTOR      (28)                     /* 0xFFF6 Comparator A */
#define TIMERB1_VECTOR          (29)                     /* 0xFFF8 Timer B CC1-6, TB */
#define TIMERB0_VECTOR          (30)                     /* 0xFFFA Timer B CC0 */
#define NMI_VECTOR              (31)                     /* 0xFFFC Non-maskable */
#define RESET_VECTOR            ("reset")                /* 0xFFFE Reset [Highest Priority] */

/************************************************************
* End of Modules
************************************************************/

#ifdef __cplusplus
}
#endif /* extern "C" */

#endif /* #ifndef __msp430x24x1 */

