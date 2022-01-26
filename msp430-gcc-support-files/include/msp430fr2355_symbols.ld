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

/* This file supports MSP430FR2355 devices. */

/* 1.212 */

/************************************************************
* PERIPHERAL FILE MAP
************************************************************/


/*****************************************************************************
 ADC
*****************************************************************************/
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


/*****************************************************************************
 BKMEM
*****************************************************************************/
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


/*****************************************************************************
 CAPTIO
*****************************************************************************/
PROVIDE(CAPTIOCTL          = 0x02EE);
PROVIDE(CAPTIOCTL_L        = 0x02EE);
PROVIDE(CAPTIOCTL_H        = 0x02EF);


/*****************************************************************************
 CRC
*****************************************************************************/
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


/*****************************************************************************
 CS
*****************************************************************************/
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


/*****************************************************************************
 DIO
*****************************************************************************/
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
PROVIDE(PASEL1             = 0x020C);
PROVIDE(PASEL1_L           = 0x020C);
PROVIDE(PASEL1_H           = 0x020D);
PROVIDE(P1IV               = 0x020E);
PROVIDE(P1IV_L             = 0x020E);
PROVIDE(P1IV_H             = 0x020F);
PROVIDE(PASELC             = 0x0216);
PROVIDE(PASELC_L           = 0x0216);
PROVIDE(PASELC_H           = 0x0217);
PROVIDE(PAIES              = 0x0218);
PROVIDE(PAIES_L            = 0x0218);
PROVIDE(PAIES_H            = 0x0219);
PROVIDE(PAIE               = 0x021A);
PROVIDE(PAIE_L             = 0x021A);
PROVIDE(PAIE_H             = 0x021B);
PROVIDE(PAIFG              = 0x021C);
PROVIDE(PAIFG_L            = 0x021C);
PROVIDE(PAIFG_H            = 0x021D);
PROVIDE(P2IV               = 0x021E);
PROVIDE(P2IV_L             = 0x021E);
PROVIDE(P2IV_H             = 0x021F);
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
PROVIDE(PBSEL1             = 0x022C);
PROVIDE(PBSEL1_L           = 0x022C);
PROVIDE(PBSEL1_H           = 0x022D);
PROVIDE(P3IV               = 0x022E);
PROVIDE(P3IV_L             = 0x022E);
PROVIDE(P3IV_H             = 0x022F);
PROVIDE(PBSELC             = 0x0236);
PROVIDE(PBSELC_L           = 0x0236);
PROVIDE(PBSELC_H           = 0x0237);
PROVIDE(PBIES              = 0x0238);
PROVIDE(PBIES_L            = 0x0238);
PROVIDE(PBIES_H            = 0x0239);
PROVIDE(PBIE               = 0x023A);
PROVIDE(PBIE_L             = 0x023A);
PROVIDE(PBIE_H             = 0x023B);
PROVIDE(PBIFG              = 0x023C);
PROVIDE(PBIFG_L            = 0x023C);
PROVIDE(PBIFG_H            = 0x023D);
PROVIDE(P4IV               = 0x023E);
PROVIDE(P4IV_L             = 0x023E);
PROVIDE(P4IV_H             = 0x023F);
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
PROVIDE(PCSEL1             = 0x024C);
PROVIDE(PCSEL1_L           = 0x024C);
PROVIDE(PCSEL1_H           = 0x024D);
PROVIDE(P5IV               = 0x024E);
PROVIDE(P5IV_L             = 0x024E);
PROVIDE(P5IV_H             = 0x024F);
PROVIDE(PCSELC             = 0x0256);
PROVIDE(PCSELC_L           = 0x0256);
PROVIDE(PCSELC_H           = 0x0257);
PROVIDE(PCIES              = 0x0258);
PROVIDE(PCIES_L            = 0x0258);
PROVIDE(PCIES_H            = 0x0259);
PROVIDE(PCIE               = 0x025A);
PROVIDE(PCIE_L             = 0x025A);
PROVIDE(PCIE_H             = 0x025B);
PROVIDE(PCIFG              = 0x025C);
PROVIDE(PCIFG_L            = 0x025C);
PROVIDE(PCIFG_H            = 0x025D);
PROVIDE(P6IV               = 0x025E);
PROVIDE(P6IV_L             = 0x025E);
PROVIDE(P6IV_H             = 0x025F);
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
PROVIDE(PJSEL0             = 0x032A);
PROVIDE(PJSEL0_L           = 0x032A);
PROVIDE(PJSEL0_H           = 0x032B);
PROVIDE(PJSEL1             = 0x032C);
PROVIDE(PJSEL1_L           = 0x032C);
PROVIDE(PJSEL1_H           = 0x032D);
PROVIDE(PJSELC             = 0x0336);
PROVIDE(PJSELC_L           = 0x0336);
PROVIDE(PJSELC_H           = 0x0337);
PROVIDE(P1IN               = 0x0200);

