/* ============================================================================ */
/* Copyright (c) 2020, Texas Instruments Incorporated                           */
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

/* This file supports MSP430FR2675 devices. */

/* 1.210 */

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
 CAPTIVATE
*****************************************************************************/
PROVIDE(CAPIE              = 0x0B20);
PROVIDE(CAPIE_L            = 0x0B20);
PROVIDE(CAPIE_H            = 0x0B21);
PROVIDE(CAPIFG             = 0x0B22);
PROVIDE(CAPIFG_L           = 0x0B22);
PROVIDE(CAPIFG_H           = 0x0B23);
PROVIDE(CAPIV              = 0x0B24);
PROVIDE(CAPIV_L            = 0x0B24);
PROVIDE(CAPIV_H            = 0x0B25);


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
PROVIDE(PDSEL1             = 0x026C);
PROVIDE(PDSEL1_L           = 0x026C);
PROVIDE(PDSEL1_H           = 0x026D);
PROVIDE(PDSELC             = 0x0276);
PROVIDE(PDSELC_L           = 0x0276);
PROVIDE(PDSELC_H           = 0x0277);
PROVIDE(PDIES              = 0x0278);
PROVIDE(PDIES_L            = 0x0278);
PROVIDE(PDIES_H            = 0x0279);
PROVIDE(PDIE               = 0x027A);
PROVIDE(PDIE_L             = 0x027A);
PROVIDE(PDIE_H             = 0x027B);
PROVIDE(PDIFG              = 0x027C);
PROVIDE(PDIFG_L            = 0x027C);
PROVIDE(PDIFG_H            = 0x027D);
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
PROVIDE(PESEL0             = 0x028A);
PROVIDE(PESEL0_L           = 0x028A);
PROVIDE(PESEL0_H           = 0x028B);
PROVIDE(PESEL1             = 0x028C);
PROVIDE(PESEL1_L           = 0x028C);
PROVIDE(PESEL1_H           = 0x028D);
PROVIDE(PESELC             = 0x0296);
PROVIDE(PESELC_L           = 0x0296);
PROVIDE(PESELC_H           = 0x0297);
PROVIDE(PEIES              = 0x0298);
PROVIDE(PEIES_L            = 0x0298);
PROVIDE(PEIES_H            = 0x0299);
PROVIDE(PEIE               = 0x029A);
PROVIDE(PEIE_L             = 0x029A);
PROVIDE(PEIE_H             = 0x029B);
PROVIDE(PEIFG              = 0x029C);
PROVIDE(PEIFG_L            = 0x029C);
PROVIDE(PEIFG_H            = 0x029D);
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

PROVIDE(P7IN               = 0x0260);

PROVIDE(P8IN               = 0x0261);

PROVIDE(P7OUT              = 0x0262);

PROVIDE(P8OUT              = 0x0263);

PROVIDE(P7DIR              = 0x0264);

PROVIDE(P8DIR              = 0x0265);

PROVIDE(P7REN              = 0x0266);

PROVIDE(P8REN              = 0x0267);

PROVIDE(P7SEL0             = 0x026A);

PROVIDE(P8SEL0             = 0x026B);

PROVIDE(P7SEL1             = 0x026C);

PROVIDE(P8SEL1             = 0x026D);

PROVIDE(P7SELC             = 0x0276);

PROVIDE(P8SELC             = 0x0277);

PROVIDE(P7IES              = 0x0278);

PROVIDE(P8IES              = 0x0279);

PROVIDE(P7IE               = 0x027A);

PROVIDE(P8IE               = 0x027B);

PROVIDE(P7IFG              = 0x027C);

PROVIDE(P8IFG              = 0x027D);

PROVIDE(P9IN               = 0x0280);

PROVIDE(P10IN              = 0x0281);

PROVIDE(P9OUT              = 0x0282);

PROVIDE(P10OUT             = 0x0283);

PROVIDE(P9DIR              = 0x0284);

PROVIDE(P10DIR             = 0x0285);

PROVIDE(P9REN              = 0x0286);

PROVIDE(P10REN             = 0x0287);

PROVIDE(P9SEL0             = 0x028A);

PROVIDE(P10SEL0            = 0x028B);

PROVIDE(P9SEL1             = 0x028C);

PROVIDE(P10SEL1            = 0x028D);

PROVIDE(P9SELC             = 0x0296);

