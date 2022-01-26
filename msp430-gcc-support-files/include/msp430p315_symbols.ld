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

/* This file supports MSP430P315 devices. */
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
* DIGITAL I/O PORT0
************************************************************/
PROVIDE(P0IN               = 0x0010);
PROVIDE(P0OUT              = 0x0011);
PROVIDE(P0DIR              = 0x0012);
PROVIDE(P0IFG              = 0x0013);
PROVIDE(P0IES              = 0x0014);
PROVIDE(P0IE               = 0x0015);
/************************************************************
* LCD REGISTER
************************************************************/
PROVIDE(LCDCTL             = 0x0030);
PROVIDE(LCDM1              = 0x0031);
PROVIDE(LCDM2              = 0x0032);
PROVIDE(LCDM3              = 0x0033);
PROVIDE(LCDM4              = 0x0034);
PROVIDE(LCDM5              = 0x0035);
PROVIDE(LCDM6              = 0x0036);
PROVIDE(LCDM7              = 0x0037);
PROVIDE(LCDM8              = 0x0038);
PROVIDE(LCDM9              = 0x0039);
PROVIDE(LCDM10             = 0x003A);
PROVIDE(LCDM11             = 0x003B);
PROVIDE(LCDM12             = 0x003C);
PROVIDE(LCDM13             = 0x003D);
PROVIDE(LCDM14             = 0x003E);
PROVIDE(LCDM15             = 0x003F);
/************************************************************
* BASIC TIMER
************************************************************/
PROVIDE(BTCTL              = 0x0040);
PROVIDE(BTCNT1             = 0x0046);
PROVIDE(BTCNT2             = 0x0047);
/************************************************************
* SYSTEM CLOCK GENERATOR
************************************************************/
PROVIDE(SCFI0              = 0x0050);
PROVIDE(SCFI1              = 0x0051);
PROVIDE(SCFQCTL            = 0x0052);
PROVIDE(CBCTL              = 0x0053);
/************************************************************
* 8BIT TIMER/COUNTER
************************************************************/
PROVIDE(TCCTL              = 0x0042);
PROVIDE(TCPLD              = 0x0043);
PROVIDE(TCDAT              = 0x0044);
/************************************************************
* TIMER/PORT
************************************************************/
PROVIDE(TPCTL              = 0x004B);
PROVIDE(TPCNT1             = 0x004C);
PROVIDE(TPCNT2             = 0x004D);
PROVIDE(TPD                = 0x004E);
PROVIDE(TPE                = 0x004F);
/* Source select of clock input coded with Bits 6-7 in TPE
   NOTE: If the control bit B16 in TPD is set, TPSSEL2/3
         are 'don't care' and the clock source of counter
         TPCNT2 is the same as of the counter TPCNT1. */
/************************************************************
* EPROM CONTROL
************************************************************/
PROVIDE(EPCTL              = 0x0054);
/************************************************************
* Interrupt Vectors (offset from 0xFFE0)
************************************************************/
/************************************************************
* End of Modules
************************************************************/