PROVIDE(P2IN               = 0x0201);

PROVIDE(P2OUT              = 0x0203);

PROVIDE(P1OUT              = 0x0202);

PROVIDE(P1DIR              = 0x0204);

PROVIDE(P2DIR              = 0x0205);

PROVIDE(P1REN              = 0x0206);

PROVIDE(P2REN              = 0x0207);

PROVIDE(P1SEL0             = 0x020A);

PROVIDE(P2SEL0             = 0x020B);

PROVIDE(P1SEL1             = 0x020C);

PROVIDE(P2SEL1             = 0x020D);

PROVIDE(P1SELC             = 0x0216);

PROVIDE(P2SELC             = 0x0217);

PROVIDE(P1IES              = 0x0218);

PROVIDE(P2IES              = 0x0219);

PROVIDE(P1IE               = 0x021A);

PROVIDE(P2IE               = 0x021B);

PROVIDE(P1IFG              = 0x021C);

PROVIDE(P2IFG              = 0x021D);

PROVIDE(P3IN               = 0x0220);

PROVIDE(P4IN               = 0x0221);

PROVIDE(P3OUT              = 0x0222);

PROVIDE(P4OUT              = 0x0223);

PROVIDE(P3DIR              = 0x0224);

PROVIDE(P4DIR              = 0x0225);

PROVIDE(P3REN              = 0x0226);

PROVIDE(P4REN              = 0x0227);

PROVIDE(P4SEL0             = 0x022B);

PROVIDE(P3SEL0             = 0x022A);

PROVIDE(P3SEL1             = 0x022C);

PROVIDE(P4SEL1             = 0x022D);

PROVIDE(P3SELC             = 0x0236);

PROVIDE(P4SELC             = 0x0237);

PROVIDE(P3IES              = 0x0238);

PROVIDE(P4IES              = 0x0239);

PROVIDE(P3IE               = 0x023A);

PROVIDE(P4IE               = 0x023B);

PROVIDE(P3IFG              = 0x023C);

PROVIDE(P4IFG              = 0x023D);

PROVIDE(P5IN               = 0x0240);

PROVIDE(P6IN               = 0x0241);

PROVIDE(P5OUT              = 0x0242);

PROVIDE(P6OUT              = 0x0243);

PROVIDE(P5DIR              = 0x0244);

PROVIDE(P6DIR              = 0x0245);

PROVIDE(P5REN              = 0x0246);

PROVIDE(P6REN              = 0x0247);

PROVIDE(P5SEL0             = 0x024A);

PROVIDE(P6SEL0             = 0x024B);

PROVIDE(P5SEL1             = 0x024C);

PROVIDE(P6SEL1             = 0x024D);

PROVIDE(P5SELC             = 0x0256);

PROVIDE(P6SELC             = 0x0257);

PROVIDE(P5IES              = 0x0258);

PROVIDE(P6IES              = 0x0259);

PROVIDE(P5IE               = 0x025A);

PROVIDE(P6IE               = 0x025B);

PROVIDE(P5IFG              = 0x025C);

PROVIDE(P6IFG              = 0x025D);



/*****************************************************************************
 FRCTL
*****************************************************************************/
PROVIDE(FRCTL0             = 0x01A0);
PROVIDE(FRCTL0_L           = 0x01A0);
PROVIDE(FRCTL0_H           = 0x01A1);
PROVIDE(GCCTL0             = 0x01A4);
PROVIDE(GCCTL0_L           = 0x01A4);
PROVIDE(GCCTL0_H           = 0x01A5);
PROVIDE(GCCTL1             = 0x01A6);
PROVIDE(GCCTL1_L           = 0x01A6);
PROVIDE(GCCTL1_H           = 0x01A7);


