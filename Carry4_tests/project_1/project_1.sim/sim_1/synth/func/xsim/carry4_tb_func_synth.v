// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Apr  4 12:43:51 2024
// Host        : MikeHP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/mique/OneDrive/Pruebas y
//               tests/Carry4_tests/project_1/project_1.sim/sim_1/synth/func/xsim/carry4_tb_func_synth.v}
// Design      : carry4_t
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module carry4_t
   (s,
    di,
    ci,
    cy,
    co,
    o);
  input [3:0]s;
  input [3:0]di;
  input ci;
  input cy;
  output [3:0]co;
  output [3:0]o;

  wire ci;
  wire ci_IBUF;
  wire [3:0]co;
  wire [3:0]co_OBUF;
  wire cy;
  wire cy_IBUF;
  wire [3:0]di;
  wire [3:0]di_IBUF;
  wire [3:0]o;
  wire [3:0]o_OBUF;
  wire [3:0]s;
  wire [3:0]s_IBUF;

  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 CARRY4_inst
       (.CI(ci_IBUF),
        .CO(co_OBUF),
        .CYINIT(cy_IBUF),
        .DI(di_IBUF),
        .O(o_OBUF),
        .S(s_IBUF));
  IBUF ci_IBUF_inst
       (.I(ci),
        .O(ci_IBUF));
  OBUF \co_OBUF[0]_inst 
       (.I(co_OBUF[0]),
        .O(co[0]));
  OBUF \co_OBUF[1]_inst 
       (.I(co_OBUF[1]),
        .O(co[1]));
  OBUF \co_OBUF[2]_inst 
       (.I(co_OBUF[2]),
        .O(co[2]));
  OBUF \co_OBUF[3]_inst 
       (.I(co_OBUF[3]),
        .O(co[3]));
  IBUF cy_IBUF_inst
       (.I(cy),
        .O(cy_IBUF));
  IBUF \di_IBUF[0]_inst 
       (.I(di[0]),
        .O(di_IBUF[0]));
  IBUF \di_IBUF[1]_inst 
       (.I(di[1]),
        .O(di_IBUF[1]));
  IBUF \di_IBUF[2]_inst 
       (.I(di[2]),
        .O(di_IBUF[2]));
  IBUF \di_IBUF[3]_inst 
       (.I(di[3]),
        .O(di_IBUF[3]));
  OBUF \o_OBUF[0]_inst 
       (.I(o_OBUF[0]),
        .O(o[0]));
  OBUF \o_OBUF[1]_inst 
       (.I(o_OBUF[1]),
        .O(o[1]));
  OBUF \o_OBUF[2]_inst 
       (.I(o_OBUF[2]),
        .O(o[2]));
  OBUF \o_OBUF[3]_inst 
       (.I(o_OBUF[3]),
        .O(o[3]));
  IBUF \s_IBUF[0]_inst 
       (.I(s[0]),
        .O(s_IBUF[0]));
  IBUF \s_IBUF[1]_inst 
       (.I(s[1]),
        .O(s_IBUF[1]));
  IBUF \s_IBUF[2]_inst 
       (.I(s[2]),
        .O(s_IBUF[2]));
  IBUF \s_IBUF[3]_inst 
       (.I(s[3]),
        .O(s_IBUF[3]));
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
