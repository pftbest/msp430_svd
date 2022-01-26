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

/* This file supports MSP430FR2033 devices. */
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
* ADC
************************************************************/
PROVIDE(ADCCTL0            = 0x0700);
PROVIDE(ADCCTL0_L          = 0x0700);
PROVIDE(ADCCTL0_H          = 0x0701);
PROVIDE(ADCCTL1            = 0x0702);
PROVIDE(ADCCTL1_L          = 0x0702);
PROVIDE(ADCCTL1_H          = 0x0703);
PROVIDE(ADCCTL2            = 0x0704);
PROVIDE(ADCCTL2_L          = 0x0704);
PROVIDE(ADCCTL2_H          = 0x0705);
PROVIDE(ADCLO              = 0x0706);
PROVIDE(ADCLO_L            = 0x0706);
PROVIDE(ADCLO_H            = 0x0707);
PROVIDE(ADCHI              = 0x0708);
PROVIDE(ADCHI_L            = 0x0708);
PROVIDE(ADCHI_H            = 0x0709);
PROVIDE(ADCMCTL0           = 0x070A);
PROVIDE(ADCMCTL0_L         = 0x070A);
PROVIDE(ADCMCTL0_H         = 0x070B);
PROVIDE(ADCMEM0            = 0x0712);
PROVIDE(ADCMEM0_L          = 0x0712);
PROVIDE(ADCMEM0_H          = 0x0713);
PROVIDE(ADCIE              = 0x071A);
PROVIDE(ADCIE_L            = 0x071A);
PROVIDE(ADCIE_H            = 0x071B);
PROVIDE(ADCIFG             = 0x071C);
PROVIDE(ADCIFG_L           = 0x071C);
PROVIDE(ADCIFG_H           = 0x071D);
PROVIDE(ADCIV              = 0x071E);
PROVIDE(ADCIV_L            = 0x071E);
PROVIDE(ADCIV_H            = 0x071F);
/*************************************************************
* Backup Memory Module
*************************************************************/
PROVIDE(BAKMEM0            = 0x0660);
PROVIDE(BAKMEM0_L          = 0x0660);
PROVIDE(BAKMEM0_H          = 0x0661);
PROVIDE(BAKMEM1            = 0x0662);
PROVIDE(BAKMEM1_L          = 0x0662);
PROVIDE(BAKMEM1_H          = 0x0663);
PROVIDE(BAKMEM2            = 0x0664);
PROVIDE(BAKMEM2_L          = 0x0664);
PROVIDE(BAKMEM2_H          = 0x0665);
PROVIDE(BAKMEM3            = 0x0666);
PROVIDE(BAKMEM3_L          = 0x0666);
PROVIDE(BAKMEM3_H          = 0x0667);
PROVIDE(BAKMEM4            = 0x0668);
PROVIDE(BAKMEM4_L          = 0x0668);
PROVIDE(BAKMEM4_H          = 0x0669);
PROVIDE(BAKMEM5            = 0x066A);
PROVIDE(BAKMEM5_L          = 0x066A);
PROVIDE(BAKMEM5_H          = 0x066B);
PROVIDE(BAKMEM6            = 0x066C);
PROVIDE(BAKMEM6_L          = 0x066C);
PROVIDE(BAKMEM6_H          = 0x066D);
PROVIDE(BAKMEM7            = 0x066E);
PROVIDE(BAKMEM7_L          = 0x066E);
PROVIDE(BAKMEM7_H          = 0x066F);
PROVIDE(BAKMEM8            = 0x0670);
PROVIDE(BAKMEM8_L          = 0x0670);
PROVIDE(BAKMEM8_H          = 0x0671);
PROVIDE(BAKMEM9            = 0x0672);
PROVIDE(BAKMEM9_L          = 0x0672);
PROVIDE(BAKMEM9_H          = 0x0673);
PROVIDE(BAKMEM10           = 0x0674);
PROVIDE(BAKMEM10_L         = 0x0674);
PROVIDE(BAKMEM10_H         = 0x0675);
PROVIDE(BAKMEM11           = 0x0676);
PROVIDE(BAKMEM11_L         = 0x0676);
PROVIDE(BAKMEM11_H         = 0x0677);
PROVIDE(BAKMEM12           = 0x0678);
PROVIDE(BAKMEM12_L         = 0x0678);
PROVIDE(BAKMEM12_H         = 0x0679);
PROVIDE(BAKMEM13           = 0x067A);
PROVIDE(BAKMEM13_L         = 0x067A);
PROVIDE(BAKMEM13_H         = 0x067B);
PROVIDE(BAKMEM14           = 0x067C);
PROVIDE(BAKMEM14_L         = 0x067C);
PROVIDE(BAKMEM14_H         = 0x067D);
PROVIDE(BAKMEM15           = 0x067E);
PROVIDE(BAKMEM15_L         = 0x067E);
PROVIDE(BAKMEM15_H         = 0x067F);
/************************************************************
* Capacitive_Touch_IO 0
************************************************************/
PROVIDE(CAPTIO0CTL         = 0x02EE);
PROVIDE(CAPTIO0CTL_L       = 0x02EE);
PROVIDE(CAPTIO0CTL_H       = 0x02EF);
/*************************************************************
* CRC Module
*************************************************************/
PROVIDE(CRCDI              = 0x01C0);
PROVIDE(CRCDI_L            = 0x01C0);
PROVIDE(CRCDI_H            = 0x01C1);
PROVIDE(CRCDIRB            = 0x01C2);
PROVIDE(CRCDIRB_L          = 0x01C2);
PROVIDE(CRCDIRB_H          = 0x01C3);
PROVIDE(CRCINIRES          = 0x01C4);
PROVIDE(CRCINIRES_L        = 0x01C4);
PROVIDE(CRCINIRES_H        = 0x01C5);
PROVIDE(CRCRESR            = 0x01C6);
PROVIDE(CRCRESR_L          = 0x01C6);
PROVIDE(CRCRESR_H          = 0x01C7);
/************************************************************
* CLOCK SYSTEM CONTROL
************************************************************/
PROVIDE(CSCTL0             = 0x0180);
PROVIDE(CSCTL0_L           = 0x0180);
PROVIDE(CSCTL0_H           = 0x0181);
PROVIDE(CSCTL1             = 0x0182);
PROVIDE(CSCTL1_L           = 0x0182);
PROVIDE(CSCTL1_H           = 0x0183);
PROVIDE(CSCTL2             = 0x0184);
PROVIDE(CSCTL2_L           = 0x0184);
PROVIDE(CSCTL2_H           = 0x0185);
PROVIDE(CSCTL3             = 0x0186);
PROVIDE(CSCTL3_L           = 0x0186);
PROVIDE(CSCTL3_H           = 0x0187);
PROVIDE(CSCTL4             = 0x0188);
PROVIDE(CSCTL4_L           = 0x0188);
PROVIDE(CSCTL4_H           = 0x0189);
PROVIDE(CSCTL5             = 0x018A);
PROVIDE(CSCTL5_L           = 0x018A);
PROVIDE(CSCTL5_H           = 0x018B);
PROVIDE(CSCTL6             = 0x018C);
PROVIDE(CSCTL6_L           = 0x018C);
PROVIDE(CSCTL6_H           = 0x018D);
PROVIDE(CSCTL7             = 0x018E);
PROVIDE(CSCTL7_L           = 0x018E);
PROVIDE(CSCTL7_H           = 0x018F);
PROVIDE(CSCTL8             = 0x0190);
PROVIDE(CSCTL8_L           = 0x0190);
PROVIDE(CSCTL8_H           = 0x0191);
/*************************************************************
* FRAM Memory
*************************************************************/
PROVIDE(FRCTL0             = 0x01A0);
PROVIDE(FRCTL0_L           = 0x01A0);
PROVIDE(FRCTL0_H           = 0x01A1);
PROVIDE(GCCTL0             = 0x01A4);
PROVIDE(GCCTL0_L           = 0x01A4);
PROVIDE(GCCTL0_H           = 0x01A5);
PROVIDE(GCCTL1             = 0x01A6);
PROVIDE(GCCTL1_L           = 0x01A6);
PROVIDE(GCCTL1_H           = 0x01A7);
/************************************************************
* PMM - Power Management System for FR2xx/FR4xx
************************************************************/
PROVIDE(PMMCTL0            = 0x0120);
PROVIDE(PMMCTL0_L          = 0x0120);
PROVIDE(PMMCTL0_H          = 0x0121);
PROVIDE(PMMCTL1            = 0x0122);
PROVIDE(PMMCTL1_L          = 0x0122);
PROVIDE(PMMCTL1_H          = 0x0123);
PROVIDE(PMMCTL2            = 0x0124);
PROVIDE(PMMCTL2_L          = 0x0124);
PROVIDE(PMMCTL2_H          = 0x0125);
PROVIDE(PMMIFG             = 0x012A);
PROVIDE(PMMIFG_L           = 0x012A);
PROVIDE(PMMIFG_H           = 0x012B);
PROVIDE(PMMIE              = 0x012E);
PROVIDE(PMMIE_L            = 0x012E);
PROVIDE(PMMIE_H            = 0x012F);
PROVIDE(PM5CTL0            = 0x0130);
PROVIDE(PM5CTL0_L          = 0x0130);
PROVIDE(PM5CTL0_H          = 0x0131);
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
PROVIDE(PASEL0             = 0x020A);
PROVIDE(PASEL0_L           = 0x020A);
PROVIDE(PASEL0_H           = 0x020B);
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
* DIGITAL I/O Port3/4 Pull up / Pull down Resistors
************************************************************/
PROVIDE(PBIN               = 0x0220);
PROVIDE(PBIN_L             = 0x0220);
PROVIDE(PBIN_H             = 0x0221);
PROVIDE(PBOUT              = 0x0222);
PROVIDE(PBOUT_L            = 0x0222);
PROVIDE(PBOUT_H            = 0x0223);
PROVIDE(PBDIR              = 0x0224);
PROVIDE(PBDIR_L            = 0x0224);
PROVIDE(PBDIR_H            = 0x0225);
PROVIDE(PBREN              = 0x0226);
PROVIDE(PBREN_L            = 0x0226);
PROVIDE(PBREN_H            = 0x0227);
PROVIDE(PBSEL0             = 0x022A);
PROVIDE(PBSEL0_L           = 0x022A);
PROVIDE(PBSEL0_H           = 0x022B);
/************************************************************
* DIGITAL I/O Port5/6 Pull up / Pull down Resistors
************************************************************/
PROVIDE(PCIN               = 0x0240);
PROVIDE(PCIN_L             = 0x0240);
PROVIDE(PCIN_H             = 0x0241);
PROVIDE(PCOUT              = 0x0242);
PROVIDE(PCOUT_L            = 0x0242);
PROVIDE(PCOUT_H            = 0x0243);
PROVIDE(PCDIR              = 0x0244);
PROVIDE(PCDIR_L            = 0x0244);
PROVIDE(PCDIR_H            = 0x0245);
PROVIDE(PCREN              = 0x0246);
PROVIDE(PCREN_L            = 0x0246);
PROVIDE(PCREN_H            = 0x0247);
PROVIDE(PCSEL0             = 0x024A);
PROVIDE(PCSEL0_L           = 0x024A);
PROVIDE(PCSEL0_H           = 0x024B);
/************************************************************
* DIGITAL I/O Port7/8 Pull up / Pull down Resistors
************************************************************/
PROVIDE(PDIN               = 0x0260);
PROVIDE(PDIN_L             = 0x0260);
PROVIDE(PDIN_H             = 0x0261);
PROVIDE(PDOUT              = 0x0262);
PROVIDE(PDOUT_L            = 0x0262);
PROVIDE(PDOUT_H            = 0x0263);
PROVIDE(PDDIR              = 0x0264);
PROVIDE(PDDIR_L            = 0x0264);
PROVIDE(PDDIR_H            = 0x0265);
PROVIDE(PDREN              = 0x0266);
PROVIDE(PDREN_L            = 0x0266);
PROVIDE(PDREN_H            = 0x0267);
PROVIDE(PDSEL0             = 0x026A);
PROVIDE(PDSEL0_L           = 0x026A);
PROVIDE(PDSEL0_H           = 0x026B);
/************************************************************
* Real-Time Clock (RTC) Counter
************************************************************/
PROVIDE(RTCCTL             = 0x03C0);
PROVIDE(RTCCTL_L           = 0x03C0);
PROVIDE(RTCCTL_H           = 0x03C1);
PROVIDE(RTCIV              = 0x03C4);
PROVIDE(RTCIV_L            = 0x03C4);
PROVIDE(RTCIV_H            = 0x03C5);
PROVIDE(RTCMOD             = 0x03C8);
PROVIDE(RTCMOD_L           = 0x03C8);
PROVIDE(RTCMOD_H           = 0x03C9);
PROVIDE(RTCCNT             = 0x03CC);
PROVIDE(RTCCNT_L           = 0x03CC);
PROVIDE(RTCCNT_H           = 0x03CD);
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
* SYS - System Module
************************************************************/
PROVIDE(SYSCTL             = 0x0140);
PROVIDE(SYSCTL_L           = 0x0140);
PROVIDE(SYSCTL_H           = 0x0141);
PROVIDE(SYSBSLC            = 0x0142);
PROVIDE(SYSBSLC_L          = 0x0142);
PROVIDE(SYSBSLC_H          = 0x0143);
PROVIDE(SYSJMBC            = 0x0146);
PROVIDE(SYSJMBC_L          = 0x0146);
PROVIDE(SYSJMBC_H          = 0x0147);
PROVIDE(SYSJMBI0           = 0x0148);
PROVIDE(SYSJMBI0_L         = 0x0148);
PROVIDE(SYSJMBI0_H         = 0x0149);
PROVIDE(SYSJMBI1           = 0x014A);
PROVIDE(SYSJMBI1_L         = 0x014A);
PROVIDE(SYSJMBI1_H         = 0x014B);
PROVIDE(SYSJMBO0           = 0x014C);
PROVIDE(SYSJMBO0_L         = 0x014C);
PROVIDE(SYSJMBO0_H         = 0x014D);
PROVIDE(SYSJMBO1           = 0x014E);
PROVIDE(SYSJMBO1_L         = 0x014E);
PROVIDE(SYSJMBO1_H         = 0x014F);
PROVIDE(SYSBERRIV          = 0x0158);
PROVIDE(SYSBERRIV_L        = 0x0158);
PROVIDE(SYSBERRIV_H        = 0x0159);
PROVIDE(SYSUNIV            = 0x015A);
PROVIDE(SYSUNIV_L          = 0x015A);
PROVIDE(SYSUNIV_H          = 0x015B);
PROVIDE(SYSSNIV            = 0x015C);
PROVIDE(SYSSNIV_L          = 0x015C);
PROVIDE(SYSSNIV_H          = 0x015D);
PROVIDE(SYSRSTIV           = 0x015E);
PROVIDE(SYSRSTIV_L         = 0x015E);
PROVIDE(SYSRSTIV_H         = 0x015F);
PROVIDE(SYSCFG0            = 0x0160);
PROVIDE(SYSCFG0_L          = 0x0160);
PROVIDE(SYSCFG0_H          = 0x0161);
PROVIDE(SYSCFG1            = 0x0162);
PROVIDE(SYSCFG1_L          = 0x0162);
PROVIDE(SYSCFG1_H          = 0x0163);
PROVIDE(SYSCFG2            = 0x0164);
PROVIDE(SYSCFG2_L          = 0x0164);
PROVIDE(SYSCFG2_H          = 0x0165);
/************************************************************
* Timer0_A3
************************************************************/
PROVIDE(TA0CTL             = 0x0300);
PROVIDE(TA0CCTL0           = 0x0302);
PROVIDE(TA0CCTL1           = 0x0304);
PROVIDE(TA0CCTL2           = 0x0306);
PROVIDE(TA0R               = 0x0310);
PROVIDE(TA0CCR0            = 0x0312);
PROVIDE(TA0CCR1            = 0x0314);
PROVIDE(TA0CCR2            = 0x0316);
PROVIDE(TA0IV              = 0x032E);
PROVIDE(TA0EX0             = 0x0320);
/************************************************************
* Timer1_A3
************************************************************/
PROVIDE(TA1CTL             = 0x0340);
PROVIDE(TA1CCTL0           = 0x0342);
PROVIDE(TA1CCTL1           = 0x0344);
PROVIDE(TA1CCTL2           = 0x0346);
PROVIDE(TA1R               = 0x0350);
PROVIDE(TA1CCR0            = 0x0352);
PROVIDE(TA1CCR1            = 0x0354);
PROVIDE(TA1CCR2            = 0x0356);
PROVIDE(TA1IV              = 0x036E);
PROVIDE(TA1EX0             = 0x0360);
/************************************************************
* USCI A0
************************************************************/
PROVIDE(UCA0CTLW0          = 0x0500);
PROVIDE(UCA0CTLW0_L        = 0x0500);
PROVIDE(UCA0CTLW0_H        = 0x0501);
PROVIDE(UCA0CTLW1          = 0x0502);
PROVIDE(UCA0CTLW1_L        = 0x0502);
PROVIDE(UCA0CTLW1_H        = 0x0503);
PROVIDE(UCA0BRW            = 0x0506);
PROVIDE(UCA0BRW_L          = 0x0506);
PROVIDE(UCA0BRW_H          = 0x0507);
PROVIDE(UCA0MCTLW          = 0x0508);
PROVIDE(UCA0MCTLW_L        = 0x0508);
PROVIDE(UCA0MCTLW_H        = 0x0509);
PROVIDE(UCA0STATW          = 0x050A);
PROVIDE(UCA0RXBUF          = 0x050C);
PROVIDE(UCA0RXBUF_L        = 0x050C);
PROVIDE(UCA0RXBUF_H        = 0x050D);
PROVIDE(UCA0TXBUF          = 0x050E);
PROVIDE(UCA0TXBUF_L        = 0x050E);
PROVIDE(UCA0TXBUF_H        = 0x050F);
PROVIDE(UCA0ABCTL          = 0x0510);
PROVIDE(UCA0IRCTL          = 0x0512);
PROVIDE(UCA0IRCTL_L        = 0x0512);
PROVIDE(UCA0IRCTL_H        = 0x0513);
PROVIDE(UCA0IE             = 0x051A);
PROVIDE(UCA0IE_L           = 0x051A);
PROVIDE(UCA0IE_H           = 0x051B);
PROVIDE(UCA0IFG            = 0x051C);
PROVIDE(UCA0IFG_L          = 0x051C);
PROVIDE(UCA0IFG_H          = 0x051D);
PROVIDE(UCA0IV             = 0x051E);
/************************************************************
* USCI B0
************************************************************/
PROVIDE(UCB0CTLW0          = 0x0540);
PROVIDE(UCB0CTLW0_L        = 0x0540);
PROVIDE(UCB0CTLW0_H        = 0x0541);
PROVIDE(UCB0CTLW1          = 0x0542);
PROVIDE(UCB0CTLW1_L        = 0x0542);
PROVIDE(UCB0CTLW1_H        = 0x0543);
PROVIDE(UCB0BRW            = 0x0546);
PROVIDE(UCB0BRW_L          = 0x0546);
PROVIDE(UCB0BRW_H          = 0x0547);
PROVIDE(UCB0STATW          = 0x0548);
PROVIDE(UCB0STATW_L        = 0x0548);
PROVIDE(UCB0STATW_H        = 0x0549);
PROVIDE(UCB0TBCNT          = 0x054A);
PROVIDE(UCB0TBCNT_L        = 0x054A);
PROVIDE(UCB0TBCNT_H        = 0x054B);
PROVIDE(UCB0RXBUF          = 0x054C);
PROVIDE(UCB0RXBUF_L        = 0x054C);
PROVIDE(UCB0RXBUF_H        = 0x054D);
PROVIDE(UCB0TXBUF          = 0x054E);
PROVIDE(UCB0TXBUF_L        = 0x054E);
PROVIDE(UCB0TXBUF_H        = 0x054F);
PROVIDE(UCB0I2COA0         = 0x0554);
PROVIDE(UCB0I2COA0_L       = 0x0554);
PROVIDE(UCB0I2COA0_H       = 0x0555);
PROVIDE(UCB0I2COA1         = 0x0556);
PROVIDE(UCB0I2COA1_L       = 0x0556);
PROVIDE(UCB0I2COA1_H       = 0x0557);
PROVIDE(UCB0I2COA2         = 0x0558);
PROVIDE(UCB0I2COA2_L       = 0x0558);
PROVIDE(UCB0I2COA2_H       = 0x0559);
PROVIDE(UCB0I2COA3         = 0x055A);
PROVIDE(UCB0I2COA3_L       = 0x055A);
PROVIDE(UCB0I2COA3_H       = 0x055B);
PROVIDE(UCB0ADDRX          = 0x055C);
PROVIDE(UCB0ADDRX_L        = 0x055C);
PROVIDE(UCB0ADDRX_H        = 0x055D);
PROVIDE(UCB0ADDMASK        = 0x055E);
PROVIDE(UCB0ADDMASK_L      = 0x055E);
PROVIDE(UCB0ADDMASK_H      = 0x055F);
PROVIDE(UCB0I2CSA          = 0x0560);
PROVIDE(UCB0I2CSA_L        = 0x0560);
PROVIDE(UCB0I2CSA_H        = 0x0561);
PROVIDE(UCB0IE             = 0x056A);
PROVIDE(UCB0IE_L           = 0x056A);
PROVIDE(UCB0IE_H           = 0x056B);
PROVIDE(UCB0IFG            = 0x056C);
PROVIDE(UCB0IFG_L          = 0x056C);
PROVIDE(UCB0IFG_H          = 0x056D);
PROVIDE(UCB0IV             = 0x056E);
/************************************************************
* WATCHDOG TIMER A
************************************************************/
PROVIDE(WDTCTL             = 0x01CC);
PROVIDE(WDTCTL_L           = 0x01CC);
PROVIDE(WDTCTL_H           = 0x01CD);
/************************************************************
* TLV Descriptors
************************************************************/
/************************************************************
* Interrupt Vectors (offset from 0xFF80 + 0x10 for Password)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