/*****************************************************************************
 ICC
*****************************************************************************/
PROVIDE(ICCSC              = 0x06C0);
PROVIDE(ICCSC_L            = 0x06C0);
PROVIDE(ICCSC_H            = 0x06C1);
PROVIDE(ICCMVS             = 0x06C2);
PROVIDE(ICCMVS_L           = 0x06C2);
PROVIDE(ICCMVS_H           = 0x06C3);
PROVIDE(ICCILSR0           = 0x06C4);
PROVIDE(ICCILSR0_L         = 0x06C4);
PROVIDE(ICCILSR0_H         = 0x06C5);
PROVIDE(ICCILSR1           = 0x06C6);
PROVIDE(ICCILSR1_L         = 0x06C6);
PROVIDE(ICCILSR1_H         = 0x06C7);
PROVIDE(ICCILSR2           = 0x06C8);
PROVIDE(ICCILSR2_L         = 0x06C8);
PROVIDE(ICCILSR2_H         = 0x06C9);
PROVIDE(ICCILSR3           = 0x06CA);
PROVIDE(ICCILSR3_L         = 0x06CA);
PROVIDE(ICCILSR3_H         = 0x06CB);


/*****************************************************************************
 MPY32
*****************************************************************************/
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


/*****************************************************************************
 PMM
*****************************************************************************/
PROVIDE(PMMCTL0            = 0x0120);
PROVIDE(PMMCTL0_L          = 0x0120);
PROVIDE(PMMCTL0_H          = 0x0121);
PROVIDE(PMMCTL2            = 0x0124);
PROVIDE(PMMCTL2_L          = 0x0124);
PROVIDE(PMMCTL2_H          = 0x0125);
PROVIDE(PMMIFG             = 0x012A);
PROVIDE(PMMIFG_L           = 0x012A);
PROVIDE(PMMIFG_H           = 0x012B);
PROVIDE(PM5CTL0            = 0x0130);
PROVIDE(PM5CTL0_L          = 0x0130);
PROVIDE(PM5CTL0_H          = 0x0131);


/*****************************************************************************
 RTC
*****************************************************************************/
PROVIDE(RTCCTL             = 0x0300);
PROVIDE(RTCCTL_L           = 0x0300);
PROVIDE(RTCCTL_H           = 0x0301);
PROVIDE(RTCIV              = 0x0304);
PROVIDE(RTCIV_L            = 0x0304);
PROVIDE(RTCIV_H            = 0x0305);
PROVIDE(RTCMOD             = 0x0308);
PROVIDE(RTCMOD_L           = 0x0308);
PROVIDE(RTCMOD_H           = 0x0309);
PROVIDE(RTCCNT             = 0x030C);
PROVIDE(RTCCNT_L           = 0x030C);
PROVIDE(RTCCNT_H           = 0x030D);


/*****************************************************************************
 SAC0
*****************************************************************************/
PROVIDE(SAC0OA             = 0x0C80);
PROVIDE(SAC0OA_L           = 0x0C80);
PROVIDE(SAC0OA_H           = 0x0C81);
PROVIDE(SAC0PGA            = 0x0C82);
PROVIDE(SAC0PGA_L          = 0x0C82);
PROVIDE(SAC0PGA_H          = 0x0C83);
PROVIDE(SAC0DAC            = 0x0C84);
PROVIDE(SAC0DAC_L          = 0x0C84);
PROVIDE(SAC0DAC_H          = 0x0C85);
PROVIDE(SAC0DAT            = 0x0C86);
PROVIDE(SAC0DAT_L          = 0x0C86);
PROVIDE(SAC0DAT_H          = 0x0C87);
PROVIDE(SAC0DACSTS         = 0x0C88);
PROVIDE(SAC0DACSTS_L       = 0x0C88);
PROVIDE(SAC0DACSTS_H       = 0x0C89);
PROVIDE(SAC0IV             = 0x0C8A);
PROVIDE(SAC0IV_L           = 0x0C8A);
PROVIDE(SAC0IV_H           = 0x0C8B);


/*****************************************************************************
 SAC1
*****************************************************************************/
PROVIDE(SAC1OA             = 0x0C90);
PROVIDE(SAC1OA_L           = 0x0C90);
PROVIDE(SAC1OA_H           = 0x0C91);
PROVIDE(SAC1PGA            = 0x0C92);
PROVIDE(SAC1PGA_L          = 0x0C92);
PROVIDE(SAC1PGA_H          = 0x0C93);
PROVIDE(SAC1DAC            = 0x0C94);
PROVIDE(SAC1DAC_L          = 0x0C94);
PROVIDE(SAC1DAC_H          = 0x0C95);
PROVIDE(SAC1DAT            = 0x0C96);
PROVIDE(SAC1DAT_L          = 0x0C96);
PROVIDE(SAC1DAT_H          = 0x0C97);
PROVIDE(SAC1DACSTS         = 0x0C98);
PROVIDE(SAC1DACSTS_L       = 0x0C98);
PROVIDE(SAC1DACSTS_H       = 0x0C99);
PROVIDE(SAC1IV             = 0x0C9A);
PROVIDE(SAC1IV_L           = 0x0C9A);
PROVIDE(SAC1IV_H           = 0x0C9B);


