// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr  6 18:11:53 2024
// Host        : MikeHP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/mique/Desktop/TDC-in-Artix-7/Carry4_tests/project_1/project_1.sim/sim_1/synth/func/xsim/top_tb_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NUM = "12" *) (* keep_hierarchy = "true" *) 
module DelayChain
   (clk,
    rst,
    hit,
    outTaps,
    outFF);
  input clk;
  input rst;
  input hit;
  output [11:0]outTaps;
  output [11:0]outFF;

  wire clk;
  wire hit;
  wire [11:0]outFF;
  wire [11:0]outTaps;
  wire [11:0]wOutFirstFF;
  wire [3:0]NLW_carry_40_O_UNCONNECTED;
  wire [3:0]\NLW_genblk1[1].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[2].carry_4_O_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 carry_40
       (.CI(1'b0),
        .CO(outTaps[3:0]),
        .CYINIT(hit),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_carry_40_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[1].carry_4 
       (.CI(outTaps[3]),
        .CO(outTaps[7:4]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[1].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[2].carry_4 
       (.CI(outTaps[7]),
        .CO(outTaps[11:8]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[2].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[0].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[0]),
        .Q(wOutFirstFF[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[10].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[10]),
        .Q(wOutFirstFF[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[11].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[11]),
        .Q(wOutFirstFF[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[1].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[1]),
        .Q(wOutFirstFF[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[2].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[2]),
        .Q(wOutFirstFF[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[3].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[3]),
        .Q(wOutFirstFF[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[4].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[4]),
        .Q(wOutFirstFF[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[5].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[5]),
        .Q(wOutFirstFF[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[6].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[6]),
        .Q(wOutFirstFF[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[7].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[7]),
        .Q(wOutFirstFF[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[8].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[8]),
        .Q(wOutFirstFF[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[9].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(outTaps[9]),
        .Q(wOutFirstFF[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[0].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[0]),
        .Q(outFF[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[10].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[10]),
        .Q(outFF[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[11].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[11]),
        .Q(outFF[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[1].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[1]),
        .Q(outFF[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[2].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[2]),
        .Q(outFF[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[3].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[3]),
        .Q(outFF[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[4].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[4]),
        .Q(outFF[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[5].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[5]),
        .Q(outFF[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[6].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[6]),
        .Q(outFF[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[7].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[7]),
        .Q(outFF[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[8].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[8]),
        .Q(outFF[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[9].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wOutFirstFF[9]),
        .Q(outFF[9]));
endmodule

(* NUM = "12" *) 
(* NotValidForBitStream *)
module top
   (clk,
    hit,
    taps,
    ff);
  input clk;
  input hit;
  output [11:0]taps;
  output [11:0]ff;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [11:0]ff;
  wire [11:0]ff_OBUF;
  wire hit;
  wire hit_IBUF;
  wire [11:0]taps;
  wire [11:0]taps_OBUF;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \ff_OBUF[0]_inst 
       (.I(ff_OBUF[0]),
        .O(ff[0]));
  OBUF \ff_OBUF[10]_inst 
       (.I(ff_OBUF[10]),
        .O(ff[10]));
  OBUF \ff_OBUF[11]_inst 
       (.I(ff_OBUF[11]),
        .O(ff[11]));
  OBUF \ff_OBUF[1]_inst 
       (.I(ff_OBUF[1]),
        .O(ff[1]));
  OBUF \ff_OBUF[2]_inst 
       (.I(ff_OBUF[2]),
        .O(ff[2]));
  OBUF \ff_OBUF[3]_inst 
       (.I(ff_OBUF[3]),
        .O(ff[3]));
  OBUF \ff_OBUF[4]_inst 
       (.I(ff_OBUF[4]),
        .O(ff[4]));
  OBUF \ff_OBUF[5]_inst 
       (.I(ff_OBUF[5]),
        .O(ff[5]));
  OBUF \ff_OBUF[6]_inst 
       (.I(ff_OBUF[6]),
        .O(ff[6]));
  OBUF \ff_OBUF[7]_inst 
       (.I(ff_OBUF[7]),
        .O(ff[7]));
  OBUF \ff_OBUF[8]_inst 
       (.I(ff_OBUF[8]),
        .O(ff[8]));
  OBUF \ff_OBUF[9]_inst 
       (.I(ff_OBUF[9]),
        .O(ff[9]));
  IBUF hit_IBUF_inst
       (.I(hit),
        .O(hit_IBUF));
  (* KEEP_HIERARCHY = "true" *) 
  (* NUM = "12" *) 
  DelayChain my_chain_inst
       (.clk(clk_IBUF_BUFG),
        .hit(hit_IBUF),
        .outFF(ff_OBUF),
        .outTaps(taps_OBUF),
        .rst(1'b0));
  OBUF \taps_OBUF[0]_inst 
       (.I(taps_OBUF[0]),
        .O(taps[0]));
  OBUF \taps_OBUF[10]_inst 
       (.I(taps_OBUF[10]),
        .O(taps[10]));
  OBUF \taps_OBUF[11]_inst 
       (.I(taps_OBUF[11]),
        .O(taps[11]));
  OBUF \taps_OBUF[1]_inst 
       (.I(taps_OBUF[1]),
        .O(taps[1]));
  OBUF \taps_OBUF[2]_inst 
       (.I(taps_OBUF[2]),
        .O(taps[2]));
  OBUF \taps_OBUF[3]_inst 
       (.I(taps_OBUF[3]),
        .O(taps[3]));
  OBUF \taps_OBUF[4]_inst 
       (.I(taps_OBUF[4]),
        .O(taps[4]));
  OBUF \taps_OBUF[5]_inst 
       (.I(taps_OBUF[5]),
        .O(taps[5]));
  OBUF \taps_OBUF[6]_inst 
       (.I(taps_OBUF[6]),
        .O(taps[6]));
  OBUF \taps_OBUF[7]_inst 
       (.I(taps_OBUF[7]),
        .O(taps[7]));
  OBUF \taps_OBUF[8]_inst 
       (.I(taps_OBUF[8]),
        .O(taps[8]));
  OBUF \taps_OBUF[9]_inst 
       (.I(taps_OBUF[9]),
        .O(taps[9]));
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
