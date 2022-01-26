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

/* This file supports MSP430CG4617 devices. */
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
PROVIDE(ME2                = 0x0005);
/************************************************************
* ADC12
************************************************************/
PROVIDE(ADC12CTL0          = 0x01A0);
PROVIDE(ADC12CTL1          = 0x01A2);
PROVIDE(ADC12IFG           = 0x01A4);
PROVIDE(ADC12IE            = 0x01A6);
PROVIDE(ADC12IV            = 0x01A8);
PROVIDE(ADC12MEM0          = 0x0140);
PROVIDE(ADC12MEM1          = 0x0142);
PROVIDE(ADC12MEM2          = 0x0144);
PROVIDE(ADC12MEM3          = 0x0146);
PROVIDE(ADC12MEM4          = 0x0148);
PROVIDE(ADC12MEM5          = 0x014A);
PROVIDE(ADC12MEM6          = 0x014C);
PROVIDE(ADC12MEM7          = 0x014E);
PROVIDE(ADC12MEM8          = 0x0150);
PROVIDE(ADC12MEM9          = 0x0152);
PROVIDE(ADC12MEM10         = 0x0154);
PROVIDE(ADC12MEM11         = 0x0156);
PROVIDE(ADC12MEM12         = 0x0158);
PROVIDE(ADC12MEM13         = 0x015A);
PROVIDE(ADC12MEM14         = 0x015C);
PROVIDE(ADC12MEM15         = 0x015E);
PROVIDE(ADC12MCTL0         = 0x0080);
PROVIDE(ADC12MCTL1         = 0x0081);
PROVIDE(ADC12MCTL2         = 0x0082);
PROVIDE(ADC12MCTL3         = 0x0083);
PROVIDE(ADC12MCTL4         = 0x0084);
PROVIDE(ADC12MCTL5         = 0x0085);
PROVIDE(ADC12MCTL6         = 0x0086);
PROVIDE(ADC12MCTL7         = 0x0087);
PROVIDE(ADC12MCTL8         = 0x0088);
PROVIDE(ADC12MCTL9         = 0x0089);
PROVIDE(ADC12MCTL10        = 0x008A);
PROVIDE(ADC12MCTL11        = 0x008B);
PROVIDE(ADC12MCTL12        = 0x008C);
PROVIDE(ADC12MCTL13        = 0x008D);
PROVIDE(ADC12MCTL14        = 0x008E);
PROVIDE(ADC12MCTL15        = 0x008F);
/************************************************************
* BASIC TIMER with Real Time Clock
************************************************************/
PROVIDE(BTCTL              = 0x0040);
PROVIDE(RTCCTL             = 0x0041);
PROVIDE(RTCNT1             = 0x0042);
PROVIDE(RTCNT2             = 0x0043);
PROVIDE(RTCNT3             = 0x0044);
PROVIDE(RTCNT4             = 0x0045);
PROVIDE(BTCNT1             = 0x0046);
PROVIDE(BTCNT2             = 0x0047);
PROVIDE(RTCDAY             = 0x004C);
PROVIDE(RTCMON             = 0x004D);
PROVIDE(RTCYEARL           = 0x004E);
PROVIDE(RTCYEARH           = 0x004F);
PROVIDE(RTCTL              = 0x0040);
PROVIDE(RTCTIM0            = 0x0042);
PROVIDE(RTCTIM1            = 0x0044);
PROVIDE(BTCNT12            = 0x0046);
PROVIDE(RTCDATE            = 0x004C);
PROVIDE(RTCYEAR            = 0x004E);
/************************************************************
* Comparator A
************************************************************/
PROVIDE(CACTL1             = 0x0059);
PROVIDE(CACTL2             = 0x005A);
PROVIDE(CAPD               = 0x005B);
/************************************************************
* DAC12
************************************************************/
PROVIDE(DAC12_0CTL         = 0x01C0);
PROVIDE(DAC12_1CTL         = 0x01C2);
PROVIDE(DAC12_0DAT         = 0x01C8);
PROVIDE(DAC12_1DAT         = 0x01CA);
/************************************************************
* DMA_X
************************************************************/
PROVIDE(DMACTL0            = 0x0122);
PROVIDE(DMACTL1            = 0x0124);
PROVIDE(DMAIV              = 0x0126);
PROVIDE(DMA0CTL            = 0x01D0);
PROVIDE(DMA1CTL            = 0x01DC);
PROVIDE(DMA2CTL            = 0x01E8);
PROVIDE(DMA0SA             = 0x01D2);
PROVIDE(DMA0SAL            = 0x01D2);
PROVIDE(DMA0DA             = 0x01D6);
PROVIDE(DMA0DAL            = 0x01D6);
PROVIDE(DMA0SZ             = 0x01DA);
PROVIDE(DMA1SA             = 0x01DE);
PROVIDE(DMA1SAL            = 0x01DE);
PROVIDE(DMA1DA             = 0x01E2);
PROVIDE(DMA1DAL            = 0x01E2);
PROVIDE(DMA1SZ             = 0x01E6);
PROVIDE(DMA2SA             = 0x01EA);
PROVIDE(DMA2SAL            = 0x01EA);
PROVIDE(DMA2DA             = 0x01EE);
PROVIDE(DMA2DAL            = 0x01EE);
PROVIDE(DMA2SZ             = 0x01F2);
/*************************************************************
* Flash Memory
*************************************************************/
PROVIDE(FCTL1              = 0x0128);
PROVIDE(FCTL2              = 0x012A);
PROVIDE(FCTL3              = 0x012C);
/************************************************************
* SYSTEM CLOCK, FLL+
************************************************************/
PROVIDE(SCFI0              = 0x0050);
PROVIDE(SCFI1              = 0x0051);
PROVIDE(SCFQCTL            = 0x0052);
PROVIDE(FLL_CTL0           = 0x0053);
PROVIDE(FLL_CTL1           = 0x0054);
/************************************************************
* LCD_A
************************************************************/
PROVIDE(LCDACTL            = 0x0090);
PROVIDE(LCDAPCTL0          = 0x00AC);
PROVIDE(LCDAPCTL1          = 0x00AD);
PROVIDE(LCDAVCTL0          = 0x00AE);
PROVIDE(LCDAVCTL1          = 0x00AF);
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
* Operational Amplifier
************************************************************/
PROVIDE(OA0CTL0            = 0x00C0);
PROVIDE(OA0CTL1            = 0x00C1);
PROVIDE(OA1CTL0            = 0x00C2);
PROVIDE(OA1CTL1            = 0x00C3);
PROVIDE(OA2CTL0            = 0x00C4);
PROVIDE(OA2CTL1            = 0x00C5);
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
* DIGITAL I/O Port7/8
************************************************************/
PROVIDE(P7IN               = 0x0038);
PROVIDE(P7OUT              = 0x003A);
PROVIDE(P7DIR              = 0x003C);
PROVIDE(P7SEL              = 0x003E);
PROVIDE(P8IN               = 0x0039);
PROVIDE(P8OUT              = 0x003B);
PROVIDE(P8DIR              = 0x003D);
PROVIDE(P8SEL              = 0x003F);
PROVIDE(PAIN               = 0x0038);
PROVIDE(PAOUT              = 0x003A);
PROVIDE(PADIR              = 0x003C);
PROVIDE(PASEL              = 0x003E);
/************************************************************
* DIGITAL I/O Port9/10
************************************************************/
PROVIDE(P9IN               = 0x0008);
PROVIDE(P9OUT              = 0x000A);
PROVIDE(P9DIR              = 0x000C);
PROVIDE(P9SEL              = 0x000E);
PROVIDE(P10IN              = 0x0009);
PROVIDE(P10OUT             = 0x000B);
PROVIDE(P10DIR             = 0x000D);
PROVIDE(P10SEL             = 0x000F);
PROVIDE(PBIN               = 0x0008);
PROVIDE(PBOUT              = 0x000A);
PROVIDE(PBDIR              = 0x000C);
PROVIDE(PBSEL              = 0x000E);
/************************************************************
* Brown-Out, Supply Voltage Supervision (SVS)
************************************************************/
PROVIDE(SVSCTL             = 0x0056);
/************************************************************
* Timer A3
************************************************************/
PROVIDE(TAIV               = 0x012E);
PROVIDE(TACTL              = 0x0160);
PROVIDE(TACCTL0            = 0x0162);
PROVIDE(TACCTL1            = 0x0164);
PROVIDE(TACCTL2            = 0x0166);
PROVIDE(TAR                = 0x0170);
PROVIDE(TACCR0             = 0x0172);
PROVIDE(TACCR1             = 0x0174);
PROVIDE(TACCR2             = 0x0176);
/************************************************************
* Timer B7
************************************************************/
PROVIDE(TBIV               = 0x011E);
PROVIDE(TBCTL              = 0x0180);
PROVIDE(TBCCTL0            = 0x0182);
PROVIDE(TBCCTL1            = 0x0184);
PROVIDE(TBCCTL2            = 0x0186);
PROVIDE(TBCCTL3            = 0x0188);
PROVIDE(TBCCTL4            = 0x018A);
PROVIDE(TBCCTL5            = 0x018C);
PROVIDE(TBCCTL6            = 0x018E);
PROVIDE(TBR                = 0x0190);
PROVIDE(TBCCR0             = 0x0192);
PROVIDE(TBCCR1             = 0x0194);
PROVIDE(TBCCR2             = 0x0196);
PROVIDE(TBCCR3             = 0x0198);
PROVIDE(TBCCR4             = 0x019A);
PROVIDE(TBCCR5             = 0x019C);
PROVIDE(TBCCR6             = 0x019E);
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
* USART
************************************************************/
/************************************************************
* USART 1
************************************************************/
PROVIDE(U1CTL              = 0x0078);
PROVIDE(U1TCTL             = 0x0079);
PROVIDE(U1RCTL             = 0x007A);
PROVIDE(U1MCTL             = 0x007B);
PROVIDE(U1BR0              = 0x007C);
PROVIDE(U1BR1              = 0x007D);
PROVIDE(U1RXBUF            = 0x007E);
PROVIDE(U1TXBUF            = 0x007F);
/************************************************************
* WATCHDOG TIMER
************************************************************/
PROVIDE(WDTCTL             = 0x0120);
/************************************************************
* Interrupt Vectors (offset from 0xFFC0)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