/*****************************************************************************
 SAC2
*****************************************************************************/
PROVIDE(SAC2OA             = 0x0CA0);
PROVIDE(SAC2OA_L           = 0x0CA0);
PROVIDE(SAC2OA_H           = 0x0CA1);
PROVIDE(SAC2PGA            = 0x0CA2);
PROVIDE(SAC2PGA_L          = 0x0CA2);
PROVIDE(SAC2PGA_H          = 0x0CA3);
PROVIDE(SAC2DAC            = 0x0CA4);
PROVIDE(SAC2DAC_L          = 0x0CA4);
PROVIDE(SAC2DAC_H          = 0x0CA5);
PROVIDE(SAC2DAT            = 0x0CA6);
PROVIDE(SAC2DAT_L          = 0x0CA6);
PROVIDE(SAC2DAT_H          = 0x0CA7);
PROVIDE(SAC2DACSTS         = 0x0CA8);
PROVIDE(SAC2DACSTS_L       = 0x0CA8);
PROVIDE(SAC2DACSTS_H       = 0x0CA9);
PROVIDE(SAC2IV             = 0x0CAA);
PROVIDE(SAC2IV_L           = 0x0CAA);
PROVIDE(SAC2IV_H           = 0x0CAB);


/*****************************************************************************
 SAC3
*****************************************************************************/
PROVIDE(SAC3OA             = 0x0CB0);
PROVIDE(SAC3OA_L           = 0x0CB0);
PROVIDE(SAC3OA_H           = 0x0CB1);
PROVIDE(SAC3PGA            = 0x0CB2);
PROVIDE(SAC3PGA_L          = 0x0CB2);
PROVIDE(SAC3PGA_H          = 0x0CB3);
PROVIDE(SAC3DAC            = 0x0CB4);
PROVIDE(SAC3DAC_L          = 0x0CB4);
PROVIDE(SAC3DAC_H          = 0x0CB5);
PROVIDE(SAC3DAT            = 0x0CB6);
PROVIDE(SAC3DAT_L          = 0x0CB6);
PROVIDE(SAC3DAT_H          = 0x0CB7);
PROVIDE(SAC3DACSTS         = 0x0CB8);
PROVIDE(SAC3DACSTS_L       = 0x0CB8);
PROVIDE(SAC3DACSTS_H       = 0x0CB9);
PROVIDE(SAC3IV             = 0x0CBA);
PROVIDE(SAC3IV_L           = 0x0CBA);
PROVIDE(SAC3IV_H           = 0x0CBB);


/*****************************************************************************
 SFR
*****************************************************************************/
PROVIDE(SFRIE1             = 0x0100);
PROVIDE(SFRIE1_L           = 0x0100);
PROVIDE(SFRIE1_H           = 0x0101);
PROVIDE(SFRIFG1            = 0x0102);
PROVIDE(SFRIFG1_L          = 0x0102);
PROVIDE(SFRIFG1_H          = 0x0103);
PROVIDE(SFRRPCR            = 0x0104);
PROVIDE(SFRRPCR_L          = 0x0104);
PROVIDE(SFRRPCR_H          = 0x0105);


/*****************************************************************************
 SYS
*****************************************************************************/
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


