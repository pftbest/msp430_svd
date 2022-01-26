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

/* This file supports MSP430F6734A devices. */
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
* Auxilary Supply
************************************************************/
PROVIDE(AUXCTL0            = 0x09E0);
PROVIDE(AUXCTL0_L          = 0x09E0);
PROVIDE(AUXCTL0_H          = 0x09E1);
PROVIDE(AUXCTL1            = 0x09E2);
PROVIDE(AUXCTL1_L          = 0x09E2);
PROVIDE(AUXCTL1_H          = 0x09E3);
PROVIDE(AUXCTL2            = 0x09E4);
PROVIDE(AUXCTL2_L          = 0x09E4);
PROVIDE(AUXCTL2_H          = 0x09E5);
PROVIDE(AUX2CHCTL          = 0x09F2);
PROVIDE(AUX2CHCTL_L        = 0x09F2);
PROVIDE(AUX2CHCTL_H        = 0x09F3);
PROVIDE(AUX3CHCTL          = 0x09F4);
PROVIDE(AUX3CHCTL_L        = 0x09F4);
PROVIDE(AUX3CHCTL_H        = 0x09F5);
PROVIDE(AUXADCCTL          = 0x09F6);
PROVIDE(AUXADCCTL_L        = 0x09F6);
PROVIDE(AUXADCCTL_H        = 0x09F7);
PROVIDE(AUXIFG             = 0x09FA);
PROVIDE(AUXIFG_L           = 0x09FA);
PROVIDE(AUXIFG_H           = 0x09FB);
PROVIDE(AUXIE              = 0x09FC);
PROVIDE(AUXIE_L            = 0x09FC);
PROVIDE(AUXIE_H            = 0x09FD);
PROVIDE(AUXIV              = 0x09FE);
PROVIDE(AUXIV_L            = 0x09FE);
PROVIDE(AUXIV_H            = 0x09FF);
/*************************************************************
* Backup RAM Module
*************************************************************/
PROVIDE(BAKMEM0            = 0x0480);
PROVIDE(BAKMEM0_L          = 0x0480);
PROVIDE(BAKMEM0_H          = 0x0481);
PROVIDE(BAKMEM1            = 0x0482);
PROVIDE(BAKMEM1_L          = 0x0482);
PROVIDE(BAKMEM1_H          = 0x0483);
PROVIDE(BAKMEM2            = 0x0484);
PROVIDE(BAKMEM2_L          = 0x0484);
PROVIDE(BAKMEM2_H          = 0x0485);
PROVIDE(BAKMEM3            = 0x0486);
PROVIDE(BAKMEM3_L          = 0x0486);
PROVIDE(BAKMEM3_H          = 0x0487);
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
* LCD_C
************************************************************/
PROVIDE(LCDCCTL0           = 0x0A00);
PROVIDE(LCDCCTL0_L         = 0x0A00);
PROVIDE(LCDCCTL0_H         = 0x0A01);
PROVIDE(LCDCCTL1           = 0x0A02);
PROVIDE(LCDCCTL1_L         = 0x0A02);
PROVIDE(LCDCCTL1_H         = 0x0A03);
PROVIDE(LCDCBLKCTL         = 0x0A04);
PROVIDE(LCDCBLKCTL_L       = 0x0A04);
PROVIDE(LCDCBLKCTL_H       = 0x0A05);
PROVIDE(LCDCMEMCTL         = 0x0A06);
PROVIDE(LCDCMEMCTL_L       = 0x0A06);
PROVIDE(LCDCMEMCTL_H       = 0x0A07);
PROVIDE(LCDCVCTL           = 0x0A08);
PROVIDE(LCDCVCTL_L         = 0x0A08);
PROVIDE(LCDCVCTL_H         = 0x0A09);
PROVIDE(LCDCPCTL0          = 0x0A0A);
PROVIDE(LCDCPCTL0_L        = 0x0A0A);
PROVIDE(LCDCPCTL0_H        = 0x0A0B);
PROVIDE(LCDCPCTL1          = 0x0A0C);
PROVIDE(LCDCPCTL1_L        = 0x0A0C);
PROVIDE(LCDCPCTL1_H        = 0x0A0D);
PROVIDE(LCDCPCTL2          = 0x0A0E);
PROVIDE(LCDCPCTL2_L        = 0x0A0E);
PROVIDE(LCDCPCTL2_H        = 0x0A0F);
PROVIDE(LCDCCPCTL          = 0x0A12);
PROVIDE(LCDCCPCTL_L        = 0x0A12);
PROVIDE(LCDCCPCTL_H        = 0x0A13);
PROVIDE(LCDCIV             = 0x0A1E);
PROVIDE(LCDM1              = 0x0A20);
PROVIDE(LCDM2              = 0x0A21);
PROVIDE(LCDM3              = 0x0A22);
PROVIDE(LCDM4              = 0x0A23);
PROVIDE(LCDM5              = 0x0A24);
PROVIDE(LCDM6              = 0x0A25);
PROVIDE(LCDM7              = 0x0A26);
PROVIDE(LCDM8              = 0x0A27);
PROVIDE(LCDM9              = 0x0A28);
PROVIDE(LCDM10             = 0x0A29);
PROVIDE(LCDM11             = 0x0A2A);
PROVIDE(LCDM12             = 0x0A2B);
PROVIDE(LCDM13             = 0x0A2C);
PROVIDE(LCDM14             = 0x0A2D);
PROVIDE(LCDM15             = 0x0A2E);
PROVIDE(LCDM16             = 0x0A2F);
PROVIDE(LCDM17             = 0x0A30);
PROVIDE(LCDM18             = 0x0A31);
PROVIDE(LCDM19             = 0x0A32);
PROVIDE(LCDM20             = 0x0A33);
PROVIDE(LCDM21             = 0x0A34);
PROVIDE(LCDM22             = 0x0A35);
PROVIDE(LCDM23             = 0x0A36);
PROVIDE(LCDM24             = 0x0A37);
PROVIDE(LCDM25             = 0x0A38);
PROVIDE(LCDM26             = 0x0A39);
PROVIDE(LCDM27             = 0x0A3A);
PROVIDE(LCDM28             = 0x0A3B);
PROVIDE(LCDM29             = 0x0A3C);
PROVIDE(LCDM30             = 0x0A3D);
PROVIDE(LCDM31             = 0x0A3E);
PROVIDE(LCDM32             = 0x0A3F);
PROVIDE(LCDM33             = 0x0A40);
PROVIDE(LCDM34             = 0x0A41);
PROVIDE(LCDM35             = 0x0A42);
PROVIDE(LCDM36             = 0x0A43);
PROVIDE(LCDM37             = 0x0A44);
PROVIDE(LCDM38             = 0x0A45);
PROVIDE(LCDM39             = 0x0A46);
PROVIDE(LCDM40             = 0x0A47);
PROVIDE(LCDBM1             = 0x0A40);
PROVIDE(LCDBM2             = 0x0A41);
PROVIDE(LCDBM3             = 0x0A42);
PROVIDE(LCDBM4             = 0x0A43);
PROVIDE(LCDBM5             = 0x0A44);
PROVIDE(LCDBM6             = 0x0A45);
PROVIDE(LCDBM7             = 0x0A46);
PROVIDE(LCDBM8             = 0x0A47);
PROVIDE(LCDBM9             = 0x0A48);
PROVIDE(LCDBM10            = 0x0A49);
PROVIDE(LCDBM11            = 0x0A4A);
PROVIDE(LCDBM12            = 0x0A4B);
PROVIDE(LCDBM13            = 0x0A4C);
PROVIDE(LCDBM14            = 0x0A4D);
PROVIDE(LCDBM15            = 0x0A4E);
PROVIDE(LCDBM16            = 0x0A4F);
PROVIDE(LCDBM17            = 0x0A50);
PROVIDE(LCDBM18            = 0x0A51);
PROVIDE(LCDBM19            = 0x0A52);
PROVIDE(LCDBM20            = 0x0A53);
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
PROVIDE(PBDS               = 0x0228);
PROVIDE(PBDS_L             = 0x0228);
PROVIDE(PBDS_H             = 0x0229);
PROVIDE(PBSEL              = 0x022A);
PROVIDE(PBSEL_L            = 0x022A);
PROVIDE(PBSEL_H            = 0x022B);
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
PROVIDE(PCDS               = 0x0248);
PROVIDE(PCDS_L             = 0x0248);
PROVIDE(PCDS_H             = 0x0249);
PROVIDE(PCSEL              = 0x024A);
PROVIDE(PCSEL_L            = 0x024A);
PROVIDE(PCSEL_H            = 0x024B);
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
PROVIDE(PDDS               = 0x0268);
PROVIDE(PDDS_L             = 0x0268);
PROVIDE(PDDS_H             = 0x0269);
PROVIDE(PDSEL              = 0x026A);
PROVIDE(PDSEL_L            = 0x026A);
PROVIDE(PDSEL_H            = 0x026B);
/************************************************************
* DIGITAL I/O Port9 Pull up / Pull down Resistors
************************************************************/
PROVIDE(PEIN               = 0x0280);
PROVIDE(PEIN_L             = 0x0280);
PROVIDE(PEIN_H             = 0x0281);
PROVIDE(PEOUT              = 0x0282);
PROVIDE(PEOUT_L            = 0x0282);
PROVIDE(PEOUT_H            = 0x0283);
PROVIDE(PEDIR              = 0x0284);
PROVIDE(PEDIR_L            = 0x0284);
PROVIDE(PEDIR_H            = 0x0285);
PROVIDE(PEREN              = 0x0286);
PROVIDE(PEREN_L            = 0x0286);
PROVIDE(PEREN_H            = 0x0287);
PROVIDE(PEDS               = 0x0288);
PROVIDE(PEDS_L             = 0x0288);
PROVIDE(PEDS_H             = 0x0289);
PROVIDE(PESEL              = 0x028A);
PROVIDE(PESEL_L            = 0x028A);
PROVIDE(PESEL_H            = 0x028B);
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
* Real Time Clock
************************************************************/
PROVIDE(RTCCTL0            = 0x04A0);
PROVIDE(RTCCTL0_L          = 0x04A0);
PROVIDE(RTCCTL0_H          = 0x04A1);
PROVIDE(RTCCTL13           = 0x04A2);
PROVIDE(RTCCTL13_L         = 0x04A2);
PROVIDE(RTCCTL13_H         = 0x04A3);
PROVIDE(RTCOCAL            = 0x04A4);
PROVIDE(RTCOCAL_L          = 0x04A4);
PROVIDE(RTCOCAL_H          = 0x04A5);
PROVIDE(RTCTCMP            = 0x04A6);
PROVIDE(RTCTCMP_L          = 0x04A6);
PROVIDE(RTCTCMP_H          = 0x04A7);
PROVIDE(RTCPS0CTL          = 0x04A8);
PROVIDE(RTCPS0CTL_L        = 0x04A8);
PROVIDE(RTCPS0CTL_H        = 0x04A9);
PROVIDE(RTCPS1CTL          = 0x04AA);
PROVIDE(RTCPS1CTL_L        = 0x04AA);
PROVIDE(RTCPS1CTL_H        = 0x04AB);
PROVIDE(RTCPS              = 0x04AC);
PROVIDE(RTCPS_L            = 0x04AC);
PROVIDE(RTCPS_H            = 0x04AD);
PROVIDE(RTCIV              = 0x04AE);
PROVIDE(RTCTIM0            = 0x04B0);
PROVIDE(RTCTIM0_L          = 0x04B0);
PROVIDE(RTCTIM0_H          = 0x04B1);
PROVIDE(RTCTIM1            = 0x04B2);
PROVIDE(RTCTIM1_L          = 0x04B2);
PROVIDE(RTCTIM1_H          = 0x04B3);
PROVIDE(RTCDATE            = 0x04B4);
PROVIDE(RTCDATE_L          = 0x04B4);
PROVIDE(RTCDATE_H          = 0x04B5);
PROVIDE(RTCYEAR            = 0x04B6);
PROVIDE(RTCYEAR_L          = 0x04B6);
PROVIDE(RTCYEAR_H          = 0x04B7);
PROVIDE(RTCAMINHR          = 0x04B8);
PROVIDE(RTCAMINHR_L        = 0x04B8);
PROVIDE(RTCAMINHR_H        = 0x04B9);
PROVIDE(RTCADOWDAY         = 0x04BA);
PROVIDE(RTCADOWDAY_L       = 0x04BA);
PROVIDE(RTCADOWDAY_H       = 0x04BB);
PROVIDE(BIN2BCD            = 0x04BC);
PROVIDE(BCD2BIN            = 0x04BE);
/************************************************************
* SD24_B - Sigma Delta 24 Bit
************************************************************/
PROVIDE(SD24BCTL0          = 0x0800);
PROVIDE(SD24BCTL0_L        = 0x0800);
PROVIDE(SD24BCTL0_H        = 0x0801);
PROVIDE(SD24BCTL1          = 0x0802);
PROVIDE(SD24BCTL1_L        = 0x0802);
PROVIDE(SD24BCTL1_H        = 0x0803);
PROVIDE(SD24BIFG           = 0x080A);
PROVIDE(SD24BIFG_L         = 0x080A);
PROVIDE(SD24BIFG_H         = 0x080B);
PROVIDE(SD24BIE            = 0x080C);
PROVIDE(SD24BIE_L          = 0x080C);
PROVIDE(SD24BIE_H          = 0x080D);
PROVIDE(SD24BIV            = 0x080E);
PROVIDE(SD24BIV_L          = 0x080E);
PROVIDE(SD24BIV_H          = 0x080F);
PROVIDE(SD24BCCTL0         = 0x0810);
PROVIDE(SD24BCCTL0_L       = 0x0810);
PROVIDE(SD24BCCTL0_H       = 0x0811);
PROVIDE(SD24BINCTL0        = 0x0812);
PROVIDE(SD24BINCTL0_L      = 0x0812);
PROVIDE(SD24BINCTL0_H      = 0x0813);
PROVIDE(SD24BOSR0          = 0x0814);
PROVIDE(SD24BOSR0_L        = 0x0814);
PROVIDE(SD24BOSR0_H        = 0x0815);
PROVIDE(SD24BPRE0          = 0x0816);
PROVIDE(SD24BPRE0_L        = 0x0816);
PROVIDE(SD24BPRE0_H        = 0x0817);
PROVIDE(SD24BCCTL1         = 0x0818);
PROVIDE(SD24BCCTL1_L       = 0x0818);
PROVIDE(SD24BCCTL1_H       = 0x0819);
PROVIDE(SD24BINCTL1        = 0x081A);
PROVIDE(SD24BINCTL1_L      = 0x081A);
PROVIDE(SD24BINCTL1_H      = 0x081B);
PROVIDE(SD24BOSR1          = 0x081C);
PROVIDE(SD24BOSR1_L        = 0x081C);
PROVIDE(SD24BOSR1_H        = 0x081D);
PROVIDE(SD24BPRE1          = 0x081E);
PROVIDE(SD24BPRE1_L        = 0x081E);
PROVIDE(SD24BPRE1_H        = 0x081F);
PROVIDE(SD24BCCTL2         = 0x0820);
PROVIDE(SD24BCCTL2_L       = 0x0820);
PROVIDE(SD24BCCTL2_H       = 0x0821);
PROVIDE(SD24BINCTL2        = 0x0822);
PROVIDE(SD24BINCTL2_L      = 0x0822);
PROVIDE(SD24BINCTL2_H      = 0x0823);
PROVIDE(SD24BOSR2          = 0x0824);
PROVIDE(SD24BOSR2_L        = 0x0824);
PROVIDE(SD24BOSR2_H        = 0x0825);
PROVIDE(SD24BPRE2          = 0x0826);
PROVIDE(SD24BPRE2_L        = 0x0826);
PROVIDE(SD24BPRE2_H        = 0x0827);
PROVIDE(SD24BMEML0         = 0x0850);
PROVIDE(SD24BMEML0_L       = 0x0850);
PROVIDE(SD24BMEML0_H       = 0x0851);
PROVIDE(SD24BMEMH0         = 0x0852);
PROVIDE(SD24BMEMH0_L       = 0x0852);
PROVIDE(SD24BMEMH0_H       = 0x0853);
PROVIDE(SD24BMEML1         = 0x0854);
PROVIDE(SD24BMEML1_L       = 0x0854);
PROVIDE(SD24BMEML1_H       = 0x0855);
PROVIDE(SD24BMEMH1         = 0x0856);
PROVIDE(SD24BMEMH1_L       = 0x0856);
PROVIDE(SD24BMEMH1_H       = 0x0857);
PROVIDE(SD24BMEML2         = 0x0858);
PROVIDE(SD24BMEML2_L       = 0x0858);
PROVIDE(SD24BMEML2_H       = 0x0859);
PROVIDE(SD24BMEMH2         = 0x085A);
PROVIDE(SD24BMEMH2_L       = 0x085A);
PROVIDE(SD24BMEMH2_H       = 0x085B);
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
* Timer1_A2
************************************************************/
PROVIDE(TA1CTL             = 0x0380);
PROVIDE(TA1CCTL0           = 0x0382);
PROVIDE(TA1CCTL1           = 0x0384);
PROVIDE(TA1R               = 0x0390);
PROVIDE(TA1CCR0            = 0x0392);
PROVIDE(TA1CCR1            = 0x0394);
PROVIDE(TA1IV              = 0x03AE);
PROVIDE(TA1EX0             = 0x03A0);
/************************************************************
* Timer2_A2
************************************************************/
PROVIDE(TA2CTL             = 0x0400);
PROVIDE(TA2CCTL0           = 0x0402);
PROVIDE(TA2CCTL1           = 0x0404);
PROVIDE(TA2R               = 0x0410);
PROVIDE(TA2CCR0            = 0x0412);
PROVIDE(TA2CCR1            = 0x0414);
PROVIDE(TA2IV              = 0x042E);
PROVIDE(TA2EX0             = 0x0420);
/************************************************************
* Timer3_A2
************************************************************/
PROVIDE(TA3CTL             = 0x0440);
PROVIDE(TA3CCTL0           = 0x0442);
PROVIDE(TA3CCTL1           = 0x0444);
PROVIDE(TA3R               = 0x0450);
PROVIDE(TA3CCR0            = 0x0452);
PROVIDE(TA3CCR1            = 0x0454);
PROVIDE(TA3IV              = 0x046E);
PROVIDE(TA3EX0             = 0x0460);
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
PROVIDE(UCA0CTLW1          = 0x05C2);
PROVIDE(UCA0CTLW1_L        = 0x05C2);
PROVIDE(UCA0CTLW1_H        = 0x05C3);
PROVIDE(UCA0BRW            = 0x05C6);
PROVIDE(UCA0BRW_L          = 0x05C6);
PROVIDE(UCA0BRW_H          = 0x05C7);
PROVIDE(UCA0MCTLW          = 0x05C8);
PROVIDE(UCA0MCTLW_L        = 0x05C8);
PROVIDE(UCA0MCTLW_H        = 0x05C9);
PROVIDE(UCA0STATW          = 0x05CA);
PROVIDE(UCA0RXBUF          = 0x05CC);
PROVIDE(UCA0RXBUF_L        = 0x05CC);
PROVIDE(UCA0RXBUF_H        = 0x05CD);
PROVIDE(UCA0TXBUF          = 0x05CE);
PROVIDE(UCA0TXBUF_L        = 0x05CE);
PROVIDE(UCA0TXBUF_H        = 0x05CF);
PROVIDE(UCA0ABCTL          = 0x05D0);
PROVIDE(UCA0IRCTL          = 0x05D2);
PROVIDE(UCA0IRCTL_L        = 0x05D2);
PROVIDE(UCA0IRCTL_H        = 0x05D3);
PROVIDE(UCA0IE             = 0x05DA);
PROVIDE(UCA0IE_L           = 0x05DA);
PROVIDE(UCA0IE_H           = 0x05DB);
PROVIDE(UCA0IFG            = 0x05DC);
PROVIDE(UCA0IFG_L          = 0x05DC);
PROVIDE(UCA0IFG_H          = 0x05DD);
PROVIDE(UCA0IV             = 0x05DE);
/************************************************************
* USCI B0
************************************************************/
PROVIDE(UCB0CTLW0          = 0x0640);
PROVIDE(UCB0CTLW0_L        = 0x0640);
PROVIDE(UCB0CTLW0_H        = 0x0641);
PROVIDE(UCB0CTLW1          = 0x0642);
PROVIDE(UCB0CTLW1_L        = 0x0642);
PROVIDE(UCB0CTLW1_H        = 0x0643);
PROVIDE(UCB0BRW            = 0x0646);
PROVIDE(UCB0BRW_L          = 0x0646);
PROVIDE(UCB0BRW_H          = 0x0647);
PROVIDE(UCB0STATW          = 0x0648);
PROVIDE(UCB0STATW_L        = 0x0648);
PROVIDE(UCB0STATW_H        = 0x0649);
PROVIDE(UCB0TBCNT          = 0x064A);
PROVIDE(UCB0TBCNT_L        = 0x064A);
PROVIDE(UCB0TBCNT_H        = 0x064B);
PROVIDE(UCB0RXBUF          = 0x064C);
PROVIDE(UCB0RXBUF_L        = 0x064C);
PROVIDE(UCB0RXBUF_H        = 0x064D);
PROVIDE(UCB0TXBUF          = 0x064E);
PROVIDE(UCB0TXBUF_L        = 0x064E);
PROVIDE(UCB0TXBUF_H        = 0x064F);
PROVIDE(UCB0I2COA0         = 0x0654);
PROVIDE(UCB0I2COA0_L       = 0x0654);
PROVIDE(UCB0I2COA0_H       = 0x0655);
PROVIDE(UCB0I2COA1         = 0x0656);
PROVIDE(UCB0I2COA1_L       = 0x0656);
PROVIDE(UCB0I2COA1_H       = 0x0657);
PROVIDE(UCB0I2COA2         = 0x0658);
PROVIDE(UCB0I2COA2_L       = 0x0658);
PROVIDE(UCB0I2COA2_H       = 0x0659);
PROVIDE(UCB0I2COA3         = 0x065A);
PROVIDE(UCB0I2COA3_L       = 0x065A);
PROVIDE(UCB0I2COA3_H       = 0x065B);
PROVIDE(UCB0ADDRX          = 0x065C);
PROVIDE(UCB0ADDRX_L        = 0x065C);
PROVIDE(UCB0ADDRX_H        = 0x065D);
PROVIDE(UCB0ADDMASK        = 0x065E);
PROVIDE(UCB0ADDMASK_L      = 0x065E);
PROVIDE(UCB0ADDMASK_H      = 0x065F);
PROVIDE(UCB0I2CSA          = 0x0660);
PROVIDE(UCB0I2CSA_L        = 0x0660);
PROVIDE(UCB0I2CSA_H        = 0x0661);
PROVIDE(UCB0IE             = 0x066A);
PROVIDE(UCB0IE_L           = 0x066A);
PROVIDE(UCB0IE_H           = 0x066B);
PROVIDE(UCB0IFG            = 0x066C);
PROVIDE(UCB0IFG_L          = 0x066C);
PROVIDE(UCB0IFG_H          = 0x066D);
PROVIDE(UCB0IV             = 0x066E);
/************************************************************
* USCI A1
************************************************************/
PROVIDE(UCA1CTLW0          = 0x05E0);
PROVIDE(UCA1CTLW0_L        = 0x05E0);
PROVIDE(UCA1CTLW0_H        = 0x05E1);
PROVIDE(UCA1CTLW1          = 0x05E2);
PROVIDE(UCA1CTLW1_L        = 0x05E2);
PROVIDE(UCA1CTLW1_H        = 0x05E3);
PROVIDE(UCA1BRW            = 0x05E6);
PROVIDE(UCA1BRW_L          = 0x05E6);
PROVIDE(UCA1BRW_H          = 0x05E7);
PROVIDE(UCA1MCTLW          = 0x05E8);
PROVIDE(UCA1MCTLW_L        = 0x05E8);
PROVIDE(UCA1MCTLW_H        = 0x05E9);
PROVIDE(UCA1STATW          = 0x05EA);
PROVIDE(UCA1RXBUF          = 0x05EC);
PROVIDE(UCA1RXBUF_L        = 0x05EC);
PROVIDE(UCA1RXBUF_H        = 0x05ED);
PROVIDE(UCA1TXBUF          = 0x05EE);
PROVIDE(UCA1TXBUF_L        = 0x05EE);
PROVIDE(UCA1TXBUF_H        = 0x05EF);
PROVIDE(UCA1ABCTL          = 0x05F0);
PROVIDE(UCA1IRCTL          = 0x05F2);
PROVIDE(UCA1IRCTL_L        = 0x05F2);
PROVIDE(UCA1IRCTL_H        = 0x05F3);
PROVIDE(UCA1IE             = 0x05FA);
PROVIDE(UCA1IE_L           = 0x05FA);
PROVIDE(UCA1IE_H           = 0x05FB);
PROVIDE(UCA1IFG            = 0x05FC);
PROVIDE(UCA1IFG_L          = 0x05FC);
PROVIDE(UCA1IFG_H          = 0x05FD);
PROVIDE(UCA1IV             = 0x05FE);
/************************************************************
* USCI A2
************************************************************/
PROVIDE(UCA2CTLW0          = 0x0600);
PROVIDE(UCA2CTLW0_L        = 0x0600);
PROVIDE(UCA2CTLW0_H        = 0x0601);
PROVIDE(UCA2CTLW1          = 0x0602);
PROVIDE(UCA2CTLW1_L        = 0x0602);
PROVIDE(UCA2CTLW1_H        = 0x0603);
PROVIDE(UCA2BRW            = 0x0606);
PROVIDE(UCA2BRW_L          = 0x0606);
PROVIDE(UCA2BRW_H          = 0x0607);
PROVIDE(UCA2MCTLW          = 0x0608);
PROVIDE(UCA2MCTLW_L        = 0x0608);
PROVIDE(UCA2MCTLW_H        = 0x0609);
PROVIDE(UCA2STATW          = 0x060A);
PROVIDE(UCA2RXBUF          = 0x060C);
PROVIDE(UCA2RXBUF_L        = 0x060C);
PROVIDE(UCA2RXBUF_H        = 0x060D);
PROVIDE(UCA2TXBUF          = 0x060E);
PROVIDE(UCA2TXBUF_L        = 0x060E);
PROVIDE(UCA2TXBUF_H        = 0x060F);
PROVIDE(UCA2ABCTL          = 0x0610);
PROVIDE(UCA2IRCTL          = 0x0612);
PROVIDE(UCA2IRCTL_L        = 0x0612);
PROVIDE(UCA2IRCTL_H        = 0x0613);
PROVIDE(UCA2IE             = 0x061A);
PROVIDE(UCA2IE_L           = 0x061A);
PROVIDE(UCA2IE_H           = 0x061B);
PROVIDE(UCA2IFG            = 0x061C);
PROVIDE(UCA2IFG_L          = 0x061C);
PROVIDE(UCA2IFG_H          = 0x061D);
PROVIDE(UCA2IV             = 0x061E);
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
