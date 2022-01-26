/* ============================================================================ */
/* Copyright (c) 2021, Texas Instruments Incorporated                           */
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

/* This file supports MSP430i2040 devices. */
/* Version: 1.212 */

/************************************************************
* STANDARD BITS
************************************************************/
/************************************************************
* STATUS REGISTER BITS
************************************************************/
/************************************************************
* PERIPHERAL FILE MAP
************************************************************/
/************************************************************
* SPECIAL FUNCTION REGISTER ADDRESSES + CONTROL BITS
************************************************************/
PROVIDE(IE1                = 0x0000);
PROVIDE(IFG1               = 0x0002);
PROVIDE(SYSJTAGDIS         = 0x01FE);
/************************************************************
* CLOCK SYSTEM
************************************************************/
PROVIDE(CSCTL0             = 0x0050);
PROVIDE(CSCTL1             = 0x0051);
PROVIDE(CSIRFCAL           = 0x0052);
PROVIDE(CSIRTCAL           = 0x0053);
PROVIDE(CSERFCAL           = 0x0054);
PROVIDE(CSERTCAL           = 0x0055);
/*************************************************************
* Flash Memory
*************************************************************/
PROVIDE(FCTL1              = 0x0128);
PROVIDE(FCTL2              = 0x012A);
PROVIDE(FCTL3              = 0x012C);
/************************************************************
* HARDWARE MULTIPLIER
************************************************************/
PROVIDE(MPY                = 0x0130);
PROVIDE(MPYS               = 0x0132);
PROVIDE(MAC                = 0x0134);
PROVIDE(MACS               = 0x0136);
PROVIDE(OP2                = 0x0138);
PROVIDE(RESLO              = 0x013A);
PROVIDE(RESHI              = 0x013C);
PROVIDE(SUMEXT             = 0x013E);
/************************************************************
* PMM - Power Management System
************************************************************/
PROVIDE(LPM45CTL           = 0x0060);
PROVIDE(VMONCTL            = 0x0061);
PROVIDE(REFCAL0            = 0x0062);
PROVIDE(REFCAL1            = 0x0063);
/************************************************************
* DIGITAL I/O Port1/2
************************************************************/
PROVIDE(PAIN               = 0x0010);
PROVIDE(PAIN_L             = 0x0010);
PROVIDE(PAIN_H             = 0x0011);
PROVIDE(PAOUT              = 0x0012);
PROVIDE(PAOUT_L            = 0x0012);
PROVIDE(PAOUT_H            = 0x0013);
PROVIDE(PADIR              = 0x0014);
PROVIDE(PADIR_L            = 0x0014);
PROVIDE(PADIR_H            = 0x0015);
PROVIDE(PASEL0             = 0x001A);
PROVIDE(PASEL0_L           = 0x001A);
PROVIDE(PASEL0_H           = 0x001B);
PROVIDE(PASEL1             = 0x001C);
PROVIDE(PASEL1_L           = 0x001C);
PROVIDE(PASEL1_H           = 0x001D);
PROVIDE(PAIES              = 0x0028);
PROVIDE(PAIES_L            = 0x0028);
PROVIDE(PAIES_H            = 0x0029);
PROVIDE(PAIE               = 0x002A);
PROVIDE(PAIE_L             = 0x002A);
PROVIDE(PAIE_H             = 0x002B);
PROVIDE(PAIFG              = 0x002C);
PROVIDE(PAIFG_L            = 0x002C);
PROVIDE(PAIFG_H            = 0x002D);
PROVIDE(P1IV               = 0x001E);
PROVIDE(P2IV               = 0x002E);
/************************************************************
* SD24_4 - Sigma Delta 24 Bit
************************************************************/
PROVIDE(SD24INCTL0         = 0x00B0);
PROVIDE(SD24INCTL1         = 0x00B1);
PROVIDE(SD24INCTL2         = 0x00B2);
PROVIDE(SD24INCTL3         = 0x00B3);
PROVIDE(SD24PRE0           = 0x00B8);
PROVIDE(SD24PRE1           = 0x00B9);
PROVIDE(SD24PRE2           = 0x00BA);
PROVIDE(SD24PRE3           = 0x00BB);
PROVIDE(SD24TRIM           = 0x00BF);
PROVIDE(SD24CTL            = 0x0100);
PROVIDE(SD24CCTL0          = 0x0102);
PROVIDE(SD24CCTL1          = 0x0104);
PROVIDE(SD24CCTL2          = 0x0106);
PROVIDE(SD24CCTL3          = 0x0108);
PROVIDE(SD24MEM0           = 0x0110);
PROVIDE(SD24MEM1           = 0x0112);
PROVIDE(SD24MEM2           = 0x0114);
PROVIDE(SD24MEM3           = 0x0116);
PROVIDE(SD24IV             = 0x01F0);
/************************************************************
* Timer0_A3
************************************************************/
PROVIDE(TA0IV              = 0x012E);
PROVIDE(TA0CTL             = 0x0160);
PROVIDE(TA0CCTL0           = 0x0162);
PROVIDE(TA0CCTL1           = 0x0164);
PROVIDE(TA0CCTL2           = 0x0166);
PROVIDE(TA0R               = 0x0170);
PROVIDE(TA0CCR0            = 0x0172);
PROVIDE(TA0CCR1            = 0x0174);
PROVIDE(TA0CCR2            = 0x0176);
/************************************************************
* Timer1_A3
************************************************************/
PROVIDE(TA1IV              = 0x011E);
PROVIDE(TA1CTL             = 0x0180);
PROVIDE(TA1CCTL0           = 0x0182);
PROVIDE(TA1CCTL1           = 0x0184);
PROVIDE(TA1CCTL2           = 0x0186);
PROVIDE(TA1R               = 0x0190);
PROVIDE(TA1CCR0            = 0x0192);
PROVIDE(TA1CCR1            = 0x0194);
PROVIDE(TA1CCR2            = 0x0196);
/************************************************************
* USCI A0
************************************************************/
PROVIDE(UCA0CTLW0          = 0x0140);
PROVIDE(UCA0CTLW0_L        = 0x0140);
PROVIDE(UCA0CTLW0_H        = 0x0141);
PROVIDE(UCA0CTLW1          = 0x0142);
PROVIDE(UCA0CTLW1_L        = 0x0142);
PROVIDE(UCA0CTLW1_H        = 0x0143);
PROVIDE(UCA0BRW            = 0x0146);
PROVIDE(UCA0BRW_L          = 0x0146);
PROVIDE(UCA0BRW_H          = 0x0147);
PROVIDE(UCA0MCTLW          = 0x0148);
PROVIDE(UCA0MCTLW_L        = 0x0148);
PROVIDE(UCA0MCTLW_H        = 0x0149);
PROVIDE(UCA0STATW          = 0x014A);
PROVIDE(UCA0RXBUF          = 0x014C);
PROVIDE(UCA0RXBUF_L        = 0x014C);
PROVIDE(UCA0RXBUF_H        = 0x014D);
PROVIDE(UCA0TXBUF          = 0x014E);
PROVIDE(UCA0TXBUF_L        = 0x014E);
PROVIDE(UCA0TXBUF_H        = 0x014F);
PROVIDE(UCA0ABCTL          = 0x0150);
PROVIDE(UCA0IRCTL          = 0x0152);
PROVIDE(UCA0IRCTL_L        = 0x0152);
PROVIDE(UCA0IRCTL_H        = 0x0153);
PROVIDE(UCA0IE             = 0x015A);
PROVIDE(UCA0IE_L           = 0x015A);
PROVIDE(UCA0IE_H           = 0x015B);
PROVIDE(UCA0IFG            = 0x015C);
PROVIDE(UCA0IFG_L          = 0x015C);
PROVIDE(UCA0IFG_H          = 0x015D);
PROVIDE(UCA0IV             = 0x015E);
/************************************************************
* USCI B0
************************************************************/
PROVIDE(UCB0CTLW0          = 0x01C0);
PROVIDE(UCB0CTLW0_L        = 0x01C0);
PROVIDE(UCB0CTLW0_H        = 0x01C1);
PROVIDE(UCB0CTLW1          = 0x01C2);
PROVIDE(UCB0CTLW1_L        = 0x01C2);
PROVIDE(UCB0CTLW1_H        = 0x01C3);
PROVIDE(UCB0BRW            = 0x01C6);
PROVIDE(UCB0BRW_L          = 0x01C6);
PROVIDE(UCB0BRW_H          = 0x01C7);
PROVIDE(UCB0STATW          = 0x01C8);
PROVIDE(UCB0STATW_L        = 0x01C8);
PROVIDE(UCB0STATW_H        = 0x01C9);
PROVIDE(UCB0TBCNT          = 0x01CA);
PROVIDE(UCB0TBCNT_L        = 0x01CA);
PROVIDE(UCB0TBCNT_H        = 0x01CB);
PROVIDE(UCB0RXBUF          = 0x01CC);
PROVIDE(UCB0RXBUF_L        = 0x01CC);
PROVIDE(UCB0RXBUF_H        = 0x01CD);
PROVIDE(UCB0TXBUF          = 0x01CE);
PROVIDE(UCB0TXBUF_L        = 0x01CE);
PROVIDE(UCB0TXBUF_H        = 0x01CF);
PROVIDE(UCB0I2COA0         = 0x01D4);
PROVIDE(UCB0I2COA0_L       = 0x01D4);
PROVIDE(UCB0I2COA0_H       = 0x01D5);
PROVIDE(UCB0I2COA1         = 0x01D6);
PROVIDE(UCB0I2COA1_L       = 0x01D6);
PROVIDE(UCB0I2COA1_H       = 0x01D7);
PROVIDE(UCB0I2COA2         = 0x01D8);
PROVIDE(UCB0I2COA2_L       = 0x01D8);
PROVIDE(UCB0I2COA2_H       = 0x01D9);
PROVIDE(UCB0I2COA3         = 0x01DA);
PROVIDE(UCB0I2COA3_L       = 0x01DA);
PROVIDE(UCB0I2COA3_H       = 0x01DB);
PROVIDE(UCB0ADDRX          = 0x01DC);
PROVIDE(UCB0ADDRX_L        = 0x01DC);
PROVIDE(UCB0ADDRX_H        = 0x01DD);
PROVIDE(UCB0ADDMASK        = 0x01DE);
PROVIDE(UCB0ADDMASK_L      = 0x01DE);
PROVIDE(UCB0ADDMASK_H      = 0x01DF);
PROVIDE(UCB0I2CSA          = 0x01E0);
PROVIDE(UCB0I2CSA_L        = 0x01E0);
PROVIDE(UCB0I2CSA_H        = 0x01E1);
PROVIDE(UCB0IE             = 0x01EA);
PROVIDE(UCB0IE_L           = 0x01EA);
PROVIDE(UCB0IE_H           = 0x01EB);
PROVIDE(UCB0IFG            = 0x01EC);
PROVIDE(UCB0IFG_L          = 0x01EC);
PROVIDE(UCB0IFG_H          = 0x01ED);
PROVIDE(UCB0IV             = 0x01EE);
/************************************************************
* WATCHDOG TIMER
************************************************************/
PROVIDE(WDTCTL             = 0x0120);
/************************************************************
* TLV Descriptors
************************************************************/
/************************************************************
* Interrupt Vectors (offset from 0xFFE0)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
