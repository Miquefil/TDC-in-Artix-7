// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Aug  5 16:21:28 2024
// Host        : MikeHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ block_clock_clk_wiz_0_0_sim_netlist.v
// Design      : block_clock_clk_wiz_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_out_ce,
    clk_out,
    clk_out2_ce,
    clk_out2,
    clk_out3_ce,
    clk_out3,
    clk_out4_ce,
    clk_out4,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  input clk_out_ce;
  output clk_out;
  input clk_out2_ce;
  output clk_out2;
  input clk_out3_ce;
  output clk_out3;
  input clk_out4_ce;
  output clk_out4;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* RTL_KEEP = "yes" *) wire clk_in1_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* RTL_KEEP = "yes" *) wire clk_in1_p;
  wire clk_out;
  wire clk_out2;
  wire clk_out2_ce;
  wire clk_out3;
  wire clk_out3_ce;
  wire clk_out4;
  wire clk_out4_ce;
  wire clk_out_ce;
  wire locked;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_clock_clk_wiz_0_0_clk_wiz inst
       (.clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .clk_out(clk_out),
        .clk_out2(clk_out2),
        .clk_out2_ce(clk_out2_ce),
        .clk_out3(clk_out3),
        .clk_out3_ce(clk_out3_ce),
        .clk_out4(clk_out4),
        .clk_out4_ce(clk_out4_ce),
        .clk_out_ce(clk_out_ce),
        .locked(locked),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_block_clock_clk_wiz_0_0_clk_wiz
   (clk_out_ce,
    clk_out,
    clk_out2_ce,
    clk_out2,
    clk_out3_ce,
    clk_out3,
    clk_out4_ce,
    clk_out4,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  input clk_out_ce;
  output clk_out;
  input clk_out2_ce;
  output clk_out2;
  input clk_out3_ce;
  output clk_out3;
  input clk_out4_ce;
  output clk_out4;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_block_clock_clk_wiz_0_0;
  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_out;
  wire clk_out2;
  wire clk_out2_block_clock_clk_wiz_0_0;
  wire clk_out2_ce;
  wire clk_out3;
  wire clk_out3_block_clock_clk_wiz_0_0;
  wire clk_out3_ce;
  wire clk_out4;
  wire clk_out4_block_clock_clk_wiz_0_0;
  wire clk_out4_ce;
  wire clk_out_block_clock_clk_wiz_0_0;
  wire clk_out_ce;
  wire clkfbout_block_clock_clk_wiz_0_0;
  wire clkfbout_buf_block_clock_clk_wiz_0_0;
  wire locked;
  wire reset;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_block_clock_clk_wiz_0_0),
        .O(clkfbout_buf_block_clock_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufgds
       (.I(clk_in1_p),
        .IB(clk_in1_n),
        .O(clk_in1_block_clock_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFHCE #(
    .CE_TYPE("SYNC"),
    .INIT_OUT(0),
    .IS_CE_INVERTED(1'b0)) 
    clkout1_buf
       (.CE(clk_out_ce),
        .I(clk_out_block_clock_clk_wiz_0_0),
        .O(clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFHCE #(
    .CE_TYPE("SYNC"),
    .INIT_OUT(0),
    .IS_CE_INVERTED(1'b0)) 
    clkout2_buf
       (.CE(clk_out2_ce),
        .I(clk_out2_block_clock_clk_wiz_0_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFHCE #(
    .CE_TYPE("SYNC"),
    .INIT_OUT(0),
    .IS_CE_INVERTED(1'b0)) 
    clkout3_buf
       (.CE(clk_out3_ce),
        .I(clk_out3_block_clock_clk_wiz_0_0),
        .O(clk_out3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFHCE #(
    .CE_TYPE("SYNC"),
    .INIT_OUT(0),
    .IS_CE_INVERTED(1'b0)) 
    clkout4_buf
       (.CE(clk_out4_ce),
        .I(clk_out4_block_clock_clk_wiz_0_0),
        .O(clk_out4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(4),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(109),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(4),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(45.000000),
    .CLKOUT3_DIVIDE(4),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(78.750000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_block_clock_clk_wiz_0_0),
        .CLKFBOUT(clkfbout_block_clock_clk_wiz_0_0),
        .CLKIN1(clk_in1_block_clock_clk_wiz_0_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out_block_clock_clk_wiz_0_0),
        .CLKOUT1(clk_out2_block_clock_clk_wiz_0_0),
        .CLKOUT2(clk_out3_block_clock_clk_wiz_0_0),
        .CLKOUT3(clk_out4_block_clock_clk_wiz_0_0),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
