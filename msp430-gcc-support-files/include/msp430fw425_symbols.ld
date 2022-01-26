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

/* This file supports MSP430FW425 devices. */
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
* WATCHDOG TIMER
************************************************************/
PROVIDE(WDTCTL             = 0x0120);
/************************************************************
* DIGITAL I/O Port1/2
************************************************************/
PROVIDE(P1IN               = 0x0020);
PROVIDE(P1OUT              = 0x0021);
PROVIDE(P1DIR              = 0x0022);
PROVIDE(P1IFG              = 0x0023);
PROVIDE(P1IES              = 0x0024);
PROVIDE(P1IE               = 0x0025);
PROVIDE(P1SEL              = 0x0026);
PROVIDE(P2IN               = 0x0028);
PROVIDE(P2OUT              = 0x0029);
PROVIDE(P2DIR              = 0x002A);
PROVIDE(P2IFG              = 0x002B);
PROVIDE(P2IES              = 0x002C);
PROVIDE(P2IE               = 0x002D);
PROVIDE(P2SEL              = 0x002E);
/************************************************************
* DIGITAL I/O Port3/4
************************************************************/
PROVIDE(P3IN               = 0x0018);
PROVIDE(P3OUT              = 0x0019);
PROVIDE(P3DIR              = 0x001A);
PROVIDE(P3SEL              = 0x001B);
PROVIDE(P4IN               = 0x001C);
PROVIDE(P4OUT              = 0x001D);
PROVIDE(P4DIR              = 0x001E);
PROVIDE(P4SEL              = 0x001F);
/************************************************************
* DIGITAL I/O Port5/6
************************************************************/
PROVIDE(P5IN               = 0x0030);
PROVIDE(P5OUT              = 0x0031);
PROVIDE(P5DIR              = 0x0032);
PROVIDE(P5SEL              = 0x0033);
PROVIDE(P6IN               = 0x0034);
PROVIDE(P6OUT              = 0x0035);
PROVIDE(P6DIR              = 0x0036);
PROVIDE(P6SEL              = 0x0037);
/************************************************************
* BASIC TIMER
************************************************************/
PROVIDE(BTCTL              = 0x0040);
PROVIDE(BTCNT1             = 0x0046);
PROVIDE(BTCNT2             = 0x0047);
/************************************************************
* SYSTEM CLOCK, FLL+ (x41x)
************************************************************/
PROVIDE(SCFI0              = 0x0050);
PROVIDE(SCFI1              = 0x0051);
PROVIDE(SCFQCTL            = 0x0052);
PROVIDE(FLL_CTL0           = 0x0053);
PROVIDE(FLL_CTL1           = 0x0054);
/************************************************************
* Brown-Out, Supply Voltage Supervision (SVS)
************************************************************/
PROVIDE(SVSCTL             = 0x0056);
/************************************************************
* LCD
************************************************************/
PROVIDE(LCDCTL             = 0x0090);
PROVIDE(LCDM1              = 0x0091);
PROVIDE(LCDM2              = 0x0092);
PROVIDE(LCDM3              = 0x0093);
PROVIDE(LCDM4              = 0x0094);
PROVIDE(LCDM5              = 0x0095);
PROVIDE(LCDM6              = 0x0096);
PROVIDE(LCDM7              = 0x0097);
PROVIDE(LCDM8              = 0x0098);
PROVIDE(LCDM9              = 0x0099);
PROVIDE(LCDM10             = 0x009A);
PROVIDE(LCDM11             = 0x009B);
PROVIDE(LCDM12             = 0x009C);
PROVIDE(LCDM13             = 0x009D);
PROVIDE(LCDM14             = 0x009E);
PROVIDE(LCDM15             = 0x009F);
PROVIDE(LCDM16             = 0x00A0);
PROVIDE(LCDM17             = 0x00A1);
PROVIDE(LCDM18             = 0x00A2);
PROVIDE(LCDM19             = 0x00A3);
PROVIDE(LCDM20             = 0x00A4);
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
* Timer1_A5
************************************************************/
PROVIDE(TA1IV              = 0x011E);
PROVIDE(TA1CTL             = 0x0180);
PROVIDE(TA1CCTL0           = 0x0182);
PROVIDE(TA1CCTL1           = 0x0184);
PROVIDE(TA1CCTL2           = 0x0186);
PROVIDE(TA1CCTL3           = 0x0188);
PROVIDE(TA1CCTL4           = 0x018A);
PROVIDE(TA1R               = 0x0190);
PROVIDE(TA1CCR0            = 0x0192);
PROVIDE(TA1CCR1            = 0x0194);
PROVIDE(TA1CCR2            = 0x0196);
PROVIDE(TA1CCR3            = 0x0198);
PROVIDE(TA1CCR4            = 0x019A);
/*************************************************************
* Flash Memory
*************************************************************/
PROVIDE(FCTL1              = 0x0128);
PROVIDE(FCTL2              = 0x012A);
PROVIDE(FCTL3              = 0x012C);
/************************************************************
* Comparator A
************************************************************/
PROVIDE(CACTL1             = 0x0059);
PROVIDE(CACTL2             = 0x005A);
PROVIDE(CAPD               = 0x005B);
/************************************************************
* Scan-I/F
************************************************************/
PROVIDE(SIFDEBUG           = 0x01B0);
PROVIDE(SIFCNT             = 0x01B2);
PROVIDE(SIFPSMV            = 0x01B4);
PROVIDE(SIFCTL1            = 0x01B6);
PROVIDE(SIFCTL2            = 0x01B8);
PROVIDE(SIFCTL3            = 0x01BA);
PROVIDE(SIFCTL4            = 0x01BC);
PROVIDE(SIFCTL5            = 0x01BE);
PROVIDE(SIFDACR0           = 0x01C0);
PROVIDE(SIFDACR1           = 0x01C2);
PROVIDE(SIFDACR2           = 0x01C4);
PROVIDE(SIFDACR3           = 0x01C6);
PROVIDE(SIFDACR4           = 0x01C8);
PROVIDE(SIFDACR5           = 0x01CA);
PROVIDE(SIFDACR6           = 0x01CC);
PROVIDE(SIFDACR7           = 0x01CE);
PROVIDE(SIFTSM0            = 0x01D0);
PROVIDE(SIFTSM1            = 0x01D2);
PROVIDE(SIFTSM2            = 0x01D4);
PROVIDE(SIFTSM3            = 0x01D6);
PROVIDE(SIFTSM4            = 0x01D8);
PROVIDE(SIFTSM5            = 0x01DA);
PROVIDE(SIFTSM6            = 0x01DC);
PROVIDE(SIFTSM7            = 0x01DE);
PROVIDE(SIFTSM8            = 0x01E0);
PROVIDE(SIFTSM9            = 0x01E2);
PROVIDE(SIFTSM10           = 0x01E4);
PROVIDE(SIFTSM11           = 0x01E6);
PROVIDE(SIFTSM12           = 0x01E8);
PROVIDE(SIFTSM13           = 0x01EA);
PROVIDE(SIFTSM14           = 0x01EC);
PROVIDE(SIFTSM15           = 0x01EE);
PROVIDE(SIFTSM16           = 0x01F0);
PROVIDE(SIFTSM17           = 0x01F2);
PROVIDE(SIFTSM18           = 0x01F4);
PROVIDE(SIFTSM19           = 0x01F6);
PROVIDE(SIFTSM20           = 0x01F8);
PROVIDE(SIFTSM21           = 0x01FA);
PROVIDE(SIFTSM22           = 0x01FC);
PROVIDE(SIFTSM23           = 0x01FE);
/************************************************************
* Interrupt Vectors (offset from 0xFFE0)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