/*****************************************************************************
 TB0
*****************************************************************************/
PROVIDE(TB0CTL             = 0x0380);
PROVIDE(TB0CTL_L           = 0x0380);
PROVIDE(TB0CTL_H           = 0x0381);
PROVIDE(TB0CCTL0           = 0x0382);
PROVIDE(TB0CCTL0_L         = 0x0382);
PROVIDE(TB0CCTL0_H         = 0x0383);
PROVIDE(TB0CCTL1           = 0x0384);
PROVIDE(TB0CCTL1_L         = 0x0384);
PROVIDE(TB0CCTL1_H         = 0x0385);
PROVIDE(TB0CCTL2           = 0x0386);
PROVIDE(TB0CCTL2_L         = 0x0386);
PROVIDE(TB0CCTL2_H         = 0x0387);
PROVIDE(TB0R               = 0x0390);
PROVIDE(TB0R_L             = 0x0390);
PROVIDE(TB0R_H             = 0x0391);
PROVIDE(TB0CCR0            = 0x0392);
PROVIDE(TB0CCR0_L          = 0x0392);
PROVIDE(TB0CCR0_H          = 0x0393);
PROVIDE(TB0CCR1            = 0x0394);
PROVIDE(TB0CCR1_L          = 0x0394);
PROVIDE(TB0CCR1_H          = 0x0395);
PROVIDE(TB0CCR2            = 0x0396);
PROVIDE(TB0CCR2_L          = 0x0396);
PROVIDE(TB0CCR2_H          = 0x0397);
PROVIDE(TB0EX0             = 0x03A0);
PROVIDE(TB0EX0_L           = 0x03A0);
PROVIDE(TB0EX0_H           = 0x03A1);
PROVIDE(TB0IV              = 0x03AE);
PROVIDE(TB0IV_L            = 0x03AE);
PROVIDE(TB0IV_H            = 0x03AF);


/*****************************************************************************
 TB1
*****************************************************************************/
PROVIDE(TB1CTL             = 0x03C0);
PROVIDE(TB1CTL_L           = 0x03C0);
PROVIDE(TB1CTL_H           = 0x03C1);
PROVIDE(TB1CCTL0           = 0x03C2);
PROVIDE(TB1CCTL0_L         = 0x03C2);
PROVIDE(TB1CCTL0_H         = 0x03C3);
PROVIDE(TB1CCTL1           = 0x03C4);
PROVIDE(TB1CCTL1_L         = 0x03C4);
PROVIDE(TB1CCTL1_H         = 0x03C5);
PROVIDE(TB1CCTL2           = 0x03C6);
PROVIDE(TB1CCTL2_L         = 0x03C6);
PROVIDE(TB1CCTL2_H         = 0x03C7);
PROVIDE(TB1R               = 0x03D0);
PROVIDE(TB1R_L             = 0x03D0);
PROVIDE(TB1R_H             = 0x03D1);
PROVIDE(TB1CCR0            = 0x03D2);
PROVIDE(TB1CCR0_L          = 0x03D2);
PROVIDE(TB1CCR0_H          = 0x03D3);
PROVIDE(TB1CCR1            = 0x03D4);
PROVIDE(TB1CCR1_L          = 0x03D4);
PROVIDE(TB1CCR1_H          = 0x03D5);
PROVIDE(TB1CCR2            = 0x03D6);
PROVIDE(TB1CCR2_L          = 0x03D6);
PROVIDE(TB1CCR2_H          = 0x03D7);
PROVIDE(TB1EX0             = 0x03E0);
PROVIDE(TB1EX0_L           = 0x03E0);
PROVIDE(TB1EX0_H           = 0x03E1);
PROVIDE(TB1IV              = 0x03EE);
PROVIDE(TB1IV_L            = 0x03EE);
PROVIDE(TB1IV_H            = 0x03EF);


/*****************************************************************************
 TB2
*****************************************************************************/
PROVIDE(TB2CTL             = 0x0400);
PROVIDE(TB2CTL_L           = 0x0400);
PROVIDE(TB2CTL_H           = 0x0401);
PROVIDE(TB2CCTL0           = 0x0402);
PROVIDE(TB2CCTL0_L         = 0x0402);
PROVIDE(TB2CCTL0_H         = 0x0403);
PROVIDE(TB2CCTL1           = 0x0404);
PROVIDE(TB2CCTL1_L         = 0x0404);
PROVIDE(TB2CCTL1_H         = 0x0405);
PROVIDE(TB2CCTL2           = 0x0406);
PROVIDE(TB2CCTL2_L         = 0x0406);
PROVIDE(TB2CCTL2_H         = 0x0407);
PROVIDE(TB2R               = 0x0410);
PROVIDE(TB2R_L             = 0x0410);
PROVIDE(TB2R_H             = 0x0411);
PROVIDE(TB2CCR0            = 0x0412);
PROVIDE(TB2CCR0_L          = 0x0412);
PROVIDE(TB2CCR0_H          = 0x0413);
PROVIDE(TB2CCR1            = 0x0414);
PROVIDE(TB2CCR1_L          = 0x0414);
PROVIDE(TB2CCR1_H          = 0x0415);
PROVIDE(TB2CCR2            = 0x0416);
PROVIDE(TB2CCR2_L          = 0x0416);
PROVIDE(TB2CCR2_H          = 0x0417);
PROVIDE(TB2EX0             = 0x0420);
PROVIDE(TB2EX0_L           = 0x0420);
PROVIDE(TB2EX0_H           = 0x0421);
PROVIDE(TB2IV              = 0x042E);
PROVIDE(TB2IV_L            = 0x042E);
PROVIDE(TB2IV_H            = 0x042F);


