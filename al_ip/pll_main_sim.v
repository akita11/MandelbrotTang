// Verilog netlist created by TD v4.6.14756
// Sun Apr  5 11:10:14 2020

`timescale 1ns / 1ps
module pll_main  // al_ip/pll_main.v(22)
  (
  refclk,
  reset,
  clk0_out,
  extlock
  );

  input refclk;  // al_ip/pll_main.v(27)
  input reset;  // al_ip/pll_main.v(28)
  output clk0_out;  // al_ip/pll_main.v(30)
  output extlock;  // al_ip/pll_main.v(29)


  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  EG_PHY_PLL #(
    .CLKC0_CPHASE(11),
    .CLKC0_DIV(12),
    .CLKC0_DIV2_ENABLE("DISABLE"),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_FPHASE(0),
    .CLKC1_CPHASE(1),
    .CLKC1_DIV(1),
    .CLKC1_DIV2_ENABLE("DISABLE"),
    .CLKC1_ENABLE("DISABLE"),
    .CLKC1_FPHASE(0),
    .CLKC2_CPHASE(1),
    .CLKC2_DIV(1),
    .CLKC2_DIV2_ENABLE("DISABLE"),
    .CLKC2_ENABLE("DISABLE"),
    .CLKC2_FPHASE(0),
    .CLKC3_CPHASE(1),
    .CLKC3_DIV(1),
    .CLKC3_DIV2_ENABLE("DISABLE"),
    .CLKC3_ENABLE("DISABLE"),
    .CLKC3_FPHASE(0),
    .CLKC4_CPHASE(1),
    .CLKC4_DIV(1),
    .CLKC4_DIV2_ENABLE("DISABLE"),
    .CLKC4_ENABLE("DISABLE"),
    .CLKC4_FPHASE(0),
    .DERIVE_PLL_CLOCKS("DISABLE"),
    .DPHASE_SOURCE("DISABLE"),
    .DYNCFG("DISABLE"),
    .FBCLK_DIV(35),
    .FEEDBK_MODE("NOCOMP"),
    .FEEDBK_PATH("VCO_PHASE_0"),
    .FIN("24.000"),
    .FREQ_LOCK_ACCURACY(2),
    .GEN_BASIC_CLOCK("DISABLE"),
    .GMC_GAIN(2),
    .GMC_TEST(14),
    .ICP_CURRENT(9),
    .IF_ESCLKSTSW("DISABLE"),
    .INTFB_WAKE("DISABLE"),
    .KVCO(2),
    .LPF_CAPACITOR(1),
    .LPF_RESISTOR(8),
    .NORESET("DISABLE"),
    .ODIV_MUXC0("DIV"),
    .ODIV_MUXC1("DIV"),
    .ODIV_MUXC2("DIV"),
    .ODIV_MUXC3("DIV"),
    .ODIV_MUXC4("DIV"),
    .PLLC2RST_ENA("DISABLE"),
    .PLLC34RST_ENA("DISABLE"),
    .PLLMRST_ENA("DISABLE"),
    .PLLRST_ENA("ENABLE"),
    .PLL_LOCK_MODE(0),
    .PREDIV_MUXC0("VCO"),
    .PREDIV_MUXC1("VCO"),
    .PREDIV_MUXC2("VCO"),
    .PREDIV_MUXC3("VCO"),
    .PREDIV_MUXC4("VCO"),
    .REFCLK_DIV(1),
    .REFCLK_SEL("INTERNAL"),
    .STDBY_ENABLE("DISABLE"),
    .STDBY_VCO_ENA("DISABLE"),
    .SYNC_ENABLE("DISABLE"),
    .VCO_NORESET("DISABLE"))
    pll_inst (
    .daddr(6'b000000),
    .dclk(1'b0),
    .dcs(1'b0),
    .di(8'b00000000),
    .dwe(1'b0),
    .fbclk(1'b0),
    .psclk(1'b0),
    .psclksel(3'b000),
    .psdown(1'b0),
    .psstep(1'b0),
    .refclk(refclk),
    .reset(reset),
    .stdby(1'b0),
    .clkc({open_n47,open_n48,open_n49,open_n50,clk0_out}),
    .extlock(extlock));  // al_ip/pll_main.v(54)

endmodule 