PROVIDE(P10SELC            = 0x0297);

PROVIDE(P9IES              = 0x0298);

PROVIDE(P10IES             = 0x0299);

PROVIDE(P9IE               = 0x029A);

PROVIDE(P10IE              = 0x029B);

PROVIDE(P10IFG             = 0x029D);

PROVIDE(P9IFG              = 0x029C);



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
PROVIDE(PMMCTL1            = 0x0122);
PROVIDE(PMMCTL1_L          = 0x0122);
PROVIDE(PMMCTL1_H          = 0x0123);
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
PROVIDE(SYSCFG3            = 0x0166);
PROVIDE(SYSCFG3_L          = 0x0166);
PROVIDE(SYSCFG3_H          = 0x0167);


/*****************************************************************************
 TA0
*****************************************************************************/
PROVIDE(TA0CTL             = 0x0380);
PROVIDE(TA0CTL_L           = 0x0380);
PROVIDE(TA0CTL_H           = 0x0381);
PROVIDE(TA0CCTL0           = 0x0382);
PROVIDE(TA0CCTL0_L         = 0x0382);
PROVIDE(TA0CCTL0_H         = 0x0383);
PROVIDE(TA0CCTL1           = 0x0384);
PROVIDE(TA0CCTL1_L         = 0x0384);
PROVIDE(TA0CCTL1_H         = 0x0385);
PROVIDE(TA0CCTL2           = 0x0386);
PROVIDE(TA0CCTL2_L         = 0x0386);
PROVIDE(TA0CCTL2_H         = 0x0387);
PROVIDE(TA0R               = 0x0390);
PROVIDE(TA0R_L             = 0x0390);
PROVIDE(TA0R_H             = 0x0391);
PROVIDE(TA0CCR0            = 0x0392);
PROVIDE(TA0CCR0_L          = 0x0392);
PROVIDE(TA0CCR0_H          = 0x0393);
PROVIDE(TA0CCR1            = 0x0394);
PROVIDE(TA0CCR1_L          = 0x0394);
PROVIDE(TA0CCR1_H          = 0x0395);
PROVIDE(TA0CCR2            = 0x0396);
PROVIDE(TA0CCR2_L          = 0x0396);
PROVIDE(TA0CCR2_H          = 0x0397);
PROVIDE(TA0EX0             = 0x03A0);
PROVIDE(TA0EX0_L           = 0x03A0);
PROVIDE(TA0EX0_H           = 0x03A1);
PROVIDE(TA0IV              = 0x03AE);
PROVIDE(TA0IV_L            = 0x03AE);
PROVIDE(TA0IV_H            = 0x03AF);


/*****************************************************************************
 TA1
*****************************************************************************/
PROVIDE(TA1CTL             = 0x03C0);
PROVIDE(TA1CTL_L           = 0x03C0);
PROVIDE(TA1CTL_H           = 0x03C1);
PROVIDE(TA1CCTL0           = 0x03C2);
PROVIDE(TA1CCTL0_L         = 0x03C2);
PROVIDE(TA1CCTL0_H         = 0x03C3);
PROVIDE(TA1CCTL1           = 0x03C4);
PROVIDE(TA1CCTL1_L         = 0x03C4);
PROVIDE(TA1CCTL1_H         = 0x03C5);
PROVIDE(TA1CCTL2           = 0x03C6);
PROVIDE(TA1CCTL2_L         = 0x03C6);
PROVIDE(TA1CCTL2_H         = 0x03C7);
PROVIDE(TA1R               = 0x03D0);
PROVIDE(TA1R_L             = 0x03D0);
PROVIDE(TA1R_H             = 0x03D1);
PROVIDE(TA1CCR0            = 0x03D2);
PROVIDE(TA1CCR0_L          = 0x03D2);
PROVIDE(TA1CCR0_H          = 0x03D3);
PROVIDE(TA1CCR1            = 0x03D4);
PROVIDE(TA1CCR1_L          = 0x03D4);
PROVIDE(TA1CCR1_H          = 0x03D5);
PROVIDE(TA1CCR2            = 0x03D6);
PROVIDE(TA1CCR2_L          = 0x03D6);
PROVIDE(TA1CCR2_H          = 0x03D7);
PROVIDE(TA1EX0             = 0x03E0);
PROVIDE(TA1EX0_L           = 0x03E0);
PROVIDE(TA1EX0_H           = 0x03E1);
PROVIDE(TA1IV              = 0x03EE);
PROVIDE(TA1IV_L            = 0x03EE);
PROVIDE(TA1IV_H            = 0x03EF);


