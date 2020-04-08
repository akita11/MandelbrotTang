/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/Users/akita/Documents/GitHub/MandelbrotTang/al_ip/pll_main.v
 ** Date	:	2020 04 05
 ** TD version	:	4.6.14756
\************************************************************/

///////////////////////////////////////////////////////////////////////////////
//	Input frequency:             24.000Mhz
//	Clock multiplication factor: 75
//	Clock division factor:       2
//	Clock information:
//		Clock name	| Frequency 	| Phase shift
//		C0        	| 100.000000MHZ	| 0  DEG     
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 100 fs

module pll_main(refclk,
		reset,
		extlock,
		clk0_out);

	input refclk;
	input reset;
	output extlock;
	output clk0_out;


	EG_PHY_PLL #(.DPHASE_SOURCE("DISABLE"),
		.DYNCFG("DISABLE"),
		.FIN("24.000"),
		.FEEDBK_MODE("NOCOMP"),
		.FEEDBK_PATH("VCO_PHASE_0"),
		.STDBY_ENABLE("DISABLE"),
		.PLLRST_ENA("ENABLE"),
		.SYNC_ENABLE("DISABLE"),
		.DERIVE_PLL_CLOCKS("DISABLE"),
		.GEN_BASIC_CLOCK("DISABLE"),
		.GMC_GAIN(0),
		.ICP_CURRENT(9),
		.KVCO(2),
		.LPF_CAPACITOR(2),
		.LPF_RESISTOR(8),
		.REFCLK_DIV(2),
		.FBCLK_DIV(75),
		.CLKC0_ENABLE("ENABLE"),
		.CLKC0_DIV(9),
		.CLKC0_CPHASE(8),
		.CLKC0_FPHASE(0)	)
	pll_inst (.refclk(refclk),
		.reset(reset),
		.stdby(1'b0),
		.extlock(extlock),
		.psclk(1'b0),
		.psdown(1'b0),
		.psstep(1'b0),
		.psclksel(3'b000),
		.psdone(open),
		.dclk(1'b0),
		.dcs(1'b0),
		.dwe(1'b0),
		.di(8'b00000000),
		.daddr(6'b000000),
		.do({open, open, open, open, open, open, open, open}),
		.fbclk(1'b0),
		.clkc({open, open, open, open, clk0_out}));

endmodule