/*****************************************************************************
 TB3
*****************************************************************************/
PROVIDE(TB3CTL             = 0x0440);
PROVIDE(TB3CTL_L           = 0x0440);
PROVIDE(TB3CTL_H           = 0x0441);
PROVIDE(TB3CCTL0           = 0x0442);
PROVIDE(TB3CCTL0_L         = 0x0442);
PROVIDE(TB3CCTL0_H         = 0x0443);
PROVIDE(TB3CCTL1           = 0x0444);
PROVIDE(TB3CCTL1_L         = 0x0444);
PROVIDE(TB3CCTL1_H         = 0x0445);
PROVIDE(TB3CCTL2           = 0x0446);
PROVIDE(TB3CCTL2_L         = 0x0446);
PROVIDE(TB3CCTL2_H         = 0x0447);
PROVIDE(TB3CCTL3           = 0x0448);
PROVIDE(TB3CCTL3_L         = 0x0448);
PROVIDE(TB3CCTL3_H         = 0x0449);
PROVIDE(TB3CCTL4           = 0x044A);
PROVIDE(TB3CCTL4_L         = 0x044A);
PROVIDE(TB3CCTL4_H         = 0x044B);
PROVIDE(TB3CCTL5           = 0x044C);
PROVIDE(TB3CCTL5_L         = 0x044C);
PROVIDE(TB3CCTL5_H         = 0x044D);
PROVIDE(TB3CCTL6           = 0x044E);
PROVIDE(TB3CCTL6_L         = 0x044E);
PROVIDE(TB3CCTL6_H         = 0x044F);
PROVIDE(TB3R               = 0x0450);
PROVIDE(TB3R_L             = 0x0450);
PROVIDE(TB3R_H             = 0x0451);
PROVIDE(TB3CCR0            = 0x0452);
PROVIDE(TB3CCR0_L          = 0x0452);
PROVIDE(TB3CCR0_H          = 0x0453);
PROVIDE(TB3CCR1            = 0x0454);
PROVIDE(TB3CCR1_L          = 0x0454);
PROVIDE(TB3CCR1_H          = 0x0455);
PROVIDE(TB3CCR2            = 0x0456);
PROVIDE(TB3CCR2_L          = 0x0456);
PROVIDE(TB3CCR2_H          = 0x0457);
PROVIDE(TB3CCR3            = 0x0458);
PROVIDE(TB3CCR3_L          = 0x0458);
PROVIDE(TB3CCR3_H          = 0x0459);
PROVIDE(TB3CCR4            = 0x045A);
PROVIDE(TB3CCR4_L          = 0x045A);
PROVIDE(TB3CCR4_H          = 0x045B);
PROVIDE(TB3CCR5            = 0x045C);
PROVIDE(TB3CCR5_L          = 0x045C);
PROVIDE(TB3CCR5_H          = 0x045D);
PROVIDE(TB3CCR6            = 0x045E);
PROVIDE(TB3CCR6_L          = 0x045E);
PROVIDE(TB3CCR6_H          = 0x045F);
PROVIDE(TB3EX0             = 0x0460);
PROVIDE(TB3EX0_L           = 0x0460);
PROVIDE(TB3EX0_H           = 0x0461);
PROVIDE(TB3IV              = 0x046E);
PROVIDE(TB3IV_L            = 0x046E);
PROVIDE(TB3IV_H            = 0x046F);


/*****************************************************************************
 WDT_A
*****************************************************************************/
PROVIDE(WDTCTL             = 0x01CC);
PROVIDE(WDTCTL_L           = 0x01CC);
PROVIDE(WDTCTL_H           = 0x01CD);


