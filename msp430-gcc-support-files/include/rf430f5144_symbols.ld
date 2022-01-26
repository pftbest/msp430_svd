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

/* This file supports RF430F5144 devices. */
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
* ADC10_A
************************************************************/
PROVIDE(ADC10CTL0          = 0x0740);
PROVIDE(ADC10CTL0_L        = 0x0740);
PROVIDE(ADC10CTL0_H        = 0x0741);
PROVIDE(ADC10CTL1          = 0x0742);
PROVIDE(ADC10CTL1_L        = 0x0742);
PROVIDE(ADC10CTL1_H        = 0x0743);
PROVIDE(ADC10CTL2          = 0x0744);
PROVIDE(ADC10CTL2_L        = 0x0744);
PROVIDE(ADC10CTL2_H        = 0x0745);
PROVIDE(ADC10LO            = 0x0746);
PROVIDE(ADC10LO_L          = 0x0746);
PROVIDE(ADC10LO_H          = 0x0747);
PROVIDE(ADC10HI            = 0x0748);
PROVIDE(ADC10HI_L          = 0x0748);
PROVIDE(ADC10HI_H          = 0x0749);
PROVIDE(ADC10MCTL0         = 0x074A);
PROVIDE(ADC10MCTL0_L       = 0x074A);
PROVIDE(ADC10MCTL0_H       = 0x074B);
PROVIDE(ADC10MEM0          = 0x0752);
PROVIDE(ADC10MEM0_L        = 0x0752);
PROVIDE(ADC10MEM0_H        = 0x0753);
PROVIDE(ADC10IE            = 0x075A);
PROVIDE(ADC10IE_L          = 0x075A);
PROVIDE(ADC10IE_H          = 0x075B);
PROVIDE(ADC10IFG           = 0x075C);
PROVIDE(ADC10IFG_L         = 0x075C);
PROVIDE(ADC10IFG_H         = 0x075D);
PROVIDE(ADC10IV            = 0x075E);
PROVIDE(ADC10IV_L          = 0x075E);
PROVIDE(ADC10IV_H          = 0x075F);
/************************************************************
* Comparator B
************************************************************/
PROVIDE(CBCTL0             = 0x08C0);
PROVIDE(CBCTL0_L           = 0x08C0);
PROVIDE(CBCTL0_H           = 0x08C1);
PROVIDE(CBCTL1             = 0x08C2);
PROVIDE(CBCTL1_L           = 0x08C2);
PROVIDE(CBCTL1_H           = 0x08C3);
PROVIDE(CBCTL2             = 0x08C4);
PROVIDE(CBCTL2_L           = 0x08C4);
PROVIDE(CBCTL2_H           = 0x08C5);
PROVIDE(CBCTL3             = 0x08C6);
PROVIDE(CBCTL3_L           = 0x08C6);
PROVIDE(CBCTL3_H           = 0x08C7);
PROVIDE(CBINT              = 0x08CC);
PROVIDE(CBINT_L            = 0x08CC);
PROVIDE(CBINT_H            = 0x08CD);
PROVIDE(CBIV               = 0x08CE);
/*************************************************************
* CRC Module
*************************************************************/
PROVIDE(CRCDI              = 0x0150);
PROVIDE(CRCDI_L            = 0x0150);
PROVIDE(CRCDI_H            = 0x0151);
PROVIDE(CRCDIRB            = 0x0152);
PROVIDE(CRCDIRB_L          = 0x0152);
PROVIDE(CRCDIRB_H          = 0x0153);
PROVIDE(CRCINIRES          = 0x0154);
PROVIDE(CRCINIRES_L        = 0x0154);
PROVIDE(CRCINIRES_H        = 0x0155);
PROVIDE(CRCRESR            = 0x0156);
PROVIDE(CRCRESR_L          = 0x0156);
PROVIDE(CRCRESR_H          = 0x0157);
/************************************************************
* DMA_X
************************************************************/
PROVIDE(DMACTL0            = 0x0500);
PROVIDE(DMACTL1            = 0x0502);
PROVIDE(DMACTL2            = 0x0504);
PROVIDE(DMACTL3            = 0x0506);
PROVIDE(DMACTL4            = 0x0508);
PROVIDE(DMAIV              = 0x050E);
PROVIDE(DMA0CTL            = 0x0510);
PROVIDE(DMA0SA             = 0x0512);
PROVIDE(DMA0SAL            = 0x0512);
PROVIDE(DMA0DA             = 0x0516);
PROVIDE(DMA0DAL            = 0x0516);
PROVIDE(DMA0SZ             = 0x051A);
PROVIDE(DMA1CTL            = 0x0520);
PROVIDE(DMA1SA             = 0x0522);
PROVIDE(DMA1SAL            = 0x0522);
PROVIDE(DMA1DA             = 0x0526);
PROVIDE(DMA1DAL            = 0x0526);
PROVIDE(DMA1SZ             = 0x052A);
PROVIDE(DMA2CTL            = 0x0530);
PROVIDE(DMA2SA             = 0x0532);
PROVIDE(DMA2SAL            = 0x0532);
PROVIDE(DMA2DA             = 0x0536);
PROVIDE(DMA2DAL            = 0x0536);
PROVIDE(DMA2SZ             = 0x053A);
/*************************************************************
* Flash Memory
*************************************************************/
PROVIDE(FCTL1              = 0x0140);
PROVIDE(FCTL1_L            = 0x0140);
PROVIDE(FCTL1_H            = 0x0141);
PROVIDE(FCTL3              = 0x0144);
PROVIDE(FCTL3_L            = 0x0144);
PROVIDE(FCTL3_H            = 0x0145);
PROVIDE(FCTL4              = 0x0146);
PROVIDE(FCTL4_L            = 0x0146);
PROVIDE(FCTL4_H            = 0x0147);
/************************************************************
* HARDWARE MULTIPLIER 32Bit
************************************************************/
PROVIDE(MPY                = 0x04C0);
PROVIDE(MPY_L              = 0x04C0);
PROVIDE(MPY_H              = 0x04C1);
PROVIDE(MPYS               = 0x04C2);
PROVIDE(MPYS_L             = 0x04C2);
PROVIDE(MPYS_H             = 0x04C3);
PROVIDE(MAC                = 0x04C4);
PROVIDE(MAC_L              = 0x04C4);
PROVIDE(MAC_H              = 0x04C5);
PROVIDE(MACS               = 0x04C6);
PROVIDE(MACS_L             = 0x04C6);
PROVIDE(MACS_H             = 0x04C7);
PROVIDE(OP2                = 0x04C8);
PROVIDE(OP2_L              = 0x04C8);
PROVIDE(OP2_H              = 0x04C9);
PROVIDE(RESLO              = 0x04CA);
PROVIDE(RESLO_L            = 0x04CA);
PROVIDE(RESLO_H            = 0x04CB);
PROVIDE(RESHI              = 0x04CC);
PROVIDE(RESHI_L            = 0x04CC);
PROVIDE(RESHI_H            = 0x04CD);
PROVIDE(SUMEXT             = 0x04CE);
PROVIDE(SUMEXT_L           = 0x04CE);
PROVIDE(SUMEXT_H           = 0x04CF);
PROVIDE(MPY32L             = 0x04D0);
PROVIDE(MPY32L_L           = 0x04D0);
PROVIDE(MPY32L_H           = 0x04D1);
PROVIDE(MPY32H             = 0x04D2);
PROVIDE(MPY32H_L           = 0x04D2);
PROVIDE(MPY32H_H           = 0x04D3);
PROVIDE(MPYS32L            = 0x04D4);
PROVIDE(MPYS32L_L          = 0x04D4);
PROVIDE(MPYS32L_H          = 0x04D5);
PROVIDE(MPYS32H            = 0x04D6);
PROVIDE(MPYS32H_L          = 0x04D6);
PROVIDE(MPYS32H_H          = 0x04D7);
PROVIDE(MAC32L             = 0x04D8);
PROVIDE(MAC32L_L           = 0x04D8);
PROVIDE(MAC32L_H           = 0x04D9);
PROVIDE(MAC32H             = 0x04DA);
PROVIDE(MAC32H_L           = 0x04DA);
PROVIDE(MAC32H_H           = 0x04DB);
PROVIDE(MACS32L            = 0x04DC);
PROVIDE(MACS32L_L          = 0x04DC);
PROVIDE(MACS32L_H          = 0x04DD);
PROVIDE(MACS32H            = 0x04DE);
PROVIDE(MACS32H_L          = 0x04DE);
PROVIDE(MACS32H_H          = 0x04DF);
PROVIDE(OP2L               = 0x04E0);
PROVIDE(OP2L_L             = 0x04E0);
PROVIDE(OP2L_H             = 0x04E1);
PROVIDE(OP2H               = 0x04E2);
PROVIDE(OP2H_L             = 0x04E2);
PROVIDE(OP2H_H             = 0x04E3);
PROVIDE(RES0               = 0x04E4);
PROVIDE(RES0_L             = 0x04E4);
PROVIDE(RES0_H             = 0x04E5);
PROVIDE(RES1               = 0x04E6);
PROVIDE(RES1_L             = 0x04E6);
PROVIDE(RES1_H             = 0x04E7);
PROVIDE(RES2               = 0x04E8);
PROVIDE(RES2_L             = 0x04E8);
PROVIDE(RES2_H             = 0x04E9);
PROVIDE(RES3               = 0x04EA);
PROVIDE(RES3_L             = 0x04EA);
PROVIDE(RES3_H             = 0x04EB);
PROVIDE(MPY32CTL0          = 0x04EC);
PROVIDE(MPY32CTL0_L        = 0x04EC);
PROVIDE(MPY32CTL0_H        = 0x04ED);
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
PROVIDE(PASEL              = 0x020A);
PROVIDE(PASEL_L            = 0x020A);
PROVIDE(PASEL_H            = 0x020B);
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
* DIGITAL I/O Port3 Pull up / Pull down Resistors
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
PROVIDE(PBDS               = 0x0228);
PROVIDE(PBDS_L             = 0x0228);
PROVIDE(PBDS_H             = 0x0229);
PROVIDE(PBSEL              = 0x022A);
PROVIDE(PBSEL_L            = 0x022A);
PROVIDE(PBSEL_H            = 0x022B);
/************************************************************
* DIGITAL I/O PortJ Pull up / Pull down Resistors
************************************************************/
PROVIDE(PJIN               = 0x0320);
PROVIDE(PJIN_L             = 0x0320);
PROVIDE(PJIN_H             = 0x0321);
PROVIDE(PJOUT              = 0x0322);
PROVIDE(PJOUT_L            = 0x0322);
PROVIDE(PJOUT_H            = 0x0323);
PROVIDE(PJDIR              = 0x0324);
PROVIDE(PJDIR_L            = 0x0324);
PROVIDE(PJDIR_H            = 0x0325);
PROVIDE(PJREN              = 0x0326);
PROVIDE(PJREN_L            = 0x0326);
PROVIDE(PJREN_H            = 0x0327);
PROVIDE(PJDS               = 0x0328);
PROVIDE(PJDS_L             = 0x0328);
PROVIDE(PJDS_H             = 0x0329);
PROVIDE(PJSEL              = 0x032A);
PROVIDE(PJSEL_L            = 0x032A);
PROVIDE(PJSEL_H            = 0x032B);
/************************************************************
* PORT MAPPING CONTROLLER
************************************************************/
PROVIDE(PMAPKEYID          = 0x01C0);
PROVIDE(PMAPKEYID_L        = 0x01C0);
PROVIDE(PMAPKEYID_H        = 0x01C1);
PROVIDE(PMAPCTL            = 0x01C2);
PROVIDE(PMAPCTL_L          = 0x01C2);
PROVIDE(PMAPCTL_H          = 0x01C3);
/************************************************************
* PORT 1 MAPPING CONTROLLER
************************************************************/
PROVIDE(P1MAP01            = 0x01C8);
PROVIDE(P1MAP01_L          = 0x01C8);
PROVIDE(P1MAP01_H          = 0x01C9);
PROVIDE(P1MAP23            = 0x01CA);
PROVIDE(P1MAP23_L          = 0x01CA);
PROVIDE(P1MAP23_H          = 0x01CB);
PROVIDE(P1MAP45            = 0x01CC);
PROVIDE(P1MAP45_L          = 0x01CC);
PROVIDE(P1MAP45_H          = 0x01CD);
PROVIDE(P1MAP67            = 0x01CE);
PROVIDE(P1MAP67_L          = 0x01CE);
PROVIDE(P1MAP67_H          = 0x01CF);
/************************************************************
* PORT 2 MAPPING CONTROLLER
************************************************************/
PROVIDE(P2MAP01            = 0x01D0);
PROVIDE(P2MAP01_L          = 0x01D0);
PROVIDE(P2MAP01_H          = 0x01D1);
PROVIDE(P2MAP23            = 0x01D2);
PROVIDE(P2MAP23_L          = 0x01D2);
PROVIDE(P2MAP23_H          = 0x01D3);
PROVIDE(P2MAP45            = 0x01D4);
PROVIDE(P2MAP45_L          = 0x01D4);
PROVIDE(P2MAP45_H          = 0x01D5);
PROVIDE(P2MAP67            = 0x01D6);
PROVIDE(P2MAP67_L          = 0x01D6);
PROVIDE(P2MAP67_H          = 0x01D7);
/************************************************************
* PORT 3 MAPPING CONTROLLER
************************************************************/
PROVIDE(P3MAP01            = 0x01D8);
PROVIDE(P3MAP01_L          = 0x01D8);
PROVIDE(P3MAP01_H          = 0x01D9);
PROVIDE(P3MAP23            = 0x01DA);
PROVIDE(P3MAP23_L          = 0x01DA);
PROVIDE(P3MAP23_H          = 0x01DB);
PROVIDE(P3MAP45            = 0x01DC);
PROVIDE(P3MAP45_L          = 0x01DC);
PROVIDE(P3MAP45_H          = 0x01DD);
PROVIDE(P3MAP67            = 0x01DE);
PROVIDE(P3MAP67_L          = 0x01DE);
PROVIDE(P3MAP67_H          = 0x01DF);
/************************************************************
* PMM - Power Management System
************************************************************/
PROVIDE(PMMCTL0            = 0x0120);
PROVIDE(PMMCTL0_L          = 0x0120);
PROVIDE(PMMCTL0_H          = 0x0121);
PROVIDE(PMMCTL1            = 0x0122);
PROVIDE(PMMCTL1_L          = 0x0122);
PROVIDE(PMMCTL1_H          = 0x0123);
PROVIDE(SVSMHCTL           = 0x0124);
PROVIDE(SVSMHCTL_L         = 0x0124);
PROVIDE(SVSMHCTL_H         = 0x0125);
PROVIDE(SVSMLCTL           = 0x0126);
PROVIDE(SVSMLCTL_L         = 0x0126);
PROVIDE(SVSMLCTL_H         = 0x0127);
PROVIDE(SVSMIO             = 0x0128);
PROVIDE(SVSMIO_L           = 0x0128);
PROVIDE(SVSMIO_H           = 0x0129);
PROVIDE(PMMIFG             = 0x012C);
PROVIDE(PMMIFG_L           = 0x012C);
PROVIDE(PMMIFG_H           = 0x012D);
PROVIDE(PMMRIE             = 0x012E);
PROVIDE(PMMRIE_L           = 0x012E);
PROVIDE(PMMRIE_H           = 0x012F);
PROVIDE(PM5CTL0            = 0x0130);
PROVIDE(PM5CTL0_L          = 0x0130);
PROVIDE(PM5CTL0_H          = 0x0131);
/*************************************************************
* RAM Control Module
*************************************************************/
PROVIDE(RCCTL0             = 0x0158);
PROVIDE(RCCTL0_L           = 0x0158);
PROVIDE(RCCTL0_H           = 0x0159);
/************************************************************
* Shared Reference
************************************************************/
PROVIDE(REFCTL0            = 0x01B0);
PROVIDE(REFCTL0_L          = 0x01B0);
PROVIDE(REFCTL0_H          = 0x01B1);
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
PROVIDE(TA0CTL             = 0x03C0);
PROVIDE(TA0CCTL0           = 0x03C2);
PROVIDE(TA0CCTL1           = 0x03C4);
PROVIDE(TA0CCTL2           = 0x03C6);
PROVIDE(TA0R               = 0x03D0);
PROVIDE(TA0CCR0            = 0x03D2);
PROVIDE(TA0CCR1            = 0x03D4);
PROVIDE(TA0CCR2            = 0x03D6);
PROVIDE(TA0IV              = 0x03EE);
PROVIDE(TA0EX0             = 0x03E0);
/************************************************************
* Timer0_D3
************************************************************/
PROVIDE(TD0CTL0            = 0x0B00);
PROVIDE(TD0CTL1            = 0x0B02);
PROVIDE(TD0CTL2            = 0x0B04);
PROVIDE(TD0R               = 0x0B06);
PROVIDE(TD0CCTL0           = 0x0B08);
PROVIDE(TD0CCR0            = 0x0B0A);
PROVIDE(TD0CL0             = 0x0B0C);
PROVIDE(TD0CCTL1           = 0x0B0E);
PROVIDE(TD0CCR1            = 0x0B10);
PROVIDE(TD0CL1             = 0x0B12);
PROVIDE(TD0CCTL2           = 0x0B14);
PROVIDE(TD0CCR2            = 0x0B16);
PROVIDE(TD0CL2             = 0x0B18);
PROVIDE(TD0HCTL0           = 0x0B38);
PROVIDE(TD0HCTL1           = 0x0B3A);
PROVIDE(TD0HINT            = 0x0B3C);
PROVIDE(TD0IV              = 0x0B3E);
/************************************************************
* Timer1_D3
************************************************************/
PROVIDE(TD1CTL0            = 0x0B40);
PROVIDE(TD1CTL1            = 0x0B42);
PROVIDE(TD1CTL2            = 0x0B44);
PROVIDE(TD1R               = 0x0B46);
PROVIDE(TD1CCTL0           = 0x0B48);
PROVIDE(TD1CCR0            = 0x0B4A);
PROVIDE(TD1CL0             = 0x0B4C);
PROVIDE(TD1CCTL1           = 0x0B4E);
PROVIDE(TD1CCR1            = 0x0B50);
PROVIDE(TD1CL1             = 0x0B52);
PROVIDE(TD1CCTL2           = 0x0B54);
PROVIDE(TD1CCR2            = 0x0B56);
PROVIDE(TD1CL2             = 0x0B58);
PROVIDE(TD1HCTL0           = 0x0B78);
PROVIDE(TD1HCTL1           = 0x0B7A);
PROVIDE(TD1HINT            = 0x0B7C);
PROVIDE(TD1IV              = 0x0B7E);
/************************************************************
* Timer Event Control 0
************************************************************/
PROVIDE(TEC0XCTL0          = 0x0C00);
PROVIDE(TEC0XCTL0_L        = 0x0C00);
PROVIDE(TEC0XCTL0_H        = 0x0C01);
PROVIDE(TEC0XCTL1          = 0x0C02);
PROVIDE(TEC0XCTL1_L        = 0x0C02);
PROVIDE(TEC0XCTL1_H        = 0x0C03);
PROVIDE(TEC0XCTL2          = 0x0C04);
PROVIDE(TEC0XCTL2_L        = 0x0C04);
PROVIDE(TEC0XCTL2_H        = 0x0C05);
PROVIDE(TEC0STA            = 0x0C06);
PROVIDE(TEC0STA_L          = 0x0C06);
PROVIDE(TEC0STA_H          = 0x0C07);
PROVIDE(TEC0XINT           = 0x0C08);
PROVIDE(TEC0XINT_L         = 0x0C08);
PROVIDE(TEC0XINT_H         = 0x0C09);
PROVIDE(TEC0IV             = 0x0C0A);
PROVIDE(TEC0IV_L           = 0x0C0A);
PROVIDE(TEC0IV_H           = 0x0C0B);
/************************************************************
* Timer Event Control 1
************************************************************/
PROVIDE(TEC1XCTL0          = 0x0C20);
PROVIDE(TEC1XCTL0_L        = 0x0C20);
PROVIDE(TEC1XCTL0_H        = 0x0C21);
PROVIDE(TEC1XCTL1          = 0x0C22);
PROVIDE(TEC1XCTL1_L        = 0x0C22);
PROVIDE(TEC1XCTL1_H        = 0x0C23);
PROVIDE(TEC1XCTL2          = 0x0C24);
PROVIDE(TEC1XCTL2_L        = 0x0C24);
PROVIDE(TEC1XCTL2_H        = 0x0C25);
PROVIDE(TEC1STA            = 0x0C26);
PROVIDE(TEC1STA_L          = 0x0C26);
PROVIDE(TEC1STA_H          = 0x0C27);
PROVIDE(TEC1XINT           = 0x0C28);
PROVIDE(TEC1XINT_L         = 0x0C28);
PROVIDE(TEC1XINT_H         = 0x0C29);
PROVIDE(TEC1IV             = 0x0C2A);
PROVIDE(TEC1IV_L           = 0x0C2A);
PROVIDE(TEC1IV_H           = 0x0C2B);
/************************************************************
* UNIFIED CLOCK SYSTEM
************************************************************/
PROVIDE(UCSCTL0            = 0x0160);
PROVIDE(UCSCTL0_L          = 0x0160);
PROVIDE(UCSCTL0_H          = 0x0161);
PROVIDE(UCSCTL1            = 0x0162);
PROVIDE(UCSCTL1_L          = 0x0162);
PROVIDE(UCSCTL1_H          = 0x0163);
PROVIDE(UCSCTL2            = 0x0164);
PROVIDE(UCSCTL2_L          = 0x0164);
PROVIDE(UCSCTL2_H          = 0x0165);
PROVIDE(UCSCTL3            = 0x0166);
PROVIDE(UCSCTL3_L          = 0x0166);
PROVIDE(UCSCTL3_H          = 0x0167);
PROVIDE(UCSCTL4            = 0x0168);
PROVIDE(UCSCTL4_L          = 0x0168);
PROVIDE(UCSCTL4_H          = 0x0169);
PROVIDE(UCSCTL5            = 0x016A);
PROVIDE(UCSCTL5_L          = 0x016A);
PROVIDE(UCSCTL5_H          = 0x016B);
PROVIDE(UCSCTL6            = 0x016C);
PROVIDE(UCSCTL6_L          = 0x016C);
PROVIDE(UCSCTL6_H          = 0x016D);
PROVIDE(UCSCTL7            = 0x016E);
PROVIDE(UCSCTL7_L          = 0x016E);
PROVIDE(UCSCTL7_H          = 0x016F);
PROVIDE(UCSCTL8            = 0x0170);
PROVIDE(UCSCTL8_L          = 0x0170);
PROVIDE(UCSCTL8_H          = 0x0171);
/************************************************************
* USCI A0
************************************************************/
PROVIDE(UCA0CTLW0          = 0x05C0);
PROVIDE(UCA0CTLW0_L        = 0x05C0);
PROVIDE(UCA0CTLW0_H        = 0x05C1);
PROVIDE(UCA0BRW            = 0x05C6);
PROVIDE(UCA0BRW_L          = 0x05C6);
PROVIDE(UCA0BRW_H          = 0x05C7);
PROVIDE(UCA0MCTL           = 0x05C8);
PROVIDE(UCA0STAT           = 0x05CA);
PROVIDE(UCA0RXBUF          = 0x05CC);
PROVIDE(UCA0TXBUF          = 0x05CE);
PROVIDE(UCA0ABCTL          = 0x05D0);
PROVIDE(UCA0IRCTL          = 0x05D2);
PROVIDE(UCA0IRCTL_L        = 0x05D2);
PROVIDE(UCA0IRCTL_H        = 0x05D3);
PROVIDE(UCA0ICTL           = 0x05DC);
PROVIDE(UCA0ICTL_L         = 0x05DC);
PROVIDE(UCA0ICTL_H         = 0x05DD);
PROVIDE(UCA0IV             = 0x05DE);
/************************************************************
* USCI B0
************************************************************/
PROVIDE(UCB0CTLW0          = 0x05E0);
PROVIDE(UCB0CTLW0_L        = 0x05E0);
PROVIDE(UCB0CTLW0_H        = 0x05E1);
PROVIDE(UCB0BRW            = 0x05E6);
PROVIDE(UCB0BRW_L          = 0x05E6);
PROVIDE(UCB0BRW_H          = 0x05E7);
PROVIDE(UCB0STAT           = 0x05EA);
PROVIDE(UCB0RXBUF          = 0x05EC);
PROVIDE(UCB0TXBUF          = 0x05EE);
PROVIDE(UCB0I2COA          = 0x05F0);
PROVIDE(UCB0I2COA_L        = 0x05F0);
PROVIDE(UCB0I2COA_H        = 0x05F1);
PROVIDE(UCB0I2CSA          = 0x05F2);
PROVIDE(UCB0I2CSA_L        = 0x05F2);
PROVIDE(UCB0I2CSA_H        = 0x05F3);
PROVIDE(UCB0ICTL           = 0x05FC);
PROVIDE(UCB0ICTL_L         = 0x05FC);
PROVIDE(UCB0ICTL_H         = 0x05FD);
PROVIDE(UCB0IV             = 0x05FE);
/************************************************************
* WATCHDOG TIMER A
************************************************************/
PROVIDE(WDTCTL             = 0x015C);
PROVIDE(WDTCTL_L           = 0x015C);
PROVIDE(WDTCTL_H           = 0x015D);
/************************************************************
* TLV Descriptors
************************************************************/
/************************************************************
* Interrupt Vectors (offset from 0xFF80)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
