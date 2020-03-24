// Verilog netlist created by TD v4.6.14756
// Tue Mar 24 14:09:43 2020

`timescale 1ns / 1ps
module vram  // al_ip/vram.v(14)
  (
  addra,
  addrb,
  cea,
  ceb,
  clka,
  clkb,
  dia,
  dob
  );

  input [16:0] addra;  // al_ip/vram.v(23)
  input [16:0] addrb;  // al_ip/vram.v(24)
  input cea;  // al_ip/vram.v(25)
  input ceb;  // al_ip/vram.v(26)
  input clka;  // al_ip/vram.v(27)
  input clkb;  // al_ip/vram.v(28)
  input [2:0] dia;  // al_ip/vram.v(22)
  output [2:0] dob;  // al_ip/vram.v(19)

  wire [0:3] addrb_piped;
  wire  \inst_dob_mux_b0/B0_0 ;
  wire  \inst_dob_mux_b0/B0_1 ;
  wire  \inst_dob_mux_b0/B0_2 ;
  wire  \inst_dob_mux_b0/B0_3 ;
  wire  \inst_dob_mux_b0/B0_4 ;
  wire  \inst_dob_mux_b0/B0_5 ;
  wire  \inst_dob_mux_b0/B0_6 ;
  wire  \inst_dob_mux_b0/B0_7 ;
  wire  \inst_dob_mux_b0/B1_0 ;
  wire  \inst_dob_mux_b0/B1_1 ;
  wire  \inst_dob_mux_b0/B1_2 ;
  wire  \inst_dob_mux_b0/B1_3 ;
  wire  \inst_dob_mux_b0/B2_0 ;
  wire  \inst_dob_mux_b0/B2_1 ;
  wire  \inst_dob_mux_b1/B0_0 ;
  wire  \inst_dob_mux_b1/B0_1 ;
  wire  \inst_dob_mux_b1/B0_2 ;
  wire  \inst_dob_mux_b1/B0_3 ;
  wire  \inst_dob_mux_b1/B0_4 ;
  wire  \inst_dob_mux_b1/B0_5 ;
  wire  \inst_dob_mux_b1/B0_6 ;
  wire  \inst_dob_mux_b1/B0_7 ;
  wire  \inst_dob_mux_b1/B1_0 ;
  wire  \inst_dob_mux_b1/B1_1 ;
  wire  \inst_dob_mux_b1/B1_2 ;
  wire  \inst_dob_mux_b1/B1_3 ;
  wire  \inst_dob_mux_b1/B2_0 ;
  wire  \inst_dob_mux_b1/B2_1 ;
  wire  \inst_dob_mux_b2/B0_0 ;
  wire  \inst_dob_mux_b2/B0_1 ;
  wire  \inst_dob_mux_b2/B0_2 ;
  wire  \inst_dob_mux_b2/B0_3 ;
  wire  \inst_dob_mux_b2/B0_4 ;
  wire  \inst_dob_mux_b2/B0_5 ;
  wire  \inst_dob_mux_b2/B0_6 ;
  wire  \inst_dob_mux_b2/B0_7 ;
  wire  \inst_dob_mux_b2/B1_0 ;
  wire  \inst_dob_mux_b2/B1_1 ;
  wire  \inst_dob_mux_b2/B1_2 ;
  wire  \inst_dob_mux_b2/B1_3 ;
  wire  \inst_dob_mux_b2/B2_0 ;
  wire  \inst_dob_mux_b2/B2_1 ;
  wire \and_Naddra[15]_Naddr_o ;
  wire \and_Naddra[15]_addra_o ;
  wire \and_Naddrb[15]_Naddr_o ;
  wire \and_Naddrb[15]_addrb_o ;
  wire \and_addra[15]_Naddra_o ;
  wire \and_addra[15]_addra[_o ;
  wire \and_addrb[15]_Naddrb_o ;
  wire \and_addrb[15]_addrb[_o ;
  wire inst_dob_i0_000;
  wire inst_dob_i0_001;
  wire inst_dob_i0_002;
  wire inst_dob_i10_000;
  wire inst_dob_i10_001;
  wire inst_dob_i10_002;
  wire inst_dob_i11_000;
  wire inst_dob_i11_001;
  wire inst_dob_i11_002;
  wire inst_dob_i12_000;
  wire inst_dob_i12_001;
  wire inst_dob_i12_002;
  wire inst_dob_i13_000;
  wire inst_dob_i13_001;
  wire inst_dob_i13_002;
  wire inst_dob_i14_000;
  wire inst_dob_i14_001;
  wire inst_dob_i14_002;
  wire inst_dob_i15_000;
  wire inst_dob_i15_001;
  wire inst_dob_i15_002;
  wire inst_dob_i1_000;
  wire inst_dob_i1_001;
  wire inst_dob_i1_002;
  wire inst_dob_i2_000;
  wire inst_dob_i2_001;
  wire inst_dob_i2_002;
  wire inst_dob_i3_000;
  wire inst_dob_i3_001;
  wire inst_dob_i3_002;
  wire inst_dob_i4_000;
  wire inst_dob_i4_001;
  wire inst_dob_i4_002;
  wire inst_dob_i5_000;
  wire inst_dob_i5_001;
  wire inst_dob_i5_002;
  wire inst_dob_i6_000;
  wire inst_dob_i6_001;
  wire inst_dob_i6_002;
  wire inst_dob_i7_000;
  wire inst_dob_i7_001;
  wire inst_dob_i7_002;
  wire inst_dob_i8_000;
  wire inst_dob_i8_001;
  wire inst_dob_i8_002;
  wire inst_dob_i9_000;
  wire inst_dob_i9_001;
  wire inst_dob_i9_002;

  reg_ar_as_w1 addrb_pipe_b0 (
    .clk(clkb),
    .d(addrb[13]),
    .en(ceb),
    .reset(1'b0),
    .set(1'b0),
    .q(addrb_piped[0]));
  reg_ar_as_w1 addrb_pipe_b1 (
    .clk(clkb),
    .d(addrb[14]),
    .en(ceb),
    .reset(1'b0),
    .set(1'b0),
    .q(addrb_piped[1]));
  reg_ar_as_w1 addrb_pipe_b2 (
    .clk(clkb),
    .d(addrb[15]),
    .en(ceb),
    .reset(1'b0),
    .set(1'b0),
    .q(addrb_piped[2]));
  reg_ar_as_w1 addrb_pipe_b3 (
    .clk(clkb),
    .d(addrb[16]),
    .en(ceb),
    .reset(1'b0),
    .set(1'b0),
    .q(addrb_piped[3]));
  and \and_Naddra[15]_Naddr  (\and_Naddra[15]_Naddr_o , ~addra[15], ~addra[16]);
  and \and_Naddra[15]_addra  (\and_Naddra[15]_addra_o , ~addra[15], addra[16]);
  and \and_Naddrb[15]_Naddr  (\and_Naddrb[15]_Naddr_o , ~addrb[15], ~addrb[16]);
  and \and_Naddrb[15]_addrb  (\and_Naddrb[15]_addrb_o , ~addrb[15], addrb[16]);
  and \and_addra[15]_Naddra  (\and_addra[15]_Naddra_o , addra[15], ~addra[16]);
  and \and_addra[15]_addra[  (\and_addra[15]_addra[_o , addra[15], addra[16]);
  and \and_addrb[15]_Naddrb  (\and_addrb[15]_Naddrb_o , addrb[15], ~addrb[16]);
  and \and_addrb[15]_addrb[  (\and_addrb[15]_addrb[_o , addrb[15], addrb[16]);
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  // address_offset=0;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_000000_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n47,open_n48,open_n49,open_n50,open_n51,open_n52,open_n53,dia[0],open_n54}),
    .dob({open_n79,open_n80,open_n81,open_n82,open_n83,open_n84,open_n85,open_n86,inst_dob_i0_000}));
  // address_offset=0;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_000000_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n87,open_n88,open_n89,open_n90,open_n91,open_n92,open_n93,dia[1],open_n94}),
    .dob({open_n119,open_n120,open_n121,open_n122,open_n123,open_n124,open_n125,open_n126,inst_dob_i0_001}));
  // address_offset=0;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_000000_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n127,open_n128,open_n129,open_n130,open_n131,open_n132,open_n133,dia[2],open_n134}),
    .dob({open_n159,open_n160,open_n161,open_n162,open_n163,open_n164,open_n165,open_n166,inst_dob_i0_002}));
  // address_offset=8192;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_008192_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n167,open_n168,open_n169,open_n170,open_n171,open_n172,open_n173,dia[0],open_n174}),
    .dob({open_n199,open_n200,open_n201,open_n202,open_n203,open_n204,open_n205,open_n206,inst_dob_i1_000}));
  // address_offset=8192;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_008192_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n207,open_n208,open_n209,open_n210,open_n211,open_n212,open_n213,dia[1],open_n214}),
    .dob({open_n239,open_n240,open_n241,open_n242,open_n243,open_n244,open_n245,open_n246,inst_dob_i1_001}));
  // address_offset=8192;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_008192_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n247,open_n248,open_n249,open_n250,open_n251,open_n252,open_n253,dia[2],open_n254}),
    .dob({open_n279,open_n280,open_n281,open_n282,open_n283,open_n284,open_n285,open_n286,inst_dob_i1_002}));
  // address_offset=16384;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_016384_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n287,open_n288,open_n289,open_n290,open_n291,open_n292,open_n293,dia[0],open_n294}),
    .dob({open_n319,open_n320,open_n321,open_n322,open_n323,open_n324,open_n325,open_n326,inst_dob_i2_000}));
  // address_offset=16384;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_016384_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n327,open_n328,open_n329,open_n330,open_n331,open_n332,open_n333,dia[1],open_n334}),
    .dob({open_n359,open_n360,open_n361,open_n362,open_n363,open_n364,open_n365,open_n366,inst_dob_i2_001}));
  // address_offset=16384;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_016384_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n367,open_n368,open_n369,open_n370,open_n371,open_n372,open_n373,dia[2],open_n374}),
    .dob({open_n399,open_n400,open_n401,open_n402,open_n403,open_n404,open_n405,open_n406,inst_dob_i2_002}));
  // address_offset=24576;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_024576_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n407,open_n408,open_n409,open_n410,open_n411,open_n412,open_n413,dia[0],open_n414}),
    .dob({open_n439,open_n440,open_n441,open_n442,open_n443,open_n444,open_n445,open_n446,inst_dob_i3_000}));
  // address_offset=24576;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_024576_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n447,open_n448,open_n449,open_n450,open_n451,open_n452,open_n453,dia[1],open_n454}),
    .dob({open_n479,open_n480,open_n481,open_n482,open_n483,open_n484,open_n485,open_n486,inst_dob_i3_001}));
  // address_offset=24576;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_024576_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_Naddr_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_Naddr_o ,addrb[14:13]}),
    .dia({open_n487,open_n488,open_n489,open_n490,open_n491,open_n492,open_n493,dia[2],open_n494}),
    .dob({open_n519,open_n520,open_n521,open_n522,open_n523,open_n524,open_n525,open_n526,inst_dob_i3_002}));
  // address_offset=32768;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_032768_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n527,open_n528,open_n529,open_n530,open_n531,open_n532,open_n533,dia[0],open_n534}),
    .dob({open_n559,open_n560,open_n561,open_n562,open_n563,open_n564,open_n565,open_n566,inst_dob_i4_000}));
  // address_offset=32768;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_032768_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n567,open_n568,open_n569,open_n570,open_n571,open_n572,open_n573,dia[1],open_n574}),
    .dob({open_n599,open_n600,open_n601,open_n602,open_n603,open_n604,open_n605,open_n606,inst_dob_i4_001}));
  // address_offset=32768;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_032768_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n607,open_n608,open_n609,open_n610,open_n611,open_n612,open_n613,dia[2],open_n614}),
    .dob({open_n639,open_n640,open_n641,open_n642,open_n643,open_n644,open_n645,open_n646,inst_dob_i4_002}));
  // address_offset=40960;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_040960_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n647,open_n648,open_n649,open_n650,open_n651,open_n652,open_n653,dia[0],open_n654}),
    .dob({open_n679,open_n680,open_n681,open_n682,open_n683,open_n684,open_n685,open_n686,inst_dob_i5_000}));
  // address_offset=40960;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_040960_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n687,open_n688,open_n689,open_n690,open_n691,open_n692,open_n693,dia[1],open_n694}),
    .dob({open_n719,open_n720,open_n721,open_n722,open_n723,open_n724,open_n725,open_n726,inst_dob_i5_001}));
  // address_offset=40960;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_040960_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n727,open_n728,open_n729,open_n730,open_n731,open_n732,open_n733,dia[2],open_n734}),
    .dob({open_n759,open_n760,open_n761,open_n762,open_n763,open_n764,open_n765,open_n766,inst_dob_i5_002}));
  // address_offset=49152;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_049152_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n767,open_n768,open_n769,open_n770,open_n771,open_n772,open_n773,dia[0],open_n774}),
    .dob({open_n799,open_n800,open_n801,open_n802,open_n803,open_n804,open_n805,open_n806,inst_dob_i6_000}));
  // address_offset=49152;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_049152_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n807,open_n808,open_n809,open_n810,open_n811,open_n812,open_n813,dia[1],open_n814}),
    .dob({open_n839,open_n840,open_n841,open_n842,open_n843,open_n844,open_n845,open_n846,inst_dob_i6_001}));
  // address_offset=49152;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_049152_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n847,open_n848,open_n849,open_n850,open_n851,open_n852,open_n853,dia[2],open_n854}),
    .dob({open_n879,open_n880,open_n881,open_n882,open_n883,open_n884,open_n885,open_n886,inst_dob_i6_002}));
  // address_offset=57344;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_057344_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n887,open_n888,open_n889,open_n890,open_n891,open_n892,open_n893,dia[0],open_n894}),
    .dob({open_n919,open_n920,open_n921,open_n922,open_n923,open_n924,open_n925,open_n926,inst_dob_i7_000}));
  // address_offset=57344;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_057344_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n927,open_n928,open_n929,open_n930,open_n931,open_n932,open_n933,dia[1],open_n934}),
    .dob({open_n959,open_n960,open_n961,open_n962,open_n963,open_n964,open_n965,open_n966,inst_dob_i7_001}));
  // address_offset=57344;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_057344_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_Naddra_o ,addra[14:13]}),
    .csb({\and_addrb[15]_Naddrb_o ,addrb[14:13]}),
    .dia({open_n967,open_n968,open_n969,open_n970,open_n971,open_n972,open_n973,dia[2],open_n974}),
    .dob({open_n999,open_n1000,open_n1001,open_n1002,open_n1003,open_n1004,open_n1005,open_n1006,inst_dob_i7_002}));
  // address_offset=65536;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_065536_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1007,open_n1008,open_n1009,open_n1010,open_n1011,open_n1012,open_n1013,dia[0],open_n1014}),
    .dob({open_n1039,open_n1040,open_n1041,open_n1042,open_n1043,open_n1044,open_n1045,open_n1046,inst_dob_i8_000}));
  // address_offset=65536;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_065536_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1047,open_n1048,open_n1049,open_n1050,open_n1051,open_n1052,open_n1053,dia[1],open_n1054}),
    .dob({open_n1079,open_n1080,open_n1081,open_n1082,open_n1083,open_n1084,open_n1085,open_n1086,inst_dob_i8_001}));
  // address_offset=65536;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_065536_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1087,open_n1088,open_n1089,open_n1090,open_n1091,open_n1092,open_n1093,dia[2],open_n1094}),
    .dob({open_n1119,open_n1120,open_n1121,open_n1122,open_n1123,open_n1124,open_n1125,open_n1126,inst_dob_i8_002}));
  // address_offset=73728;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_073728_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1127,open_n1128,open_n1129,open_n1130,open_n1131,open_n1132,open_n1133,dia[0],open_n1134}),
    .dob({open_n1159,open_n1160,open_n1161,open_n1162,open_n1163,open_n1164,open_n1165,open_n1166,inst_dob_i9_000}));
  // address_offset=73728;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_073728_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1167,open_n1168,open_n1169,open_n1170,open_n1171,open_n1172,open_n1173,dia[1],open_n1174}),
    .dob({open_n1199,open_n1200,open_n1201,open_n1202,open_n1203,open_n1204,open_n1205,open_n1206,inst_dob_i9_001}));
  // address_offset=73728;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_073728_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1207,open_n1208,open_n1209,open_n1210,open_n1211,open_n1212,open_n1213,dia[2],open_n1214}),
    .dob({open_n1239,open_n1240,open_n1241,open_n1242,open_n1243,open_n1244,open_n1245,open_n1246,inst_dob_i9_002}));
  // address_offset=81920;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_081920_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1247,open_n1248,open_n1249,open_n1250,open_n1251,open_n1252,open_n1253,dia[0],open_n1254}),
    .dob({open_n1279,open_n1280,open_n1281,open_n1282,open_n1283,open_n1284,open_n1285,open_n1286,inst_dob_i10_000}));
  // address_offset=81920;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_081920_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1287,open_n1288,open_n1289,open_n1290,open_n1291,open_n1292,open_n1293,dia[1],open_n1294}),
    .dob({open_n1319,open_n1320,open_n1321,open_n1322,open_n1323,open_n1324,open_n1325,open_n1326,inst_dob_i10_001}));
  // address_offset=81920;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_081920_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1327,open_n1328,open_n1329,open_n1330,open_n1331,open_n1332,open_n1333,dia[2],open_n1334}),
    .dob({open_n1359,open_n1360,open_n1361,open_n1362,open_n1363,open_n1364,open_n1365,open_n1366,inst_dob_i10_002}));
  // address_offset=90112;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_090112_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1367,open_n1368,open_n1369,open_n1370,open_n1371,open_n1372,open_n1373,dia[0],open_n1374}),
    .dob({open_n1399,open_n1400,open_n1401,open_n1402,open_n1403,open_n1404,open_n1405,open_n1406,inst_dob_i11_000}));
  // address_offset=90112;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_090112_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1407,open_n1408,open_n1409,open_n1410,open_n1411,open_n1412,open_n1413,dia[1],open_n1414}),
    .dob({open_n1439,open_n1440,open_n1441,open_n1442,open_n1443,open_n1444,open_n1445,open_n1446,inst_dob_i11_001}));
  // address_offset=90112;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_090112_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_Naddra[15]_addra_o ,addra[14:13]}),
    .csb({\and_Naddrb[15]_addrb_o ,addrb[14:13]}),
    .dia({open_n1447,open_n1448,open_n1449,open_n1450,open_n1451,open_n1452,open_n1453,dia[2],open_n1454}),
    .dob({open_n1479,open_n1480,open_n1481,open_n1482,open_n1483,open_n1484,open_n1485,open_n1486,inst_dob_i11_002}));
  // address_offset=98304;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_098304_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1487,open_n1488,open_n1489,open_n1490,open_n1491,open_n1492,open_n1493,dia[0],open_n1494}),
    .dob({open_n1519,open_n1520,open_n1521,open_n1522,open_n1523,open_n1524,open_n1525,open_n1526,inst_dob_i12_000}));
  // address_offset=98304;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_098304_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1527,open_n1528,open_n1529,open_n1530,open_n1531,open_n1532,open_n1533,dia[1],open_n1534}),
    .dob({open_n1559,open_n1560,open_n1561,open_n1562,open_n1563,open_n1564,open_n1565,open_n1566,inst_dob_i12_001}));
  // address_offset=98304;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_098304_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1567,open_n1568,open_n1569,open_n1570,open_n1571,open_n1572,open_n1573,dia[2],open_n1574}),
    .dob({open_n1599,open_n1600,open_n1601,open_n1602,open_n1603,open_n1604,open_n1605,open_n1606,inst_dob_i12_002}));
  // address_offset=106496;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_106496_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1607,open_n1608,open_n1609,open_n1610,open_n1611,open_n1612,open_n1613,dia[0],open_n1614}),
    .dob({open_n1639,open_n1640,open_n1641,open_n1642,open_n1643,open_n1644,open_n1645,open_n1646,inst_dob_i13_000}));
  // address_offset=106496;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_106496_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1647,open_n1648,open_n1649,open_n1650,open_n1651,open_n1652,open_n1653,dia[1],open_n1654}),
    .dob({open_n1679,open_n1680,open_n1681,open_n1682,open_n1683,open_n1684,open_n1685,open_n1686,inst_dob_i13_001}));
  // address_offset=106496;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("INV"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_106496_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1687,open_n1688,open_n1689,open_n1690,open_n1691,open_n1692,open_n1693,dia[2],open_n1694}),
    .dob({open_n1719,open_n1720,open_n1721,open_n1722,open_n1723,open_n1724,open_n1725,open_n1726,inst_dob_i13_002}));
  // address_offset=114688;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_114688_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1727,open_n1728,open_n1729,open_n1730,open_n1731,open_n1732,open_n1733,dia[0],open_n1734}),
    .dob({open_n1759,open_n1760,open_n1761,open_n1762,open_n1763,open_n1764,open_n1765,open_n1766,inst_dob_i14_000}));
  // address_offset=114688;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_114688_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1767,open_n1768,open_n1769,open_n1770,open_n1771,open_n1772,open_n1773,dia[1],open_n1774}),
    .dob({open_n1799,open_n1800,open_n1801,open_n1802,open_n1803,open_n1804,open_n1805,open_n1806,inst_dob_i14_001}));
  // address_offset=114688;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("INV"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_114688_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1807,open_n1808,open_n1809,open_n1810,open_n1811,open_n1812,open_n1813,dia[2],open_n1814}),
    .dob({open_n1839,open_n1840,open_n1841,open_n1842,open_n1843,open_n1844,open_n1845,open_n1846,inst_dob_i14_002}));
  // address_offset=122880;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_122880_000 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1847,open_n1848,open_n1849,open_n1850,open_n1851,open_n1852,open_n1853,dia[0],open_n1854}),
    .dob({open_n1879,open_n1880,open_n1881,open_n1882,open_n1883,open_n1884,open_n1885,open_n1886,inst_dob_i15_000}));
  // address_offset=122880;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_122880_001 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1887,open_n1888,open_n1889,open_n1890,open_n1891,open_n1892,open_n1893,dia[1],open_n1894}),
    .dob({open_n1919,open_n1920,open_n1921,open_n1922,open_n1923,open_n1924,open_n1925,open_n1926,inst_dob_i15_001}));
  // address_offset=122880;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=3;working_depth=8192;working_width=1;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("SIG"),
    .CSB0("SIG"),
    .CSB1("SIG"),
    .CSB2("SIG"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("DP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEAMUX("1"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_131072x3_sub_122880_002 (
    .addra(addra[12:0]),
    .addrb(addrb[12:0]),
    .cea(cea),
    .ceb(ceb),
    .clka(clka),
    .clkb(clkb),
    .csa({\and_addra[15]_addra[_o ,addra[14:13]}),
    .csb({\and_addrb[15]_addrb[_o ,addrb[14:13]}),
    .dia({open_n1927,open_n1928,open_n1929,open_n1930,open_n1931,open_n1932,open_n1933,dia[2],open_n1934}),
    .dob({open_n1959,open_n1960,open_n1961,open_n1962,open_n1963,open_n1964,open_n1965,open_n1966,inst_dob_i15_002}));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_0  (
    .i0(inst_dob_i0_000),
    .i1(inst_dob_i1_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_0 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_1  (
    .i0(inst_dob_i2_000),
    .i1(inst_dob_i3_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_1 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_2  (
    .i0(inst_dob_i4_000),
    .i1(inst_dob_i5_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_2 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_3  (
    .i0(inst_dob_i6_000),
    .i1(inst_dob_i7_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_3 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_4  (
    .i0(inst_dob_i8_000),
    .i1(inst_dob_i9_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_4 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_5  (
    .i0(inst_dob_i10_000),
    .i1(inst_dob_i11_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_5 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_6  (
    .i0(inst_dob_i12_000),
    .i1(inst_dob_i13_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_6 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_0_7  (
    .i0(inst_dob_i14_000),
    .i1(inst_dob_i15_000),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b0/B0_7 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_1_0  (
    .i0(\inst_dob_mux_b0/B0_0 ),
    .i1(\inst_dob_mux_b0/B0_1 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b0/B1_0 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_1_1  (
    .i0(\inst_dob_mux_b0/B0_2 ),
    .i1(\inst_dob_mux_b0/B0_3 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b0/B1_1 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_1_2  (
    .i0(\inst_dob_mux_b0/B0_4 ),
    .i1(\inst_dob_mux_b0/B0_5 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b0/B1_2 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_1_3  (
    .i0(\inst_dob_mux_b0/B0_6 ),
    .i1(\inst_dob_mux_b0/B0_7 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b0/B1_3 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_2_0  (
    .i0(\inst_dob_mux_b0/B1_0 ),
    .i1(\inst_dob_mux_b0/B1_1 ),
    .sel(addrb_piped[2]),
    .o(\inst_dob_mux_b0/B2_0 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_2_1  (
    .i0(\inst_dob_mux_b0/B1_2 ),
    .i1(\inst_dob_mux_b0/B1_3 ),
    .sel(addrb_piped[2]),
    .o(\inst_dob_mux_b0/B2_1 ));
  AL_MUX \inst_dob_mux_b0/al_mux_b0_3_0  (
    .i0(\inst_dob_mux_b0/B2_0 ),
    .i1(\inst_dob_mux_b0/B2_1 ),
    .sel(addrb_piped[3]),
    .o(dob[0]));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_0  (
    .i0(inst_dob_i0_001),
    .i1(inst_dob_i1_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_0 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_1  (
    .i0(inst_dob_i2_001),
    .i1(inst_dob_i3_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_1 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_2  (
    .i0(inst_dob_i4_001),
    .i1(inst_dob_i5_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_2 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_3  (
    .i0(inst_dob_i6_001),
    .i1(inst_dob_i7_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_3 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_4  (
    .i0(inst_dob_i8_001),
    .i1(inst_dob_i9_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_4 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_5  (
    .i0(inst_dob_i10_001),
    .i1(inst_dob_i11_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_5 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_6  (
    .i0(inst_dob_i12_001),
    .i1(inst_dob_i13_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_6 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_0_7  (
    .i0(inst_dob_i14_001),
    .i1(inst_dob_i15_001),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b1/B0_7 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_1_0  (
    .i0(\inst_dob_mux_b1/B0_0 ),
    .i1(\inst_dob_mux_b1/B0_1 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b1/B1_0 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_1_1  (
    .i0(\inst_dob_mux_b1/B0_2 ),
    .i1(\inst_dob_mux_b1/B0_3 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b1/B1_1 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_1_2  (
    .i0(\inst_dob_mux_b1/B0_4 ),
    .i1(\inst_dob_mux_b1/B0_5 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b1/B1_2 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_1_3  (
    .i0(\inst_dob_mux_b1/B0_6 ),
    .i1(\inst_dob_mux_b1/B0_7 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b1/B1_3 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_2_0  (
    .i0(\inst_dob_mux_b1/B1_0 ),
    .i1(\inst_dob_mux_b1/B1_1 ),
    .sel(addrb_piped[2]),
    .o(\inst_dob_mux_b1/B2_0 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_2_1  (
    .i0(\inst_dob_mux_b1/B1_2 ),
    .i1(\inst_dob_mux_b1/B1_3 ),
    .sel(addrb_piped[2]),
    .o(\inst_dob_mux_b1/B2_1 ));
  AL_MUX \inst_dob_mux_b1/al_mux_b0_3_0  (
    .i0(\inst_dob_mux_b1/B2_0 ),
    .i1(\inst_dob_mux_b1/B2_1 ),
    .sel(addrb_piped[3]),
    .o(dob[1]));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_0  (
    .i0(inst_dob_i0_002),
    .i1(inst_dob_i1_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_0 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_1  (
    .i0(inst_dob_i2_002),
    .i1(inst_dob_i3_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_1 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_2  (
    .i0(inst_dob_i4_002),
    .i1(inst_dob_i5_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_2 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_3  (
    .i0(inst_dob_i6_002),
    .i1(inst_dob_i7_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_3 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_4  (
    .i0(inst_dob_i8_002),
    .i1(inst_dob_i9_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_4 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_5  (
    .i0(inst_dob_i10_002),
    .i1(inst_dob_i11_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_5 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_6  (
    .i0(inst_dob_i12_002),
    .i1(inst_dob_i13_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_6 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_0_7  (
    .i0(inst_dob_i14_002),
    .i1(inst_dob_i15_002),
    .sel(addrb_piped[0]),
    .o(\inst_dob_mux_b2/B0_7 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_1_0  (
    .i0(\inst_dob_mux_b2/B0_0 ),
    .i1(\inst_dob_mux_b2/B0_1 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b2/B1_0 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_1_1  (
    .i0(\inst_dob_mux_b2/B0_2 ),
    .i1(\inst_dob_mux_b2/B0_3 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b2/B1_1 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_1_2  (
    .i0(\inst_dob_mux_b2/B0_4 ),
    .i1(\inst_dob_mux_b2/B0_5 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b2/B1_2 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_1_3  (
    .i0(\inst_dob_mux_b2/B0_6 ),
    .i1(\inst_dob_mux_b2/B0_7 ),
    .sel(addrb_piped[1]),
    .o(\inst_dob_mux_b2/B1_3 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_2_0  (
    .i0(\inst_dob_mux_b2/B1_0 ),
    .i1(\inst_dob_mux_b2/B1_1 ),
    .sel(addrb_piped[2]),
    .o(\inst_dob_mux_b2/B2_0 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_2_1  (
    .i0(\inst_dob_mux_b2/B1_2 ),
    .i1(\inst_dob_mux_b2/B1_3 ),
    .sel(addrb_piped[2]),
    .o(\inst_dob_mux_b2/B2_1 ));
  AL_MUX \inst_dob_mux_b2/al_mux_b0_3_0  (
    .i0(\inst_dob_mux_b2/B2_0 ),
    .i1(\inst_dob_mux_b2/B2_1 ),
    .sel(addrb_piped[3]),
    .o(dob[2]));

endmodule 

module reg_ar_as_w1
  (
  clk,
  d,
  en,
  reset,
  set,
  q
  );

  input clk;
  input d;
  input en;
  input reset;
  input set;
  output q;

  parameter REGSET = "RESET";
  wire enout;

  AL_MUX u_en0 (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_DFF #(
    .INI((REGSET == "SET") ? 1'b1 : 1'b0))
    u_seq0 (
    .clk(clk),
    .d(enout),
    .reset(reset),
    .set(set),
    .q(q));

endmodule 

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  tri0 gsrn = glbl.gsrn;

  always @(gsrn)
  begin
    if(!gsrn)
      assign q = INI;
    else
      deassign q;
  end

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