/*****************************************************************************
 TA2
*****************************************************************************/
PROVIDE(TA2CTL             = 0x0400);
PROVIDE(TA2CTL_L           = 0x0400);
PROVIDE(TA2CTL_H           = 0x0401);
PROVIDE(TA2CCTL0           = 0x0402);
PROVIDE(TA2CCTL0_L         = 0x0402);
PROVIDE(TA2CCTL0_H         = 0x0403);
PROVIDE(TA2CCTL1           = 0x0404);
PROVIDE(TA2CCTL1_L         = 0x0404);
PROVIDE(TA2CCTL1_H         = 0x0405);
PROVIDE(TA2CCTL2           = 0x0406);
PROVIDE(TA2CCTL2_L         = 0x0406);
PROVIDE(TA2CCTL2_H         = 0x0407);
PROVIDE(TA2R               = 0x0410);
PROVIDE(TA2R_L             = 0x0410);
PROVIDE(TA2R_H             = 0x0411);
PROVIDE(TA2CCR0            = 0x0412);
PROVIDE(TA2CCR0_L          = 0x0412);
PROVIDE(TA2CCR0_H          = 0x0413);
PROVIDE(TA2CCR1            = 0x0414);
PROVIDE(TA2CCR1_L          = 0x0414);
PROVIDE(TA2CCR1_H          = 0x0415);
PROVIDE(TA2CCR2            = 0x0416);
PROVIDE(TA2CCR2_L          = 0x0416);
PROVIDE(TA2CCR2_H          = 0x0417);
PROVIDE(TA2EX0             = 0x0420);
PROVIDE(TA2EX0_L           = 0x0420);
PROVIDE(TA2EX0_H           = 0x0421);
PROVIDE(TA2IV              = 0x042E);
PROVIDE(TA2IV_L            = 0x042E);
PROVIDE(TA2IV_H            = 0x042F);


/*****************************************************************************
 TA3
*****************************************************************************/
PROVIDE(TA3CTL             = 0x0440);
PROVIDE(TA3CTL_L           = 0x0440);
PROVIDE(TA3CTL_H           = 0x0441);
PROVIDE(TA3CCTL0           = 0x0442);
PROVIDE(TA3CCTL0_L         = 0x0442);
PROVIDE(TA3CCTL0_H         = 0x0443);
PROVIDE(TA3CCTL1           = 0x0444);
PROVIDE(TA3CCTL1_L         = 0x0444);
PROVIDE(TA3CCTL1_H         = 0x0445);
PROVIDE(TA3CCTL2           = 0x0446);
PROVIDE(TA3CCTL2_L         = 0x0446);
PROVIDE(TA3CCTL2_H         = 0x0447);
PROVIDE(TA3R               = 0x0450);
PROVIDE(TA3R_L             = 0x0450);
PROVIDE(TA3R_H             = 0x0451);
PROVIDE(TA3CCR0            = 0x0452);
PROVIDE(TA3CCR0_L          = 0x0452);
PROVIDE(TA3CCR0_H          = 0x0453);
PROVIDE(TA3CCR1            = 0x0454);
PROVIDE(TA3CCR1_L          = 0x0454);
PROVIDE(TA3CCR1_H          = 0x0455);
PROVIDE(TA3CCR2            = 0x0456);
PROVIDE(TA3CCR2_L          = 0x0456);
PROVIDE(TA3CCR2_H          = 0x0457);
PROVIDE(TA3EX0             = 0x0460);
PROVIDE(TA3EX0_L           = 0x0460);
PROVIDE(TA3EX0_H           = 0x0461);
PROVIDE(TA3IV              = 0x046E);
PROVIDE(TA3IV_L            = 0x046E);
PROVIDE(TA3IV_H            = 0x046F);


