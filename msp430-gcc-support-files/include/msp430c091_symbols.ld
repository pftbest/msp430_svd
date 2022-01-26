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

/* This file supports MSP430C091 devices. */
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
* A-POOL
************************************************************/
PROVIDE(APCNF              = 0x01A0);
PROVIDE(APCNF_L            = 0x01A0);
PROVIDE(APCNF_H            = 0x01A1);
PROVIDE(APCTL              = 0x01A2);
PROVIDE(APCTL_L            = 0x01A2);
PROVIDE(APCTL_H            = 0x01A3);
PROVIDE(APOMR              = 0x01A4);
PROVIDE(APOMR_L            = 0x01A4);
PROVIDE(APOMR_H            = 0x01A5);
PROVIDE(APVDIV             = 0x01A6);
PROVIDE(APVDIV_L           = 0x01A6);
PROVIDE(APVDIV_H           = 0x01A7);
PROVIDE(APTRIM             = 0x01A8);
PROVIDE(APTRIM_L           = 0x01A8);
PROVIDE(APTRIM_H           = 0x01A9);
PROVIDE(APINT              = 0x01B0);
PROVIDE(APINT_L            = 0x01B0);
PROVIDE(APINT_H            = 0x01B1);
PROVIDE(APINTB             = 0x01B2);
PROVIDE(APINTB_L           = 0x01B2);
PROVIDE(APINTB_H           = 0x01B3);
PROVIDE(APFRACT            = 0x01B4);
PROVIDE(APFRACT_L          = 0x01B4);
PROVIDE(APFRACT_H          = 0x01B5);
PROVIDE(APFRACTB           = 0x01B6);
PROVIDE(APFRACTB_L         = 0x01B6);
PROVIDE(APFRACTB_H         = 0x01B7);
PROVIDE(APIFG              = 0x01BA);
PROVIDE(APIFG_L            = 0x01BA);
PROVIDE(APIFG_H            = 0x01BB);
PROVIDE(APIE               = 0x01BC);
PROVIDE(APIE_L             = 0x01BC);
PROVIDE(APIE_H             = 0x01BD);
PROVIDE(APIV               = 0x01BE);
PROVIDE(APIV_L             = 0x01BE);
PROVIDE(APIV_H             = 0x01BF);
/************************************************************
* COMPACT CLOCK SYSTEM
************************************************************/
PROVIDE(CCSCTL0            = 0x0160);
PROVIDE(CCSCTL0_L          = 0x0160);
PROVIDE(CCSCTL0_H          = 0x0161);
PROVIDE(CCSCTL1            = 0x0162);
PROVIDE(CCSCTL1_L          = 0x0162);
PROVIDE(CCSCTL1_H          = 0x0163);
PROVIDE(CCSCTL2            = 0x0164);
PROVIDE(CCSCTL2_L          = 0x0164);
PROVIDE(CCSCTL2_H          = 0x0165);
PROVIDE(CCSCTL4            = 0x0168);
PROVIDE(CCSCTL4_L          = 0x0168);
PROVIDE(CCSCTL4_H          = 0x0169);
PROVIDE(CCSCTL5            = 0x016A);
PROVIDE(CCSCTL5_L          = 0x016A);
PROVIDE(CCSCTL5_H          = 0x016B);
PROVIDE(CCSCTL6            = 0x016C);
PROVIDE(CCSCTL6_L          = 0x016C);
PROVIDE(CCSCTL6_H          = 0x016D);
PROVIDE(CCSCTL7            = 0x016E);
PROVIDE(CCSCTL7_L          = 0x016E);
PROVIDE(CCSCTL7_H          = 0x016F);
PROVIDE(CCSCTL8            = 0x0170);
PROVIDE(CCSCTL8_L          = 0x0170);
PROVIDE(CCSCTL8_H          = 0x0171);
/************************************************************
* DIGITAL I/O Port1/2 Pull up / Pull down Resistors
************************************************************/
PROVIDE(PAIN               = 0x0200);
PROVIDE(PAIN_L             = 0x0200);
PROVIDE(PAIN_H             = 0x0201);
PROVIDE(PAOUT              = 0x0202);
PROVIDE(PAOUT_L            = 0x0202);
PROVIDE(PAOUT_H            = 0x0203);
PROVIDE(PADIR              = 0x0204);
PROVIDE(PADIR_L            = 0x0204);
PROVIDE(PADIR_H            = 0x0205);
PROVIDE(PAREN              = 0x0206);
PROVIDE(PAREN_L            = 0x0206);
PROVIDE(PAREN_H            = 0x0207);
PROVIDE(PADS               = 0x0208);
PROVIDE(PADS_L             = 0x0208);
PROVIDE(PADS_H             = 0x0209);
PROVIDE(PASEL0             = 0x020A);
PROVIDE(PASEL0_L           = 0x020A);
PROVIDE(PASEL0_H           = 0x020B);
PROVIDE(PASEL1             = 0x020C);
PROVIDE(PASEL1_L           = 0x020C);
PROVIDE(PASEL1_H           = 0x020D);
PROVIDE(PAIES              = 0x0218);
PROVIDE(PAIES_L            = 0x0218);
PROVIDE(PAIES_H            = 0x0219);
PROVIDE(PAIE               = 0x021A);
PROVIDE(PAIE_L             = 0x021A);
PROVIDE(PAIE_H             = 0x021B);
PROVIDE(PAIFG              = 0x021C);
PROVIDE(PAIFG_L            = 0x021C);
PROVIDE(PAIFG_H            = 0x021D);
PROVIDE(P1IV               = 0x020E);
PROVIDE(P2IV               = 0x021E);
/************************************************************
* SFR - Special Function Register Module
************************************************************/
PROVIDE(SFRIE1             = 0x0100);
PROVIDE(SFRIE1_L           = 0x0100);
PROVIDE(SFRIE1_H           = 0x0101);
PROVIDE(SFRIFG1            = 0x0102);
PROVIDE(SFRIFG1_L          = 0x0102);
PROVIDE(SFRIFG1_H          = 0x0103);
PROVIDE(SFRRPCR            = 0x0104);
PROVIDE(SFRRPCR_L          = 0x0104);
PROVIDE(SFRRPCR_H          = 0x0105);
/************************************************************
* COMPACT SYS - System Module
************************************************************/
PROVIDE(SYSCTL             = 0x0180);
PROVIDE(SYSCTL_L           = 0x0180);
PROVIDE(SYSCTL_H           = 0x0181);
PROVIDE(SYSBSLC            = 0x0182);
PROVIDE(SYSBSLC_L          = 0x0182);
PROVIDE(SYSBSLC_H          = 0x0183);
PROVIDE(SYSJMBC            = 0x0186);
PROVIDE(SYSJMBC_L          = 0x0186);
PROVIDE(SYSJMBC_H          = 0x0187);
PROVIDE(SYSJMBI0           = 0x0188);
PROVIDE(SYSJMBI0_L         = 0x0188);
PROVIDE(SYSJMBI0_H         = 0x0189);
PROVIDE(SYSJMBI1           = 0x018A);
PROVIDE(SYSJMBI1_L         = 0x018A);
PROVIDE(SYSJMBI1_H         = 0x018B);
PROVIDE(SYSJMBO0           = 0x018C);
PROVIDE(SYSJMBO0_L         = 0x018C);
PROVIDE(SYSJMBO0_H         = 0x018D);
PROVIDE(SYSJMBO1           = 0x018E);
PROVIDE(SYSJMBO1_L         = 0x018E);
PROVIDE(SYSJMBO1_H         = 0x018F);
PROVIDE(SYSCNF             = 0x0190);
PROVIDE(SYSCNF_L           = 0x0190);
PROVIDE(SYSCNF_H           = 0x0191);
PROVIDE(SYSBERRIV          = 0x0198);
PROVIDE(SYSBERRIV_L        = 0x0198);
PROVIDE(SYSBERRIV_H        = 0x0199);
PROVIDE(SYSUNIV            = 0x019A);
PROVIDE(SYSUNIV_L          = 0x019A);
PROVIDE(SYSUNIV_H          = 0x019B);
PROVIDE(SYSSNIV            = 0x019C);
PROVIDE(SYSSNIV_L          = 0x019C);
PROVIDE(SYSSNIV_H          = 0x019D);
PROVIDE(SYSRSTIV           = 0x019E);
PROVIDE(SYSRSTIV_L         = 0x019E);
PROVIDE(SYSRSTIV_H         = 0x019F);
/************************************************************
* Timer0_A3
************************************************************/
PROVIDE(TA0CTL             = 0x0340);
PROVIDE(TA0CCTL0           = 0x0342);
PROVIDE(TA0CCTL1           = 0x0344);
PROVIDE(TA0CCTL2           = 0x0346);
PROVIDE(TA0R               = 0x0350);
PROVIDE(TA0CCR0            = 0x0352);
PROVIDE(TA0CCR1            = 0x0354);
PROVIDE(TA0CCR2            = 0x0356);
PROVIDE(TA0IV              = 0x036E);
PROVIDE(TA0EX0             = 0x0360);
/************************************************************
* Timer1_A3
************************************************************/
PROVIDE(TA1CTL             = 0x0380);
PROVIDE(TA1CCTL0           = 0x0382);
PROVIDE(TA1CCTL1           = 0x0384);
PROVIDE(TA1CCTL2           = 0x0386);
PROVIDE(TA1R               = 0x0390);
PROVIDE(TA1CCR0            = 0x0392);
PROVIDE(TA1CCR1            = 0x0394);
PROVIDE(TA1CCR2            = 0x0396);
PROVIDE(TA1IV              = 0x03AE);
PROVIDE(TA1EX0             = 0x03A0);
/************************************************************
* WATCHDOG TIMER A
************************************************************/
PROVIDE(WDTCTL             = 0x015C);
PROVIDE(WDTCTL_L           = 0x015C);
PROVIDE(WDTCTL_H           = 0x015D);
/************************************************************
* Interrupt Vectors (offset from 0xFFFF - 0x20)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