/*****************************************************************************
 eCOMP0
*****************************************************************************/
PROVIDE(CP0CTL0            = 0x08E0);
PROVIDE(CP0CTL0_L          = 0x08E0);
PROVIDE(CP0CTL0_H          = 0x08E1);
PROVIDE(CP0CTL1            = 0x08E2);
PROVIDE(CP0CTL1_L          = 0x08E2);
PROVIDE(CP0CTL1_H          = 0x08E3);
PROVIDE(CP0INT             = 0x08E6);
PROVIDE(CP0INT_L           = 0x08E6);
PROVIDE(CP0INT_H           = 0x08E7);
PROVIDE(CP0IV              = 0x08E8);
PROVIDE(CP0IV_L            = 0x08E8);
PROVIDE(CP0IV_H            = 0x08E9);
PROVIDE(CP0DACCTL          = 0x08F0);
PROVIDE(CP0DACCTL_L        = 0x08F0);
PROVIDE(CP0DACCTL_H        = 0x08F1);
PROVIDE(CP0DACDATA         = 0x08F2);
PROVIDE(CP0DACDATA_L       = 0x08F2);
PROVIDE(CP0DACDATA_H       = 0x08F3);


/*****************************************************************************
 eCOMP1
*****************************************************************************/
PROVIDE(CP1CTL0            = 0x0900);
PROVIDE(CP1CTL0_L          = 0x0900);
PROVIDE(CP1CTL0_H          = 0x0901);
PROVIDE(CP1CTL1            = 0x0902);
PROVIDE(CP1CTL1_L          = 0x0902);
PROVIDE(CP1CTL1_H          = 0x0903);
PROVIDE(CP1INT             = 0x0906);
PROVIDE(CP1INT_L           = 0x0906);
PROVIDE(CP1INT_H           = 0x0907);
PROVIDE(CP1IV              = 0x0908);
PROVIDE(CP1IV_L            = 0x0908);
PROVIDE(CP1IV_H            = 0x0909);
PROVIDE(CP1DACCTL          = 0x0910);
PROVIDE(CP1DACCTL_L        = 0x0910);
PROVIDE(CP1DACCTL_H        = 0x0911);
PROVIDE(CP1DACDATA         = 0x0912);
PROVIDE(CP1DACDATA_L       = 0x0912);
PROVIDE(CP1DACDATA_H       = 0x0913);


/*****************************************************************************
 eUSCI_A0
*****************************************************************************/
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
PROVIDE(UCA0STATW_L        = 0x050A);
PROVIDE(UCA0STATW_H        = 0x050B);
PROVIDE(UCA0RXBUF          = 0x050C);
PROVIDE(UCA0RXBUF_L        = 0x050C);
PROVIDE(UCA0RXBUF_H        = 0x050D);
PROVIDE(UCA0TXBUF          = 0x050E);
PROVIDE(UCA0TXBUF_L        = 0x050E);
PROVIDE(UCA0TXBUF_H        = 0x050F);
PROVIDE(UCA0ABCTL          = 0x0510);
PROVIDE(UCA0ABCTL_L        = 0x0510);
PROVIDE(UCA0ABCTL_H        = 0x0511);
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
PROVIDE(UCA0IV_L           = 0x051E);
PROVIDE(UCA0IV_H           = 0x051F);


/*****************************************************************************
 eUSCI_A1
*****************************************************************************/
PROVIDE(UCA1CTLW0          = 0x0580);
PROVIDE(UCA1CTLW0_L        = 0x0580);
PROVIDE(UCA1CTLW0_H        = 0x0581);
PROVIDE(UCA1CTLW1          = 0x0582);
PROVIDE(UCA1CTLW1_L        = 0x0582);
PROVIDE(UCA1CTLW1_H        = 0x0583);
PROVIDE(UCA1BRW            = 0x0586);
PROVIDE(UCA1BRW_L          = 0x0586);
PROVIDE(UCA1BRW_H          = 0x0587);
PROVIDE(UCA1MCTLW          = 0x0588);
PROVIDE(UCA1MCTLW_L        = 0x0588);
PROVIDE(UCA1MCTLW_H        = 0x0589);
PROVIDE(UCA1STATW          = 0x058A);
PROVIDE(UCA1STATW_L        = 0x058A);
PROVIDE(UCA1STATW_H        = 0x058B);
PROVIDE(UCA1RXBUF          = 0x058C);
PROVIDE(UCA1RXBUF_L        = 0x058C);
PROVIDE(UCA1RXBUF_H        = 0x058D);
PROVIDE(UCA1TXBUF          = 0x058E);
PROVIDE(UCA1TXBUF_L        = 0x058E);
PROVIDE(UCA1TXBUF_H        = 0x058F);
PROVIDE(UCA1ABCTL          = 0x0590);
PROVIDE(UCA1ABCTL_L        = 0x0590);
PROVIDE(UCA1ABCTL_H        = 0x0591);
PROVIDE(UCA1IRCTL          = 0x0592);
PROVIDE(UCA1IRCTL_L        = 0x0592);
PROVIDE(UCA1IRCTL_H        = 0x0593);
PROVIDE(UCA1IE             = 0x059A);
PROVIDE(UCA1IE_L           = 0x059A);
PROVIDE(UCA1IE_H           = 0x059B);
PROVIDE(UCA1IFG            = 0x059C);
PROVIDE(UCA1IFG_L          = 0x059C);
PROVIDE(UCA1IFG_H          = 0x059D);
PROVIDE(UCA1IV             = 0x059E);
PROVIDE(UCA1IV_L           = 0x059E);
PROVIDE(UCA1IV_H           = 0x059F);