/*****************************************************************************
 TB0
*****************************************************************************/
PROVIDE(TB0CTL             = 0x0480);
PROVIDE(TB0CTL_L           = 0x0480);
PROVIDE(TB0CTL_H           = 0x0481);
PROVIDE(TB0CCTL0           = 0x0482);
PROVIDE(TB0CCTL0_L         = 0x0482);
PROVIDE(TB0CCTL0_H         = 0x0483);
PROVIDE(TB0CCTL1           = 0x0484);
PROVIDE(TB0CCTL1_L         = 0x0484);
PROVIDE(TB0CCTL1_H         = 0x0485);
PROVIDE(TB0CCTL2           = 0x0486);
PROVIDE(TB0CCTL2_L         = 0x0486);
PROVIDE(TB0CCTL2_H         = 0x0487);
PROVIDE(TB0CCTL3           = 0x0488);
PROVIDE(TB0CCTL3_L         = 0x0488);
PROVIDE(TB0CCTL3_H         = 0x0489);
PROVIDE(TB0CCTL4           = 0x048A);
PROVIDE(TB0CCTL4_L         = 0x048A);
PROVIDE(TB0CCTL4_H         = 0x048B);
PROVIDE(TB0CCTL5           = 0x048C);
PROVIDE(TB0CCTL5_L         = 0x048C);
PROVIDE(TB0CCTL5_H         = 0x048D);
PROVIDE(TB0CCTL6           = 0x048E);
PROVIDE(TB0CCTL6_L         = 0x048E);
PROVIDE(TB0CCTL6_H         = 0x048F);
PROVIDE(TB0R               = 0x0490);
PROVIDE(TB0R_L             = 0x0490);
PROVIDE(TB0R_H             = 0x0491);
PROVIDE(TB0CCR0            = 0x0492);
PROVIDE(TB0CCR0_L          = 0x0492);
PROVIDE(TB0CCR0_H          = 0x0493);
PROVIDE(TB0CCR1            = 0x0494);
PROVIDE(TB0CCR1_L          = 0x0494);
PROVIDE(TB0CCR1_H          = 0x0495);
PROVIDE(TB0CCR2            = 0x0496);
PROVIDE(TB0CCR2_L          = 0x0496);
PROVIDE(TB0CCR2_H          = 0x0497);
PROVIDE(TB0CCR3            = 0x0498);
PROVIDE(TB0CCR3_L          = 0x0498);
PROVIDE(TB0CCR3_H          = 0x0499);
PROVIDE(TB0CCR4            = 0x049A);
PROVIDE(TB0CCR4_L          = 0x049A);
PROVIDE(TB0CCR4_H          = 0x049B);
PROVIDE(TB0CCR5            = 0x049C);
PROVIDE(TB0CCR5_L          = 0x049C);
PROVIDE(TB0CCR5_H          = 0x049D);
PROVIDE(TB0CCR6            = 0x049E);
PROVIDE(TB0CCR6_L          = 0x049E);
PROVIDE(TB0CCR6_H          = 0x049F);
PROVIDE(TB0EX0             = 0x04A0);
PROVIDE(TB0EX0_L           = 0x04A0);
PROVIDE(TB0EX0_H           = 0x04A1);
PROVIDE(TB0IV              = 0x04AE);
PROVIDE(TB0IV_L            = 0x04AE);
PROVIDE(TB0IV_H            = 0x04AF);


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
PROVIDE(UCA1CTLW0          = 0x0520);
PROVIDE(UCA1CTLW0_L        = 0x0520);
PROVIDE(UCA1CTLW0_H        = 0x0521);
PROVIDE(UCA1CTLW1          = 0x0522);
PROVIDE(UCA1CTLW1_L        = 0x0522);
PROVIDE(UCA1CTLW1_H        = 0x0523);
PROVIDE(UCA1BRW            = 0x0526);
PROVIDE(UCA1BRW_L          = 0x0526);
PROVIDE(UCA1BRW_H          = 0x0527);
PROVIDE(UCA1MCTLW          = 0x0528);
PROVIDE(UCA1MCTLW_L        = 0x0528);
PROVIDE(UCA1MCTLW_H        = 0x0529);
PROVIDE(UCA1STATW          = 0x052A);
PROVIDE(UCA1STATW_L        = 0x052A);
PROVIDE(UCA1STATW_H        = 0x052B);
PROVIDE(UCA1RXBUF          = 0x052C);
PROVIDE(UCA1RXBUF_L        = 0x052C);
PROVIDE(UCA1RXBUF_H        = 0x052D);
PROVIDE(UCA1TXBUF          = 0x052E);
PROVIDE(UCA1TXBUF_L        = 0x052E);
PROVIDE(UCA1TXBUF_H        = 0x052F);
PROVIDE(UCA1ABCTL          = 0x0530);
PROVIDE(UCA1ABCTL_L        = 0x0530);
PROVIDE(UCA1ABCTL_H        = 0x0531);
PROVIDE(UCA1IRCTL          = 0x0532);
PROVIDE(UCA1IRCTL_L        = 0x0532);
PROVIDE(UCA1IRCTL_H        = 0x0533);
PROVIDE(UCA1IE             = 0x053A);
PROVIDE(UCA1IE_L           = 0x053A);
PROVIDE(UCA1IE_H           = 0x053B);
PROVIDE(UCA1IFG            = 0x053C);
PROVIDE(UCA1IFG_L          = 0x053C);
PROVIDE(UCA1IFG_H          = 0x053D);
PROVIDE(UCA1IV             = 0x053E);
PROVIDE(UCA1IV_L           = 0x053E);
PROVIDE(UCA1IV_H           = 0x053F);


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
PROVIDE(UCB1CTLW0          = 0x0580);
PROVIDE(UCB1CTLW0_L        = 0x0580);
PROVIDE(UCB1CTLW0_H        = 0x0581);
PROVIDE(UCB1CTLW1          = 0x0582);
PROVIDE(UCB1CTLW1_L        = 0x0582);
PROVIDE(UCB1CTLW1_H        = 0x0583);
PROVIDE(UCB1BRW            = 0x0586);
PROVIDE(UCB1BRW_L          = 0x0586);
PROVIDE(UCB1BRW_H          = 0x0587);
PROVIDE(UCB1STATW          = 0x0588);
PROVIDE(UCB1STATW_L        = 0x0588);
PROVIDE(UCB1STATW_H        = 0x0589);
PROVIDE(UCB1TBCNT          = 0x058A);
PROVIDE(UCB1TBCNT_L        = 0x058A);
PROVIDE(UCB1TBCNT_H        = 0x058B);
PROVIDE(UCB1RXBUF          = 0x058C);
PROVIDE(UCB1RXBUF_L        = 0x058C);
PROVIDE(UCB1RXBUF_H        = 0x058D);
PROVIDE(UCB1TXBUF          = 0x058E);
PROVIDE(UCB1TXBUF_L        = 0x058E);
PROVIDE(UCB1TXBUF_H        = 0x058F);
PROVIDE(UCB1I2COA0         = 0x0594);
PROVIDE(UCB1I2COA0_L       = 0x0594);
PROVIDE(UCB1I2COA0_H       = 0x0595);
PROVIDE(UCB1I2COA1         = 0x0596);
PROVIDE(UCB1I2COA1_L       = 0x0596);
PROVIDE(UCB1I2COA1_H       = 0x0597);
PROVIDE(UCB1I2COA2         = 0x0598);
PROVIDE(UCB1I2COA2_L       = 0x0598);
PROVIDE(UCB1I2COA2_H       = 0x0599);
PROVIDE(UCB1I2COA3         = 0x059A);
PROVIDE(UCB1I2COA3_L       = 0x059A);
PROVIDE(UCB1I2COA3_H       = 0x059B);
PROVIDE(UCB1ADDRX          = 0x059C);
PROVIDE(UCB1ADDRX_L        = 0x059C);
PROVIDE(UCB1ADDRX_H        = 0x059D);
PROVIDE(UCB1ADDMASK        = 0x059E);
PROVIDE(UCB1ADDMASK_L      = 0x059E);
PROVIDE(UCB1ADDMASK_H      = 0x059F);
PROVIDE(UCB1I2CSA          = 0x05A0);
PROVIDE(UCB1I2CSA_L        = 0x05A0);
PROVIDE(UCB1I2CSA_H        = 0x05A1);
PROVIDE(UCB1IE             = 0x05AA);
PROVIDE(UCB1IE_L           = 0x05AA);
PROVIDE(UCB1IE_H           = 0x05AB);
PROVIDE(UCB1IFG            = 0x05AC);
PROVIDE(UCB1IFG_L          = 0x05AC);
PROVIDE(UCB1IFG_H          = 0x05AD);
PROVIDE(UCB1IV             = 0x05AE);
PROVIDE(UCB1IV_L           = 0x05AE);
PROVIDE(UCB1IV_H           = 0x05AF);

/************************************************************
* End of Modules
************************************************************/

