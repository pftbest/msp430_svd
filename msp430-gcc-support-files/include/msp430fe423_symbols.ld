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

/* This file supports MSP430FE423 devices. */
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
PROVIDE(ME1                = 0x0004);
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
* USART
************************************************************/
/************************************************************
* USART 0
************************************************************/
PROVIDE(U0CTL              = 0x0070);
PROVIDE(U0TCTL             = 0x0071);
PROVIDE(U0RCTL             = 0x0072);
PROVIDE(U0MCTL             = 0x0073);
PROVIDE(U0BR0              = 0x0074);
PROVIDE(U0BR1              = 0x0075);
PROVIDE(U0RXBUF            = 0x0076);
PROVIDE(U0TXBUF            = 0x0077);
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
* SD16 - Sigma Delta 16 Bit
************************************************************/
PROVIDE(SD16INCTL0         = 0x00B0);
PROVIDE(SD16INCTL1         = 0x00B1);
PROVIDE(SD16INCTL2         = 0x00B2);
PROVIDE(SD16PRE0           = 0x00B8);
PROVIDE(SD16PRE1           = 0x00B9);
PROVIDE(SD16PRE2           = 0x00BA);
PROVIDE(SD16CONF0          = 0x00B7);
PROVIDE(SD16CONF1          = 0x00BF);
                                      /* Please use only the recommended settings */
PROVIDE(SD16CTL            = 0x0100);
PROVIDE(SD16CCTL0          = 0x0102);
PROVIDE(SD16CCTL1          = 0x0104);
PROVIDE(SD16CCTL2          = 0x0106);
PROVIDE(SD16IV             = 0x0110);
PROVIDE(SD16MEM0           = 0x0112);
PROVIDE(SD16MEM1           = 0x0114);
PROVIDE(SD16MEM2           = 0x0116);
/************************************************************
* ESP430E
************************************************************/
PROVIDE(ESPCTL             = 0x0150);
PROVIDE(MBCTL              = 0x0152);
PROVIDE(MBIN0              = 0x0154);
PROVIDE(MBIN1              = 0x0156);
PROVIDE(MBOUT0             = 0x0158);
PROVIDE(MBOUT1             = 0x015A);
PROVIDE(ESP430_STAT0       = 0x01C0);
PROVIDE(ESP430_STAT1       = 0x01C2);
PROVIDE(WAVEFSV1           = 0x01C4);
PROVIDE(RET3               = 0x01C6);
PROVIDE(RET4               = 0x01C8);
PROVIDE(WAVEFSI1           = 0x01CA);
PROVIDE(WAVEFSI2           = 0x01CC);
PROVIDE(RET7               = 0x01CE);
PROVIDE(ACTENERGY1_LO      = 0x01D0);
PROVIDE(ACTENERGY1_HI      = 0x01D2);
PROVIDE(ACTENERGY2_LO      = 0x01D4);
PROVIDE(ACTENERGY2_HI      = 0x01D6);
PROVIDE(REACTENERGY_LO     = 0x01D8);
PROVIDE(REACTENERGY_HI     = 0x01DA);
PROVIDE(APPENERGY_LO       = 0x01DC);
PROVIDE(APPENERGY_HI       = 0x01DE);
PROVIDE(ACTENSPER1_LO      = 0x01E0);
PROVIDE(ACTENSPER1_HI      = 0x01E2);
PROVIDE(ACTENSPER2_LO      = 0x01E4);
PROVIDE(ACTENSPER2_HI      = 0x01E6);
PROVIDE(POWERFCT           = 0x01E8);
PROVIDE(CAPIND             = 0x01EA);
PROVIDE(MAINSPERIOD        = 0x01EC);
PROVIDE(V1RMS              = 0x01EE);
PROVIDE(IRMS_LO            = 0x01F0);
PROVIDE(IRMS_HI            = 0x01F2);
PROVIDE(VPEAK              = 0x01F4);
PROVIDE(IPEAK              = 0x01F6);
PROVIDE(LINECYCLCNT_LO     = 0x01F8);
PROVIDE(LINECYCLCNT_HI     = 0x01FA);
PROVIDE(NMBMEAS_LO         = 0x01FC);
PROVIDE(NMBMEAS_HI         = 0x01FE);
                                      /* 1: I2 path implemented (CT, dc-tol CT or shunt) */
                                      /* 1: Rogowski coil (not yet implemented) */
/************************************************************
* Interrupt Vectors (offset from 0xFFE0)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