/*****************************************************************************
 eUSCI_B0
*****************************************************************************/
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
PROVIDE(UCB0IV_L           = 0x056E);
PROVIDE(UCB0IV_H           = 0x056F);


/*****************************************************************************
 eUSCI_B1
*****************************************************************************/
PROVIDE(UCB1CTLW0          = 0x05C0);
PROVIDE(UCB1CTLW0_L        = 0x05C0);
PROVIDE(UCB1CTLW0_H        = 0x05C1);
PROVIDE(UCB1CTLW1          = 0x05C2);
PROVIDE(UCB1CTLW1_L        = 0x05C2);
PROVIDE(UCB1CTLW1_H        = 0x05C3);
PROVIDE(UCB1BRW            = 0x05C6);
PROVIDE(UCB1BRW_L          = 0x05C6);
PROVIDE(UCB1BRW_H          = 0x05C7);
PROVIDE(UCB1STATW          = 0x05C8);
PROVIDE(UCB1STATW_L        = 0x05C8);
PROVIDE(UCB1STATW_H        = 0x05C9);
PROVIDE(UCB1TBCNT          = 0x05CA);
PROVIDE(UCB1TBCNT_L        = 0x05CA);
PROVIDE(UCB1TBCNT_H        = 0x05CB);
PROVIDE(UCB1RXBUF          = 0x05CC);
PROVIDE(UCB1RXBUF_L        = 0x05CC);
PROVIDE(UCB1RXBUF_H        = 0x05CD);
PROVIDE(UCB1TXBUF          = 0x05CE);
PROVIDE(UCB1TXBUF_L        = 0x05CE);
PROVIDE(UCB1TXBUF_H        = 0x05CF);
PROVIDE(UCB1I2COA0         = 0x05D4);
PROVIDE(UCB1I2COA0_L       = 0x05D4);
PROVIDE(UCB1I2COA0_H       = 0x05D5);
PROVIDE(UCB1I2COA1         = 0x05D6);
PROVIDE(UCB1I2COA1_L       = 0x05D6);
PROVIDE(UCB1I2COA1_H       = 0x05D7);
PROVIDE(UCB1I2COA2         = 0x05D8);
PROVIDE(UCB1I2COA2_L       = 0x05D8);
PROVIDE(UCB1I2COA2_H       = 0x05D9);
PROVIDE(UCB1I2COA3         = 0x05DA);
PROVIDE(UCB1I2COA3_L       = 0x05DA);
PROVIDE(UCB1I2COA3_H       = 0x05DB);
PROVIDE(UCB1ADDRX          = 0x05DC);
PROVIDE(UCB1ADDRX_L        = 0x05DC);
PROVIDE(UCB1ADDRX_H        = 0x05DD);
PROVIDE(UCB1ADDMASK        = 0x05DE);
PROVIDE(UCB1ADDMASK_L      = 0x05DE);
PROVIDE(UCB1ADDMASK_H      = 0x05DF);
PROVIDE(UCB1I2CSA          = 0x05E0);
PROVIDE(UCB1I2CSA_L        = 0x05E0);
PROVIDE(UCB1I2CSA_H        = 0x05E1);
PROVIDE(UCB1IE             = 0x05EA);
PROVIDE(UCB1IE_L           = 0x05EA);
PROVIDE(UCB1IE_H           = 0x05EB);
PROVIDE(UCB1IFG            = 0x05EC);
PROVIDE(UCB1IFG_L          = 0x05EC);
PROVIDE(UCB1IFG_H          = 0x05ED);
PROVIDE(UCB1IV             = 0x05EE);
PROVIDE(UCB1IV_L           = 0x05EE);
PROVIDE(UCB1IV_H           = 0x05EF);

/************************************************************
* End of Modules
************************************************************/

