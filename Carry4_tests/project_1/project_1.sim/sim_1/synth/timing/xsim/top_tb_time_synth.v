// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Apr  6 15:39:43 2024
// Host        : MikeHP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/mique/OneDrive/Pruebas y
//               tests/Carry4_tests/project_1/project_1.sim/sim_1/synth/timing/xsim/top_tb_time_synth.v}
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NUM = "12" *) (* keep_hierarchy = "true" *) 
module DelayChain
   (clk,
    rst,
    hit,
    outTaps);
  input clk;
  input rst;
  input hit;
  output [11:0]outTaps;

  wire [11:0]outTaps;
  wire [3:0]NLW_carry_40_O_UNCONNECTED;
  wire [3:0]\NLW_genblk1[1].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[2].carry_4_O_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 carry_40
       (.CI(1'b0),
        .CO(outTaps[3:0]),
        .CYINIT(1'b0),
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
endmodule

(* NUM = "12" *) 
(* NotValidForBitStream *)
module top
   (clk,
    hit,
    taps);
  input clk;
  input hit;
  output [11:0]taps;

  wire clk;
  wire hit;
  wire [11:0]taps;
  wire [11:0]taps_OBUF;

initial begin
 $sdf_annotate("top_tb_time_synth.sdf",,,,"tool_control");
end
  (* KEEP_HIERARCHY = "true" *) 
  (* NUM = "12" *) 
  DelayChain my_chain_inst
       (.clk(clk),
        .hit(hit),
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
