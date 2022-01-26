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

/* This file supports MSP430G2553 devices. */
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
PROVIDE(IE2                = 0x0001);
PROVIDE(IFG2               = 0x0003);
/************************************************************
* ADC10
************************************************************/
PROVIDE(ADC10DTC0          = 0x0048);
PROVIDE(ADC10DTC1          = 0x0049);
PROVIDE(ADC10AE0           = 0x004A);
PROVIDE(ADC10CTL0          = 0x01B0);
PROVIDE(ADC10CTL1          = 0x01B2);
PROVIDE(ADC10MEM           = 0x01B4);
PROVIDE(ADC10SA            = 0x01BC);
/************************************************************
* Basic Clock Module
************************************************************/
PROVIDE(DCOCTL             = 0x0056);
PROVIDE(BCSCTL1            = 0x0057);
PROVIDE(BCSCTL2            = 0x0058);
PROVIDE(BCSCTL3            = 0x0053);
/************************************************************
* Comparator A
************************************************************/
PROVIDE(CACTL1             = 0x0059);
PROVIDE(CACTL2             = 0x005A);
PROVIDE(CAPD               = 0x005B);
/*************************************************************
* Flash Memory
*************************************************************/
PROVIDE(FCTL1              = 0x0128);
PROVIDE(FCTL2              = 0x012A);
PROVIDE(FCTL3              = 0x012C);
/************************************************************
* DIGITAL I/O Port1/2 Pull up / Pull down Resistors
************************************************************/
PROVIDE(P1IN               = 0x0020);
PROVIDE(P1OUT              = 0x0021);
PROVIDE(P1DIR              = 0x0022);
PROVIDE(P1IFG              = 0x0023);
PROVIDE(P1IES              = 0x0024);
PROVIDE(P1IE               = 0x0025);
PROVIDE(P1SEL              = 0x0026);
PROVIDE(P1SEL2             = 0x0041);
PROVIDE(P1REN              = 0x0027);
PROVIDE(P2IN               = 0x0028);
PROVIDE(P2OUT              = 0x0029);
PROVIDE(P2DIR              = 0x002A);
PROVIDE(P2IFG              = 0x002B);
PROVIDE(P2IES              = 0x002C);
PROVIDE(P2IE               = 0x002D);
PROVIDE(P2SEL              = 0x002E);
PROVIDE(P2SEL2             = 0x0042);
PROVIDE(P2REN              = 0x002F);
/************************************************************
* DIGITAL I/O Port3 Pull up / Pull down Resistors
************************************************************/
PROVIDE(P3IN               = 0x0018);
PROVIDE(P3OUT              = 0x0019);
PROVIDE(P3DIR              = 0x001A);
PROVIDE(P3SEL              = 0x001B);
PROVIDE(P3SEL2             = 0x0043);
PROVIDE(P3REN              = 0x0010);
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
* USCI
************************************************************/
PROVIDE(UCA0CTL0           = 0x0060);
PROVIDE(UCA0CTL1           = 0x0061);
PROVIDE(UCA0BR0            = 0x0062);
PROVIDE(UCA0BR1            = 0x0063);
PROVIDE(UCA0MCTL           = 0x0064);
PROVIDE(UCA0STAT           = 0x0065);
PROVIDE(UCA0RXBUF          = 0x0066);
PROVIDE(UCA0TXBUF          = 0x0067);
PROVIDE(UCA0ABCTL          = 0x005D);
PROVIDE(UCA0IRTCTL         = 0x005E);
PROVIDE(UCA0IRRCTL         = 0x005F);
PROVIDE(UCB0CTL0           = 0x0068);
PROVIDE(UCB0CTL1           = 0x0069);
PROVIDE(UCB0BR0            = 0x006A);
PROVIDE(UCB0BR1            = 0x006B);
PROVIDE(UCB0I2CIE          = 0x006C);
PROVIDE(UCB0STAT           = 0x006D);
PROVIDE(UCB0RXBUF          = 0x006E);
PROVIDE(UCB0TXBUF          = 0x006F);
PROVIDE(UCB0I2COA          = 0x0118);
PROVIDE(UCB0I2CSA          = 0x011A);
/************************************************************
* WATCHDOG TIMER
************************************************************/
PROVIDE(WDTCTL             = 0x0120);
/************************************************************
* Calibration Data in Info Mem
************************************************************/
PROVIDE(CALDCO_16MHZ       = 0x10F8);
PROVIDE(CALBC1_16MHZ       = 0x10F9);
PROVIDE(CALDCO_12MHZ       = 0x10FA);
PROVIDE(CALBC1_12MHZ       = 0x10FB);
PROVIDE(CALDCO_8MHZ        = 0x10FC);
PROVIDE(CALBC1_8MHZ        = 0x10FD);
PROVIDE(CALDCO_1MHZ        = 0x10FE);
PROVIDE(CALBC1_1MHZ        = 0x10FF);
/************************************************************
* Calibration Data in Info Mem
************************************************************/
PROVIDE(TLV_CHECKSUM       = 0x10C0);
PROVIDE(TLV_DCO_30_TAG     = 0x10F6);
PROVIDE(TLV_DCO_30_LEN     = 0x10F7);
PROVIDE(TLV_ADC10_1_TAG    = 0x10DA);
PROVIDE(TLV_ADC10_1_LEN    = 0x10DB);
/************************************************************
* Interrupt Vectors (offset from 0xFFE0)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
