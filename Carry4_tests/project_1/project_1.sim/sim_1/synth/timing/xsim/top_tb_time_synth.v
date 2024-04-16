// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Apr 16 16:06:01 2024
// Host        : MikeHP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/mique/Desktop/TDC-in-Artix-7/Carry4_tests/project_1/project_1.sim/sim_1/synth/timing/xsim/top_tb_time_synth.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Coarse
   (out,
    iHit,
    iClk_IBUF_BUFG,
    E);
  output [0:0]out;
  input iHit;
  input iClk_IBUF_BUFG;
  input [0:0]E;

  wire [0:0]E;
  (* DONT_TOUCH *) wire [10:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[10]_i_1_n_0 ;
  wire \count[10]_i_2_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire iClk_IBUF_BUFG;
  wire iHit;
  (* DONT_TOUCH *) wire [10:0]stored;

  assign out[0] = stored[0];
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[10]_i_1 
       (.I0(count[8]),
        .I1(count[6]),
        .I2(\count[10]_i_2_n_0 ),
        .I3(count[7]),
        .I4(count[9]),
        .I5(count[10]),
        .O(\count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[10]_i_2 
       (.I0(count[5]),
        .I1(count[3]),
        .I2(count[1]),
        .I3(count[0]),
        .I4(count[2]),
        .I5(count[4]),
        .O(\count[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .I4(count[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count[3]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[2]),
        .I4(count[4]),
        .I5(count[5]),
        .O(\count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count[6]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(count[6]),
        .O(\count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1 
       (.I0(\count[10]_i_2_n_0 ),
        .I1(count[6]),
        .I2(count[7]),
        .O(\count[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[8]_i_1 
       (.I0(count[6]),
        .I1(\count[10]_i_2_n_0 ),
        .I2(count[7]),
        .I3(count[8]),
        .O(\count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[9]_i_1 
       (.I0(count[7]),
        .I1(\count[10]_i_2_n_0 ),
        .I2(count[6]),
        .I3(count[8]),
        .I4(count[9]),
        .O(\count[9]_i_1_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[10]_i_1_n_0 ),
        .Q(count[10]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[3]_i_1_n_0 ),
        .Q(count[3]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[4]_i_1_n_0 ),
        .Q(count[4]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[5]_i_1_n_0 ),
        .Q(count[5]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[6]_i_1_n_0 ),
        .Q(count[6]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[7]_i_1_n_0 ),
        .Q(count[7]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[8]_i_1_n_0 ),
        .Q(count[8]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(iClk_IBUF_BUFG),
        .CE(iHit),
        .D(\count[9]_i_1_n_0 ),
        .Q(count[9]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[0]),
        .Q(stored[0]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[10] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[10]),
        .Q(stored[10]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[1]),
        .Q(stored[1]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[2]),
        .Q(stored[2]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[3]),
        .Q(stored[3]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[4]),
        .Q(stored[4]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[5]),
        .Q(stored[5]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[6]),
        .Q(stored[6]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[7]),
        .Q(stored[7]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[8] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[8]),
        .Q(stored[8]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stored_reg[9] 
       (.C(iClk_IBUF_BUFG),
        .CE(E),
        .D(count[9]),
        .Q(stored[9]),
        .R(1'b0));
endmodule

module Edge
   (iStartEnable,
    E,
    iHit,
    iClk_IBUF_BUFG);
  output iStartEnable;
  output [0:0]E;
  input iHit;
  input iClk_IBUF_BUFG;

  wire [0:0]E;
  wire iClk_IBUF_BUFG;
  wire iHit;
  wire iStartEnable;
  wire wEDGE_0;
  wire wEDGE_1;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    edge_detector_ffd0
       (.C(iClk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(iHit),
        .Q(wEDGE_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    edge_detector_ffd1
       (.C(iClk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(1'b0),
        .D(wEDGE_0),
        .Q(wEDGE_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    u_FineDelay_i_1
       (.I0(wEDGE_1),
        .I1(wEDGE_0),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    u_FineDelay_i_2
       (.I0(wEDGE_0),
        .I1(wEDGE_1),
        .O(iStartEnable));
endmodule

(* NUM = "120" *) (* keep_hierarchy = "true" *) 
module Fine
   (clk,
    iRst,
    iHit,
    iStopEnable,
    iStartEnable,
    oFFStart,
    oFFStop,
    outTaps,
    outFF);
  input clk;
  input iRst;
  input iHit;
  input iStopEnable;
  input iStartEnable;
  output [119:0]oFFStart;
  output [119:0]oFFStop;
  output [119:0]outTaps;
  output [119:0]outFF;

  wire \<const0> ;
  wire clk;
  wire iHit;
  wire iRst;
  wire iStartEnable;
  wire iStopEnable;
  wire [119:0]oFFStart;
  wire [119:0]oFFStop;
  wire [119:0]outTaps;
  wire [119:0]wFirstFF;
  wire [3:0]NLW_carry_40_O_UNCONNECTED;
  wire [3:0]\NLW_genblk1[10].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[11].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[12].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[13].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[14].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[15].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[16].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[17].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[18].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[19].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[1].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[20].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[21].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[22].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[23].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[24].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[25].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[26].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[27].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[28].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[29].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[2].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[3].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[4].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[5].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[6].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[7].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[8].carry_4_O_UNCONNECTED ;
  wire [3:0]\NLW_genblk1[9].carry_4_O_UNCONNECTED ;

  assign outFF[119] = \<const0> ;
  assign outFF[118] = \<const0> ;
  assign outFF[117] = \<const0> ;
  assign outFF[116] = \<const0> ;
  assign outFF[115] = \<const0> ;
  assign outFF[114] = \<const0> ;
  assign outFF[113] = \<const0> ;
  assign outFF[112] = \<const0> ;
  assign outFF[111] = \<const0> ;
  assign outFF[110] = \<const0> ;
  assign outFF[109] = \<const0> ;
  assign outFF[108] = \<const0> ;
  assign outFF[107] = \<const0> ;
  assign outFF[106] = \<const0> ;
  assign outFF[105] = \<const0> ;
  assign outFF[104] = \<const0> ;
  assign outFF[103] = \<const0> ;
  assign outFF[102] = \<const0> ;
  assign outFF[101] = \<const0> ;
  assign outFF[100] = \<const0> ;
  assign outFF[99] = \<const0> ;
  assign outFF[98] = \<const0> ;
  assign outFF[97] = \<const0> ;
  assign outFF[96] = \<const0> ;
  assign outFF[95] = \<const0> ;
  assign outFF[94] = \<const0> ;
  assign outFF[93] = \<const0> ;
  assign outFF[92] = \<const0> ;
  assign outFF[91] = \<const0> ;
  assign outFF[90] = \<const0> ;
  assign outFF[89] = \<const0> ;
  assign outFF[88] = \<const0> ;
  assign outFF[87] = \<const0> ;
  assign outFF[86] = \<const0> ;
  assign outFF[85] = \<const0> ;
  assign outFF[84] = \<const0> ;
  assign outFF[83] = \<const0> ;
  assign outFF[82] = \<const0> ;
  assign outFF[81] = \<const0> ;
  assign outFF[80] = \<const0> ;
  assign outFF[79] = \<const0> ;
  assign outFF[78] = \<const0> ;
  assign outFF[77] = \<const0> ;
  assign outFF[76] = \<const0> ;
  assign outFF[75] = \<const0> ;
  assign outFF[74] = \<const0> ;
  assign outFF[73] = \<const0> ;
  assign outFF[72] = \<const0> ;
  assign outFF[71] = \<const0> ;
  assign outFF[70] = \<const0> ;
  assign outFF[69] = \<const0> ;
  assign outFF[68] = \<const0> ;
  assign outFF[67] = \<const0> ;
  assign outFF[66] = \<const0> ;
  assign outFF[65] = \<const0> ;
  assign outFF[64] = \<const0> ;
  assign outFF[63] = \<const0> ;
  assign outFF[62] = \<const0> ;
  assign outFF[61] = \<const0> ;
  assign outFF[60] = \<const0> ;
  assign outFF[59] = \<const0> ;
  assign outFF[58] = \<const0> ;
  assign outFF[57] = \<const0> ;
  assign outFF[56] = \<const0> ;
  assign outFF[55] = \<const0> ;
  assign outFF[54] = \<const0> ;
  assign outFF[53] = \<const0> ;
  assign outFF[52] = \<const0> ;
  assign outFF[51] = \<const0> ;
  assign outFF[50] = \<const0> ;
  assign outFF[49] = \<const0> ;
  assign outFF[48] = \<const0> ;
  assign outFF[47] = \<const0> ;
  assign outFF[46] = \<const0> ;
  assign outFF[45] = \<const0> ;
  assign outFF[44] = \<const0> ;
  assign outFF[43] = \<const0> ;
  assign outFF[42] = \<const0> ;
  assign outFF[41] = \<const0> ;
  assign outFF[40] = \<const0> ;
  assign outFF[39] = \<const0> ;
  assign outFF[38] = \<const0> ;
  assign outFF[37] = \<const0> ;
  assign outFF[36] = \<const0> ;
  assign outFF[35] = \<const0> ;
  assign outFF[34] = \<const0> ;
  assign outFF[33] = \<const0> ;
  assign outFF[32] = \<const0> ;
  assign outFF[31] = \<const0> ;
  assign outFF[30] = \<const0> ;
  assign outFF[29] = \<const0> ;
  assign outFF[28] = \<const0> ;
  assign outFF[27] = \<const0> ;
  assign outFF[26] = \<const0> ;
  assign outFF[25] = \<const0> ;
  assign outFF[24] = \<const0> ;
  assign outFF[23] = \<const0> ;
  assign outFF[22] = \<const0> ;
  assign outFF[21] = \<const0> ;
  assign outFF[20] = \<const0> ;
  assign outFF[19] = \<const0> ;
  assign outFF[18] = \<const0> ;
  assign outFF[17] = \<const0> ;
  assign outFF[16] = \<const0> ;
  assign outFF[15] = \<const0> ;
  assign outFF[14] = \<const0> ;
  assign outFF[13] = \<const0> ;
  assign outFF[12] = \<const0> ;
  assign outFF[11] = \<const0> ;
  assign outFF[10] = \<const0> ;
  assign outFF[9] = \<const0> ;
  assign outFF[8] = \<const0> ;
  assign outFF[7] = \<const0> ;
  assign outFF[6] = \<const0> ;
  assign outFF[5] = \<const0> ;
  assign outFF[4] = \<const0> ;
  assign outFF[3] = \<const0> ;
  assign outFF[2] = \<const0> ;
  assign outFF[1] = \<const0> ;
  assign outFF[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 carry_40
       (.CI(1'b0),
        .CO(outTaps[3:0]),
        .CYINIT(iHit),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_carry_40_O_UNCONNECTED[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[10].carry_4 
       (.CI(outTaps[39]),
        .CO(outTaps[43:40]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[10].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[11].carry_4 
       (.CI(outTaps[43]),
        .CO(outTaps[47:44]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[11].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[12].carry_4 
       (.CI(outTaps[47]),
        .CO(outTaps[51:48]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[12].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[13].carry_4 
       (.CI(outTaps[51]),
        .CO(outTaps[55:52]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[13].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[14].carry_4 
       (.CI(outTaps[55]),
        .CO(outTaps[59:56]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[14].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[15].carry_4 
       (.CI(outTaps[59]),
        .CO(outTaps[63:60]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[15].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[16].carry_4 
       (.CI(outTaps[63]),
        .CO(outTaps[67:64]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[16].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[17].carry_4 
       (.CI(outTaps[67]),
        .CO(outTaps[71:68]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[17].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[18].carry_4 
       (.CI(outTaps[71]),
        .CO(outTaps[75:72]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[18].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[19].carry_4 
       (.CI(outTaps[75]),
        .CO(outTaps[79:76]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[19].carry_4_O_UNCONNECTED [3:0]),
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
  CARRY4 \genblk1[20].carry_4 
       (.CI(outTaps[79]),
        .CO(outTaps[83:80]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[20].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[21].carry_4 
       (.CI(outTaps[83]),
        .CO(outTaps[87:84]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[21].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[22].carry_4 
       (.CI(outTaps[87]),
        .CO(outTaps[91:88]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[22].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[23].carry_4 
       (.CI(outTaps[91]),
        .CO(outTaps[95:92]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[23].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[24].carry_4 
       (.CI(outTaps[95]),
        .CO(outTaps[99:96]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[24].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[25].carry_4 
       (.CI(outTaps[99]),
        .CO(outTaps[103:100]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[25].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[26].carry_4 
       (.CI(outTaps[103]),
        .CO(outTaps[107:104]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[26].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[27].carry_4 
       (.CI(outTaps[107]),
        .CO(outTaps[111:108]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[27].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[28].carry_4 
       (.CI(outTaps[111]),
        .CO(outTaps[115:112]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[28].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[29].carry_4 
       (.CI(outTaps[115]),
        .CO(outTaps[119:116]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[29].carry_4_O_UNCONNECTED [3:0]),
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
  CARRY4 \genblk1[3].carry_4 
       (.CI(outTaps[11]),
        .CO(outTaps[15:12]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[3].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[4].carry_4 
       (.CI(outTaps[15]),
        .CO(outTaps[19:16]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[4].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[5].carry_4 
       (.CI(outTaps[19]),
        .CO(outTaps[23:20]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[5].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[6].carry_4 
       (.CI(outTaps[23]),
        .CO(outTaps[27:24]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[6].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[7].carry_4 
       (.CI(outTaps[27]),
        .CO(outTaps[31:28]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[7].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[8].carry_4 
       (.CI(outTaps[31]),
        .CO(outTaps[35:32]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[8].carry_4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  CARRY4 \genblk1[9].carry_4 
       (.CI(outTaps[35]),
        .CO(outTaps[39:36]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_genblk1[9].carry_4_O_UNCONNECTED [3:0]),
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
        .CLR(iRst),
        .D(outTaps[0]),
        .Q(wFirstFF[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[100].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[100]),
        .Q(wFirstFF[100]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[101].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[101]),
        .Q(wFirstFF[101]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[102].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[102]),
        .Q(wFirstFF[102]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[103].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[103]),
        .Q(wFirstFF[103]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[104].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[104]),
        .Q(wFirstFF[104]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[105].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[105]),
        .Q(wFirstFF[105]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[106].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[106]),
        .Q(wFirstFF[106]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[107].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[107]),
        .Q(wFirstFF[107]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[108].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[108]),
        .Q(wFirstFF[108]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[109].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[109]),
        .Q(wFirstFF[109]));
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
        .CLR(iRst),
        .D(outTaps[10]),
        .Q(wFirstFF[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[110].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[110]),
        .Q(wFirstFF[110]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[111].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[111]),
        .Q(wFirstFF[111]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[112].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[112]),
        .Q(wFirstFF[112]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[113].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[113]),
        .Q(wFirstFF[113]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[114].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[114]),
        .Q(wFirstFF[114]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[115].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[115]),
        .Q(wFirstFF[115]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[116].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[116]),
        .Q(wFirstFF[116]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[117].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[117]),
        .Q(wFirstFF[117]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[118].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[118]),
        .Q(wFirstFF[118]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[119].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[119]),
        .Q(wFirstFF[119]));
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
        .CLR(iRst),
        .D(outTaps[11]),
        .Q(wFirstFF[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[12].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[12]),
        .Q(wFirstFF[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[13].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[13]),
        .Q(wFirstFF[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[14].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[14]),
        .Q(wFirstFF[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[15].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[15]),
        .Q(wFirstFF[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[16].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[16]),
        .Q(wFirstFF[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[17].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[17]),
        .Q(wFirstFF[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[18].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[18]),
        .Q(wFirstFF[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[19].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[19]),
        .Q(wFirstFF[19]));
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
        .CLR(iRst),
        .D(outTaps[1]),
        .Q(wFirstFF[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[20].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[20]),
        .Q(wFirstFF[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[21].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[21]),
        .Q(wFirstFF[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[22].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[22]),
        .Q(wFirstFF[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[23].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[23]),
        .Q(wFirstFF[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[24].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[24]),
        .Q(wFirstFF[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[25].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[25]),
        .Q(wFirstFF[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[26].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[26]),
        .Q(wFirstFF[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[27].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[27]),
        .Q(wFirstFF[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[28].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[28]),
        .Q(wFirstFF[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[29].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[29]),
        .Q(wFirstFF[29]));
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
        .CLR(iRst),
        .D(outTaps[2]),
        .Q(wFirstFF[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[30].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[30]),
        .Q(wFirstFF[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[31].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[31]),
        .Q(wFirstFF[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[32].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[32]),
        .Q(wFirstFF[32]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[33].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[33]),
        .Q(wFirstFF[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[34].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[34]),
        .Q(wFirstFF[34]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[35].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[35]),
        .Q(wFirstFF[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[36].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[36]),
        .Q(wFirstFF[36]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[37].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[37]),
        .Q(wFirstFF[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[38].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[38]),
        .Q(wFirstFF[38]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[39].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[39]),
        .Q(wFirstFF[39]));
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
        .CLR(iRst),
        .D(outTaps[3]),
        .Q(wFirstFF[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[40].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[40]),
        .Q(wFirstFF[40]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[41].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[41]),
        .Q(wFirstFF[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[42].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[42]),
        .Q(wFirstFF[42]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[43].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[43]),
        .Q(wFirstFF[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[44].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[44]),
        .Q(wFirstFF[44]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[45].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[45]),
        .Q(wFirstFF[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[46].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[46]),
        .Q(wFirstFF[46]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[47].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[47]),
        .Q(wFirstFF[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[48].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[48]),
        .Q(wFirstFF[48]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[49].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[49]),
        .Q(wFirstFF[49]));
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
        .CLR(iRst),
        .D(outTaps[4]),
        .Q(wFirstFF[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[50].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[50]),
        .Q(wFirstFF[50]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[51].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[51]),
        .Q(wFirstFF[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[52].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[52]),
        .Q(wFirstFF[52]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[53].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[53]),
        .Q(wFirstFF[53]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[54].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[54]),
        .Q(wFirstFF[54]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[55].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[55]),
        .Q(wFirstFF[55]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[56].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[56]),
        .Q(wFirstFF[56]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[57].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[57]),
        .Q(wFirstFF[57]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[58].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[58]),
        .Q(wFirstFF[58]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[59].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[59]),
        .Q(wFirstFF[59]));
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
        .CLR(iRst),
        .D(outTaps[5]),
        .Q(wFirstFF[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[60].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[60]),
        .Q(wFirstFF[60]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[61].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[61]),
        .Q(wFirstFF[61]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[62].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[62]),
        .Q(wFirstFF[62]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[63].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[63]),
        .Q(wFirstFF[63]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[64].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[64]),
        .Q(wFirstFF[64]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[65].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[65]),
        .Q(wFirstFF[65]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[66].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[66]),
        .Q(wFirstFF[66]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[67].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[67]),
        .Q(wFirstFF[67]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[68].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[68]),
        .Q(wFirstFF[68]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[69].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[69]),
        .Q(wFirstFF[69]));
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
        .CLR(iRst),
        .D(outTaps[6]),
        .Q(wFirstFF[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[70].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[70]),
        .Q(wFirstFF[70]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[71].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[71]),
        .Q(wFirstFF[71]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[72].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[72]),
        .Q(wFirstFF[72]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[73].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[73]),
        .Q(wFirstFF[73]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[74].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[74]),
        .Q(wFirstFF[74]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[75].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[75]),
        .Q(wFirstFF[75]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[76].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[76]),
        .Q(wFirstFF[76]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[77].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[77]),
        .Q(wFirstFF[77]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[78].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[78]),
        .Q(wFirstFF[78]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[79].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[79]),
        .Q(wFirstFF[79]));
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
        .CLR(iRst),
        .D(outTaps[7]),
        .Q(wFirstFF[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[80].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[80]),
        .Q(wFirstFF[80]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[81].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[81]),
        .Q(wFirstFF[81]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[82].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[82]),
        .Q(wFirstFF[82]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[83].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[83]),
        .Q(wFirstFF[83]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[84].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[84]),
        .Q(wFirstFF[84]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[85].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[85]),
        .Q(wFirstFF[85]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[86].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[86]),
        .Q(wFirstFF[86]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[87].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[87]),
        .Q(wFirstFF[87]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[88].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[88]),
        .Q(wFirstFF[88]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[89].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[89]),
        .Q(wFirstFF[89]));
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
        .CLR(iRst),
        .D(outTaps[8]),
        .Q(wFirstFF[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[90].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[90]),
        .Q(wFirstFF[90]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[91].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[91]),
        .Q(wFirstFF[91]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[92].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[92]),
        .Q(wFirstFF[92]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[93].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[93]),
        .Q(wFirstFF[93]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[94].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[94]),
        .Q(wFirstFF[94]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[95].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[95]),
        .Q(wFirstFF[95]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[96].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[96]),
        .Q(wFirstFF[96]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[97].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[97]),
        .Q(wFirstFF[97]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[98].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[98]),
        .Q(wFirstFF[98]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk2[99].Firstff 
       (.C(clk),
        .CE(1'b1),
        .CLR(iRst),
        .D(outTaps[99]),
        .Q(wFirstFF[99]));
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
        .CLR(iRst),
        .D(outTaps[9]),
        .Q(wFirstFF[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[0].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[0]),
        .Q(oFFStart[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[100].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[100]),
        .Q(oFFStart[100]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[101].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[101]),
        .Q(oFFStart[101]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[102].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[102]),
        .Q(oFFStart[102]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[103].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[103]),
        .Q(oFFStart[103]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[104].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[104]),
        .Q(oFFStart[104]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[105].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[105]),
        .Q(oFFStart[105]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[106].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[106]),
        .Q(oFFStart[106]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[107].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[107]),
        .Q(oFFStart[107]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[108].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[108]),
        .Q(oFFStart[108]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[109].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[109]),
        .Q(oFFStart[109]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[10].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[10]),
        .Q(oFFStart[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[110].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[110]),
        .Q(oFFStart[110]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[111].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[111]),
        .Q(oFFStart[111]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[112].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[112]),
        .Q(oFFStart[112]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[113].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[113]),
        .Q(oFFStart[113]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[114].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[114]),
        .Q(oFFStart[114]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[115].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[115]),
        .Q(oFFStart[115]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[116].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[116]),
        .Q(oFFStart[116]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[117].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[117]),
        .Q(oFFStart[117]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[118].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[118]),
        .Q(oFFStart[118]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[119].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[119]),
        .Q(oFFStart[119]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[11].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[11]),
        .Q(oFFStart[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[12].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[12]),
        .Q(oFFStart[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[13].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[13]),
        .Q(oFFStart[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[14].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[14]),
        .Q(oFFStart[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[15].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[15]),
        .Q(oFFStart[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[16].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[16]),
        .Q(oFFStart[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[17].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[17]),
        .Q(oFFStart[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[18].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[18]),
        .Q(oFFStart[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[19].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[19]),
        .Q(oFFStart[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[1].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[1]),
        .Q(oFFStart[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[20].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[20]),
        .Q(oFFStart[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[21].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[21]),
        .Q(oFFStart[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[22].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[22]),
        .Q(oFFStart[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[23].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[23]),
        .Q(oFFStart[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[24].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[24]),
        .Q(oFFStart[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[25].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[25]),
        .Q(oFFStart[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[26].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[26]),
        .Q(oFFStart[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[27].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[27]),
        .Q(oFFStart[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[28].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[28]),
        .Q(oFFStart[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[29].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[29]),
        .Q(oFFStart[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[2].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[2]),
        .Q(oFFStart[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[30].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[30]),
        .Q(oFFStart[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[31].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[31]),
        .Q(oFFStart[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[32].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[32]),
        .Q(oFFStart[32]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[33].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[33]),
        .Q(oFFStart[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[34].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[34]),
        .Q(oFFStart[34]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[35].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[35]),
        .Q(oFFStart[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[36].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[36]),
        .Q(oFFStart[36]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[37].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[37]),
        .Q(oFFStart[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[38].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[38]),
        .Q(oFFStart[38]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[39].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[39]),
        .Q(oFFStart[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[3].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[3]),
        .Q(oFFStart[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[40].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[40]),
        .Q(oFFStart[40]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[41].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[41]),
        .Q(oFFStart[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[42].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[42]),
        .Q(oFFStart[42]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[43].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[43]),
        .Q(oFFStart[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[44].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[44]),
        .Q(oFFStart[44]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[45].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[45]),
        .Q(oFFStart[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[46].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[46]),
        .Q(oFFStart[46]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[47].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[47]),
        .Q(oFFStart[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[48].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[48]),
        .Q(oFFStart[48]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[49].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[49]),
        .Q(oFFStart[49]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[4].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[4]),
        .Q(oFFStart[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[50].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[50]),
        .Q(oFFStart[50]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[51].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[51]),
        .Q(oFFStart[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[52].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[52]),
        .Q(oFFStart[52]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[53].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[53]),
        .Q(oFFStart[53]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[54].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[54]),
        .Q(oFFStart[54]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[55].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[55]),
        .Q(oFFStart[55]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[56].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[56]),
        .Q(oFFStart[56]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[57].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[57]),
        .Q(oFFStart[57]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[58].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[58]),
        .Q(oFFStart[58]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[59].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[59]),
        .Q(oFFStart[59]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[5].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[5]),
        .Q(oFFStart[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[60].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[60]),
        .Q(oFFStart[60]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[61].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[61]),
        .Q(oFFStart[61]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[62].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[62]),
        .Q(oFFStart[62]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[63].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[63]),
        .Q(oFFStart[63]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[64].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[64]),
        .Q(oFFStart[64]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[65].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[65]),
        .Q(oFFStart[65]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[66].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[66]),
        .Q(oFFStart[66]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[67].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[67]),
        .Q(oFFStart[67]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[68].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[68]),
        .Q(oFFStart[68]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[69].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[69]),
        .Q(oFFStart[69]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[6].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[6]),
        .Q(oFFStart[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[70].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[70]),
        .Q(oFFStart[70]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[71].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[71]),
        .Q(oFFStart[71]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[72].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[72]),
        .Q(oFFStart[72]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[73].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[73]),
        .Q(oFFStart[73]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[74].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[74]),
        .Q(oFFStart[74]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[75].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[75]),
        .Q(oFFStart[75]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[76].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[76]),
        .Q(oFFStart[76]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[77].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[77]),
        .Q(oFFStart[77]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[78].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[78]),
        .Q(oFFStart[78]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[79].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[79]),
        .Q(oFFStart[79]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[7].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[7]),
        .Q(oFFStart[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[80].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[80]),
        .Q(oFFStart[80]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[81].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[81]),
        .Q(oFFStart[81]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[82].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[82]),
        .Q(oFFStart[82]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[83].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[83]),
        .Q(oFFStart[83]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[84].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[84]),
        .Q(oFFStart[84]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[85].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[85]),
        .Q(oFFStart[85]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[86].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[86]),
        .Q(oFFStart[86]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[87].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[87]),
        .Q(oFFStart[87]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[88].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[88]),
        .Q(oFFStart[88]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[89].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[89]),
        .Q(oFFStart[89]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[8].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[8]),
        .Q(oFFStart[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[90].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[90]),
        .Q(oFFStart[90]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[91].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[91]),
        .Q(oFFStart[91]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[92].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[92]),
        .Q(oFFStart[92]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[93].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[93]),
        .Q(oFFStart[93]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[94].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[94]),
        .Q(oFFStart[94]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[95].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[95]),
        .Q(oFFStart[95]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[96].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[96]),
        .Q(oFFStart[96]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[97].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[97]),
        .Q(oFFStart[97]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[98].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[98]),
        .Q(oFFStart[98]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[99].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[99]),
        .Q(oFFStart[99]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk3[9].Startff 
       (.C(clk),
        .CE(iStartEnable),
        .CLR(iRst),
        .D(wFirstFF[9]),
        .Q(oFFStart[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[0].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[0]),
        .Q(oFFStop[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[100].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[100]),
        .Q(oFFStop[100]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[101].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[101]),
        .Q(oFFStop[101]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[102].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[102]),
        .Q(oFFStop[102]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[103].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[103]),
        .Q(oFFStop[103]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[104].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[104]),
        .Q(oFFStop[104]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[105].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[105]),
        .Q(oFFStop[105]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[106].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[106]),
        .Q(oFFStop[106]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[107].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[107]),
        .Q(oFFStop[107]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[108].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[108]),
        .Q(oFFStop[108]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[109].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[109]),
        .Q(oFFStop[109]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[10].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[10]),
        .Q(oFFStop[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[110].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[110]),
        .Q(oFFStop[110]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[111].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[111]),
        .Q(oFFStop[111]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[112].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[112]),
        .Q(oFFStop[112]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[113].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[113]),
        .Q(oFFStop[113]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[114].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[114]),
        .Q(oFFStop[114]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[115].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[115]),
        .Q(oFFStop[115]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[116].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[116]),
        .Q(oFFStop[116]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[117].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[117]),
        .Q(oFFStop[117]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[118].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[118]),
        .Q(oFFStop[118]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[119].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[119]),
        .Q(oFFStop[119]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[11].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[11]),
        .Q(oFFStop[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[12].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[12]),
        .Q(oFFStop[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[13].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[13]),
        .Q(oFFStop[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[14].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[14]),
        .Q(oFFStop[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[15].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[15]),
        .Q(oFFStop[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[16].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[16]),
        .Q(oFFStop[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[17].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[17]),
        .Q(oFFStop[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[18].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[18]),
        .Q(oFFStop[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[19].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[19]),
        .Q(oFFStop[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[1].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[1]),
        .Q(oFFStop[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[20].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[20]),
        .Q(oFFStop[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[21].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[21]),
        .Q(oFFStop[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[22].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[22]),
        .Q(oFFStop[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[23].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[23]),
        .Q(oFFStop[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[24].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[24]),
        .Q(oFFStop[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[25].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[25]),
        .Q(oFFStop[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[26].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[26]),
        .Q(oFFStop[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[27].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[27]),
        .Q(oFFStop[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[28].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[28]),
        .Q(oFFStop[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[29].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[29]),
        .Q(oFFStop[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[2].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[2]),
        .Q(oFFStop[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[30].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[30]),
        .Q(oFFStop[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[31].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[31]),
        .Q(oFFStop[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[32].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[32]),
        .Q(oFFStop[32]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[33].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[33]),
        .Q(oFFStop[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[34].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[34]),
        .Q(oFFStop[34]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[35].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[35]),
        .Q(oFFStop[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[36].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[36]),
        .Q(oFFStop[36]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[37].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[37]),
        .Q(oFFStop[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[38].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[38]),
        .Q(oFFStop[38]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[39].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[39]),
        .Q(oFFStop[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[3].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[3]),
        .Q(oFFStop[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[40].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[40]),
        .Q(oFFStop[40]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[41].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[41]),
        .Q(oFFStop[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[42].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[42]),
        .Q(oFFStop[42]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[43].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[43]),
        .Q(oFFStop[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[44].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[44]),
        .Q(oFFStop[44]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[45].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[45]),
        .Q(oFFStop[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[46].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[46]),
        .Q(oFFStop[46]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[47].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[47]),
        .Q(oFFStop[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[48].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[48]),
        .Q(oFFStop[48]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[49].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[49]),
        .Q(oFFStop[49]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[4].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[4]),
        .Q(oFFStop[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[50].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[50]),
        .Q(oFFStop[50]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[51].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[51]),
        .Q(oFFStop[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[52].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[52]),
        .Q(oFFStop[52]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[53].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[53]),
        .Q(oFFStop[53]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[54].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[54]),
        .Q(oFFStop[54]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[55].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[55]),
        .Q(oFFStop[55]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[56].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[56]),
        .Q(oFFStop[56]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[57].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[57]),
        .Q(oFFStop[57]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[58].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[58]),
        .Q(oFFStop[58]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[59].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[59]),
        .Q(oFFStop[59]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[5].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[5]),
        .Q(oFFStop[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[60].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[60]),
        .Q(oFFStop[60]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[61].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[61]),
        .Q(oFFStop[61]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[62].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[62]),
        .Q(oFFStop[62]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[63].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[63]),
        .Q(oFFStop[63]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[64].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[64]),
        .Q(oFFStop[64]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[65].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[65]),
        .Q(oFFStop[65]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[66].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[66]),
        .Q(oFFStop[66]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[67].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[67]),
        .Q(oFFStop[67]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[68].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[68]),
        .Q(oFFStop[68]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[69].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[69]),
        .Q(oFFStop[69]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[6].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[6]),
        .Q(oFFStop[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[70].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[70]),
        .Q(oFFStop[70]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[71].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[71]),
        .Q(oFFStop[71]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[72].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[72]),
        .Q(oFFStop[72]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[73].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[73]),
        .Q(oFFStop[73]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[74].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[74]),
        .Q(oFFStop[74]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[75].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[75]),
        .Q(oFFStop[75]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[76].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[76]),
        .Q(oFFStop[76]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[77].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[77]),
        .Q(oFFStop[77]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[78].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[78]),
        .Q(oFFStop[78]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[79].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[79]),
        .Q(oFFStop[79]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[7].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[7]),
        .Q(oFFStop[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[80].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[80]),
        .Q(oFFStop[80]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[81].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[81]),
        .Q(oFFStop[81]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[82].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[82]),
        .Q(oFFStop[82]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[83].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[83]),
        .Q(oFFStop[83]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[84].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[84]),
        .Q(oFFStop[84]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[85].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[85]),
        .Q(oFFStop[85]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[86].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[86]),
        .Q(oFFStop[86]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[87].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[87]),
        .Q(oFFStop[87]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[88].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[88]),
        .Q(oFFStop[88]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[89].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[89]),
        .Q(oFFStop[89]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[8].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[8]),
        .Q(oFFStop[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[90].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[90]),
        .Q(oFFStop[90]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[91].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[91]),
        .Q(oFFStop[91]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[92].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[92]),
        .Q(oFFStop[92]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[93].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[93]),
        .Q(oFFStop[93]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[94].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[94]),
        .Q(oFFStop[94]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[95].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[95]),
        .Q(oFFStop[95]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[96].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[96]),
        .Q(oFFStop[96]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[97].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[97]),
        .Q(oFFStop[97]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[98].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[98]),
        .Q(oFFStop[98]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[99].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[99]),
        .Q(oFFStop[99]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \genblk4[9].StopFF 
       (.C(clk),
        .CE(iStopEnable),
        .CLR(iRst),
        .D(wFirstFF[9]),
        .Q(oFFStop[9]));
endmodule

(* NotValidForBitStream *)
module top
   (iClk,
    iRst,
    iHit,
    oTDC,
    FFStart,
    FFStop,
    taps);
  input iClk;
  input iRst;
  input iHit;
  output [23:0]oTDC;
  output [119:0]FFStart;
  output [119:0]FFStop;
  output [119:0]taps;

  wire CoarseStamp;
  wire [6:0]DecodedStart;
  wire [6:0]DecodedStop;
  wire DelayCounter_i_1_n_0;
  wire [119:0]FFStart;
  wire [119:0]FFStart_OBUF;
  wire [119:0]FFStop;
  wire [119:0]FFStop_OBUF;
  wire Fall;
  wire Rise;
  wire StartDelay;
  wire StopDelay;
  wire \ValorTDC[0]_i_10_n_0 ;
  wire \ValorTDC[0]_i_11_n_0 ;
  wire \ValorTDC[0]_i_12_n_0 ;
  wire \ValorTDC[0]_i_13_n_0 ;
  wire \ValorTDC[0]_i_14_n_0 ;
  wire \ValorTDC[0]_i_15_n_0 ;
  wire \ValorTDC[0]_i_16_n_0 ;
  wire \ValorTDC[0]_i_17_n_0 ;
  wire \ValorTDC[0]_i_18_n_0 ;
  wire \ValorTDC[0]_i_19_n_0 ;
  wire \ValorTDC[0]_i_20_n_0 ;
  wire \ValorTDC[0]_i_21_n_0 ;
  wire \ValorTDC[0]_i_22_n_0 ;
  wire \ValorTDC[0]_i_23_n_0 ;
  wire \ValorTDC[0]_i_24_n_0 ;
  wire \ValorTDC[0]_i_25_n_0 ;
  wire \ValorTDC[0]_i_26_n_0 ;
  wire \ValorTDC[0]_i_27_n_0 ;
  wire \ValorTDC[0]_i_28_n_0 ;
  wire \ValorTDC[0]_i_29_n_0 ;
  wire \ValorTDC[0]_i_2_n_0 ;
  wire \ValorTDC[0]_i_30_n_0 ;
  wire \ValorTDC[0]_i_31_n_0 ;
  wire \ValorTDC[0]_i_32_n_0 ;
  wire \ValorTDC[0]_i_33_n_0 ;
  wire \ValorTDC[0]_i_34_n_0 ;
  wire \ValorTDC[0]_i_35_n_0 ;
  wire \ValorTDC[0]_i_36_n_0 ;
  wire \ValorTDC[0]_i_37_n_0 ;
  wire \ValorTDC[0]_i_38_n_0 ;
  wire \ValorTDC[0]_i_39_n_0 ;
  wire \ValorTDC[0]_i_3_n_0 ;
  wire \ValorTDC[0]_i_40_n_0 ;
  wire \ValorTDC[0]_i_41_n_0 ;
  wire \ValorTDC[0]_i_42_n_0 ;
  wire \ValorTDC[0]_i_43_n_0 ;
  wire \ValorTDC[0]_i_44_n_0 ;
  wire \ValorTDC[0]_i_45_n_0 ;
  wire \ValorTDC[0]_i_46_n_0 ;
  wire \ValorTDC[0]_i_47_n_0 ;
  wire \ValorTDC[0]_i_48_n_0 ;
  wire \ValorTDC[0]_i_49_n_0 ;
  wire \ValorTDC[0]_i_4_n_0 ;
  wire \ValorTDC[0]_i_50_n_0 ;
  wire \ValorTDC[0]_i_51_n_0 ;
  wire \ValorTDC[0]_i_52_n_0 ;
  wire \ValorTDC[0]_i_53_n_0 ;
  wire \ValorTDC[0]_i_54_n_0 ;
  wire \ValorTDC[0]_i_5_n_0 ;
  wire \ValorTDC[0]_i_6_n_0 ;
  wire \ValorTDC[0]_i_7_n_0 ;
  wire \ValorTDC[0]_i_8_n_0 ;
  wire \ValorTDC[0]_i_9_n_0 ;
  wire \ValorTDC[10]_i_10_n_0 ;
  wire \ValorTDC[10]_i_11_n_0 ;
  wire \ValorTDC[10]_i_12_n_0 ;
  wire \ValorTDC[10]_i_13_n_0 ;
  wire \ValorTDC[10]_i_14_n_0 ;
  wire \ValorTDC[10]_i_15_n_0 ;
  wire \ValorTDC[10]_i_16_n_0 ;
  wire \ValorTDC[10]_i_17_n_0 ;
  wire \ValorTDC[10]_i_18_n_0 ;
  wire \ValorTDC[10]_i_19_n_0 ;
  wire \ValorTDC[10]_i_20_n_0 ;
  wire \ValorTDC[10]_i_21_n_0 ;
  wire \ValorTDC[10]_i_22_n_0 ;
  wire \ValorTDC[10]_i_23_n_0 ;
  wire \ValorTDC[10]_i_24_n_0 ;
  wire \ValorTDC[10]_i_25_n_0 ;
  wire \ValorTDC[10]_i_26_n_0 ;
  wire \ValorTDC[10]_i_27_n_0 ;
  wire \ValorTDC[10]_i_28_n_0 ;
  wire \ValorTDC[10]_i_29_n_0 ;
  wire \ValorTDC[10]_i_2_n_0 ;
  wire \ValorTDC[10]_i_30_n_0 ;
  wire \ValorTDC[10]_i_3_n_0 ;
  wire \ValorTDC[10]_i_4_n_0 ;
  wire \ValorTDC[10]_i_5_n_0 ;
  wire \ValorTDC[10]_i_6_n_0 ;
  wire \ValorTDC[10]_i_7_n_0 ;
  wire \ValorTDC[10]_i_8_n_0 ;
  wire \ValorTDC[10]_i_9_n_0 ;
  wire \ValorTDC[11]_i_10_n_0 ;
  wire \ValorTDC[11]_i_11_n_0 ;
  wire \ValorTDC[11]_i_12_n_0 ;
  wire \ValorTDC[11]_i_13_n_0 ;
  wire \ValorTDC[11]_i_14_n_0 ;
  wire \ValorTDC[11]_i_15_n_0 ;
  wire \ValorTDC[11]_i_16_n_0 ;
  wire \ValorTDC[11]_i_17_n_0 ;
  wire \ValorTDC[11]_i_18_n_0 ;
  wire \ValorTDC[11]_i_19_n_0 ;
  wire \ValorTDC[11]_i_20_n_0 ;
  wire \ValorTDC[11]_i_21_n_0 ;
  wire \ValorTDC[11]_i_22_n_0 ;
  wire \ValorTDC[11]_i_23_n_0 ;
  wire \ValorTDC[11]_i_24_n_0 ;
  wire \ValorTDC[11]_i_2_n_0 ;
  wire \ValorTDC[11]_i_3_n_0 ;
  wire \ValorTDC[11]_i_4_n_0 ;
  wire \ValorTDC[11]_i_5_n_0 ;
  wire \ValorTDC[11]_i_6_n_0 ;
  wire \ValorTDC[11]_i_7_n_0 ;
  wire \ValorTDC[11]_i_8_n_0 ;
  wire \ValorTDC[11]_i_9_n_0 ;
  wire \ValorTDC[12]_i_10_n_0 ;
  wire \ValorTDC[12]_i_11_n_0 ;
  wire \ValorTDC[12]_i_12_n_0 ;
  wire \ValorTDC[12]_i_13_n_0 ;
  wire \ValorTDC[12]_i_14_n_0 ;
  wire \ValorTDC[12]_i_15_n_0 ;
  wire \ValorTDC[12]_i_16_n_0 ;
  wire \ValorTDC[12]_i_17_n_0 ;
  wire \ValorTDC[12]_i_18_n_0 ;
  wire \ValorTDC[12]_i_19_n_0 ;
  wire \ValorTDC[12]_i_20_n_0 ;
  wire \ValorTDC[12]_i_21_n_0 ;
  wire \ValorTDC[12]_i_22_n_0 ;
  wire \ValorTDC[12]_i_23_n_0 ;
  wire \ValorTDC[12]_i_24_n_0 ;
  wire \ValorTDC[12]_i_25_n_0 ;
  wire \ValorTDC[12]_i_26_n_0 ;
  wire \ValorTDC[12]_i_27_n_0 ;
  wire \ValorTDC[12]_i_28_n_0 ;
  wire \ValorTDC[12]_i_29_n_0 ;
  wire \ValorTDC[12]_i_2_n_0 ;
  wire \ValorTDC[12]_i_30_n_0 ;
  wire \ValorTDC[12]_i_31_n_0 ;
  wire \ValorTDC[12]_i_32_n_0 ;
  wire \ValorTDC[12]_i_3_n_0 ;
  wire \ValorTDC[12]_i_4_n_0 ;
  wire \ValorTDC[12]_i_5_n_0 ;
  wire \ValorTDC[12]_i_6_n_0 ;
  wire \ValorTDC[12]_i_7_n_0 ;
  wire \ValorTDC[12]_i_8_n_0 ;
  wire \ValorTDC[12]_i_9_n_0 ;
  wire \ValorTDC[13]_i_10_n_0 ;
  wire \ValorTDC[13]_i_11_n_0 ;
  wire \ValorTDC[13]_i_12_n_0 ;
  wire \ValorTDC[13]_i_13_n_0 ;
  wire \ValorTDC[13]_i_14_n_0 ;
  wire \ValorTDC[13]_i_15_n_0 ;
  wire \ValorTDC[13]_i_16_n_0 ;
  wire \ValorTDC[13]_i_17_n_0 ;
  wire \ValorTDC[13]_i_18_n_0 ;
  wire \ValorTDC[13]_i_19_n_0 ;
  wire \ValorTDC[13]_i_20_n_0 ;
  wire \ValorTDC[13]_i_21_n_0 ;
  wire \ValorTDC[13]_i_22_n_0 ;
  wire \ValorTDC[13]_i_23_n_0 ;
  wire \ValorTDC[13]_i_24_n_0 ;
  wire \ValorTDC[13]_i_25_n_0 ;
  wire \ValorTDC[13]_i_26_n_0 ;
  wire \ValorTDC[13]_i_27_n_0 ;
  wire \ValorTDC[13]_i_28_n_0 ;
  wire \ValorTDC[13]_i_2_n_0 ;
  wire \ValorTDC[13]_i_3_n_0 ;
  wire \ValorTDC[13]_i_4_n_0 ;
  wire \ValorTDC[13]_i_5_n_0 ;
  wire \ValorTDC[13]_i_6_n_0 ;
  wire \ValorTDC[13]_i_7_n_0 ;
  wire \ValorTDC[13]_i_8_n_0 ;
  wire \ValorTDC[13]_i_9_n_0 ;
  wire \ValorTDC[1]_i_10_n_0 ;
  wire \ValorTDC[1]_i_11_n_0 ;
  wire \ValorTDC[1]_i_12_n_0 ;
  wire \ValorTDC[1]_i_13_n_0 ;
  wire \ValorTDC[1]_i_14_n_0 ;
  wire \ValorTDC[1]_i_15_n_0 ;
  wire \ValorTDC[1]_i_16_n_0 ;
  wire \ValorTDC[1]_i_17_n_0 ;
  wire \ValorTDC[1]_i_18_n_0 ;
  wire \ValorTDC[1]_i_19_n_0 ;
  wire \ValorTDC[1]_i_20_n_0 ;
  wire \ValorTDC[1]_i_21_n_0 ;
  wire \ValorTDC[1]_i_22_n_0 ;
  wire \ValorTDC[1]_i_23_n_0 ;
  wire \ValorTDC[1]_i_24_n_0 ;
  wire \ValorTDC[1]_i_25_n_0 ;
  wire \ValorTDC[1]_i_26_n_0 ;
  wire \ValorTDC[1]_i_27_n_0 ;
  wire \ValorTDC[1]_i_28_n_0 ;
  wire \ValorTDC[1]_i_29_n_0 ;
  wire \ValorTDC[1]_i_2_n_0 ;
  wire \ValorTDC[1]_i_30_n_0 ;
  wire \ValorTDC[1]_i_31_n_0 ;
  wire \ValorTDC[1]_i_32_n_0 ;
  wire \ValorTDC[1]_i_33_n_0 ;
  wire \ValorTDC[1]_i_34_n_0 ;
  wire \ValorTDC[1]_i_3_n_0 ;
  wire \ValorTDC[1]_i_4_n_0 ;
  wire \ValorTDC[1]_i_5_n_0 ;
  wire \ValorTDC[1]_i_6_n_0 ;
  wire \ValorTDC[1]_i_7_n_0 ;
  wire \ValorTDC[1]_i_8_n_0 ;
  wire \ValorTDC[1]_i_9_n_0 ;
  wire \ValorTDC[2]_i_10_n_0 ;
  wire \ValorTDC[2]_i_11_n_0 ;
  wire \ValorTDC[2]_i_12_n_0 ;
  wire \ValorTDC[2]_i_13_n_0 ;
  wire \ValorTDC[2]_i_14_n_0 ;
  wire \ValorTDC[2]_i_15_n_0 ;
  wire \ValorTDC[2]_i_16_n_0 ;
  wire \ValorTDC[2]_i_17_n_0 ;
  wire \ValorTDC[2]_i_18_n_0 ;
  wire \ValorTDC[2]_i_19_n_0 ;
  wire \ValorTDC[2]_i_20_n_0 ;
  wire \ValorTDC[2]_i_21_n_0 ;
  wire \ValorTDC[2]_i_22_n_0 ;
  wire \ValorTDC[2]_i_23_n_0 ;
  wire \ValorTDC[2]_i_24_n_0 ;
  wire \ValorTDC[2]_i_25_n_0 ;
  wire \ValorTDC[2]_i_26_n_0 ;
  wire \ValorTDC[2]_i_27_n_0 ;
  wire \ValorTDC[2]_i_28_n_0 ;
  wire \ValorTDC[2]_i_29_n_0 ;
  wire \ValorTDC[2]_i_2_n_0 ;
  wire \ValorTDC[2]_i_3_n_0 ;
  wire \ValorTDC[2]_i_4_n_0 ;
  wire \ValorTDC[2]_i_5_n_0 ;
  wire \ValorTDC[2]_i_6_n_0 ;
  wire \ValorTDC[2]_i_7_n_0 ;
  wire \ValorTDC[2]_i_8_n_0 ;
  wire \ValorTDC[2]_i_9_n_0 ;
  wire \ValorTDC[3]_i_10_n_0 ;
  wire \ValorTDC[3]_i_11_n_0 ;
  wire \ValorTDC[3]_i_12_n_0 ;
  wire \ValorTDC[3]_i_13_n_0 ;
  wire \ValorTDC[3]_i_14_n_0 ;
  wire \ValorTDC[3]_i_15_n_0 ;
  wire \ValorTDC[3]_i_16_n_0 ;
  wire \ValorTDC[3]_i_17_n_0 ;
  wire \ValorTDC[3]_i_18_n_0 ;
  wire \ValorTDC[3]_i_19_n_0 ;
  wire \ValorTDC[3]_i_20_n_0 ;
  wire \ValorTDC[3]_i_21_n_0 ;
  wire \ValorTDC[3]_i_22_n_0 ;
  wire \ValorTDC[3]_i_23_n_0 ;
  wire \ValorTDC[3]_i_24_n_0 ;
  wire \ValorTDC[3]_i_25_n_0 ;
  wire \ValorTDC[3]_i_26_n_0 ;
  wire \ValorTDC[3]_i_27_n_0 ;
  wire \ValorTDC[3]_i_28_n_0 ;
  wire \ValorTDC[3]_i_29_n_0 ;
  wire \ValorTDC[3]_i_2_n_0 ;
  wire \ValorTDC[3]_i_3_n_0 ;
  wire \ValorTDC[3]_i_4_n_0 ;
  wire \ValorTDC[3]_i_5_n_0 ;
  wire \ValorTDC[3]_i_6_n_0 ;
  wire \ValorTDC[3]_i_7_n_0 ;
  wire \ValorTDC[3]_i_8_n_0 ;
  wire \ValorTDC[3]_i_9_n_0 ;
  wire \ValorTDC[4]_i_10_n_0 ;
  wire \ValorTDC[4]_i_11_n_0 ;
  wire \ValorTDC[4]_i_12_n_0 ;
  wire \ValorTDC[4]_i_13_n_0 ;
  wire \ValorTDC[4]_i_14_n_0 ;
  wire \ValorTDC[4]_i_15_n_0 ;
  wire \ValorTDC[4]_i_16_n_0 ;
  wire \ValorTDC[4]_i_17_n_0 ;
  wire \ValorTDC[4]_i_18_n_0 ;
  wire \ValorTDC[4]_i_2_n_0 ;
  wire \ValorTDC[4]_i_3_n_0 ;
  wire \ValorTDC[4]_i_4_n_0 ;
  wire \ValorTDC[4]_i_5_n_0 ;
  wire \ValorTDC[4]_i_6_n_0 ;
  wire \ValorTDC[4]_i_7_n_0 ;
  wire \ValorTDC[4]_i_8_n_0 ;
  wire \ValorTDC[4]_i_9_n_0 ;
  wire \ValorTDC[5]_i_10_n_0 ;
  wire \ValorTDC[5]_i_11_n_0 ;
  wire \ValorTDC[5]_i_12_n_0 ;
  wire \ValorTDC[5]_i_13_n_0 ;
  wire \ValorTDC[5]_i_14_n_0 ;
  wire \ValorTDC[5]_i_15_n_0 ;
  wire \ValorTDC[5]_i_16_n_0 ;
  wire \ValorTDC[5]_i_17_n_0 ;
  wire \ValorTDC[5]_i_18_n_0 ;
  wire \ValorTDC[5]_i_19_n_0 ;
  wire \ValorTDC[5]_i_20_n_0 ;
  wire \ValorTDC[5]_i_21_n_0 ;
  wire \ValorTDC[5]_i_22_n_0 ;
  wire \ValorTDC[5]_i_23_n_0 ;
  wire \ValorTDC[5]_i_24_n_0 ;
  wire \ValorTDC[5]_i_25_n_0 ;
  wire \ValorTDC[5]_i_26_n_0 ;
  wire \ValorTDC[5]_i_27_n_0 ;
  wire \ValorTDC[5]_i_28_n_0 ;
  wire \ValorTDC[5]_i_29_n_0 ;
  wire \ValorTDC[5]_i_2_n_0 ;
  wire \ValorTDC[5]_i_30_n_0 ;
  wire \ValorTDC[5]_i_31_n_0 ;
  wire \ValorTDC[5]_i_32_n_0 ;
  wire \ValorTDC[5]_i_33_n_0 ;
  wire \ValorTDC[5]_i_3_n_0 ;
  wire \ValorTDC[5]_i_4_n_0 ;
  wire \ValorTDC[5]_i_5_n_0 ;
  wire \ValorTDC[5]_i_6_n_0 ;
  wire \ValorTDC[5]_i_7_n_0 ;
  wire \ValorTDC[5]_i_8_n_0 ;
  wire \ValorTDC[5]_i_9_n_0 ;
  wire \ValorTDC[6]_i_10_n_0 ;
  wire \ValorTDC[6]_i_11_n_0 ;
  wire \ValorTDC[6]_i_12_n_0 ;
  wire \ValorTDC[6]_i_13_n_0 ;
  wire \ValorTDC[6]_i_14_n_0 ;
  wire \ValorTDC[6]_i_15_n_0 ;
  wire \ValorTDC[6]_i_16_n_0 ;
  wire \ValorTDC[6]_i_17_n_0 ;
  wire \ValorTDC[6]_i_18_n_0 ;
  wire \ValorTDC[6]_i_19_n_0 ;
  wire \ValorTDC[6]_i_20_n_0 ;
  wire \ValorTDC[6]_i_21_n_0 ;
  wire \ValorTDC[6]_i_22_n_0 ;
  wire \ValorTDC[6]_i_23_n_0 ;
  wire \ValorTDC[6]_i_24_n_0 ;
  wire \ValorTDC[6]_i_25_n_0 ;
  wire \ValorTDC[6]_i_2_n_0 ;
  wire \ValorTDC[6]_i_3_n_0 ;
  wire \ValorTDC[6]_i_4_n_0 ;
  wire \ValorTDC[6]_i_5_n_0 ;
  wire \ValorTDC[6]_i_6_n_0 ;
  wire \ValorTDC[6]_i_7_n_0 ;
  wire \ValorTDC[6]_i_8_n_0 ;
  wire \ValorTDC[6]_i_9_n_0 ;
  wire \ValorTDC[7]_i_10_n_0 ;
  wire \ValorTDC[7]_i_11_n_0 ;
  wire \ValorTDC[7]_i_12_n_0 ;
  wire \ValorTDC[7]_i_13_n_0 ;
  wire \ValorTDC[7]_i_14_n_0 ;
  wire \ValorTDC[7]_i_15_n_0 ;
  wire \ValorTDC[7]_i_16_n_0 ;
  wire \ValorTDC[7]_i_17_n_0 ;
  wire \ValorTDC[7]_i_18_n_0 ;
  wire \ValorTDC[7]_i_19_n_0 ;
  wire \ValorTDC[7]_i_20_n_0 ;
  wire \ValorTDC[7]_i_21_n_0 ;
  wire \ValorTDC[7]_i_22_n_0 ;
  wire \ValorTDC[7]_i_23_n_0 ;
  wire \ValorTDC[7]_i_24_n_0 ;
  wire \ValorTDC[7]_i_25_n_0 ;
  wire \ValorTDC[7]_i_26_n_0 ;
  wire \ValorTDC[7]_i_27_n_0 ;
  wire \ValorTDC[7]_i_28_n_0 ;
  wire \ValorTDC[7]_i_29_n_0 ;
  wire \ValorTDC[7]_i_2_n_0 ;
  wire \ValorTDC[7]_i_30_n_0 ;
  wire \ValorTDC[7]_i_31_n_0 ;
  wire \ValorTDC[7]_i_32_n_0 ;
  wire \ValorTDC[7]_i_33_n_0 ;
  wire \ValorTDC[7]_i_34_n_0 ;
  wire \ValorTDC[7]_i_35_n_0 ;
  wire \ValorTDC[7]_i_36_n_0 ;
  wire \ValorTDC[7]_i_37_n_0 ;
  wire \ValorTDC[7]_i_38_n_0 ;
  wire \ValorTDC[7]_i_39_n_0 ;
  wire \ValorTDC[7]_i_3_n_0 ;
  wire \ValorTDC[7]_i_40_n_0 ;
  wire \ValorTDC[7]_i_41_n_0 ;
  wire \ValorTDC[7]_i_42_n_0 ;
  wire \ValorTDC[7]_i_43_n_0 ;
  wire \ValorTDC[7]_i_44_n_0 ;
  wire \ValorTDC[7]_i_45_n_0 ;
  wire \ValorTDC[7]_i_46_n_0 ;
  wire \ValorTDC[7]_i_47_n_0 ;
  wire \ValorTDC[7]_i_48_n_0 ;
  wire \ValorTDC[7]_i_49_n_0 ;
  wire \ValorTDC[7]_i_4_n_0 ;
  wire \ValorTDC[7]_i_50_n_0 ;
  wire \ValorTDC[7]_i_51_n_0 ;
  wire \ValorTDC[7]_i_52_n_0 ;
  wire \ValorTDC[7]_i_5_n_0 ;
  wire \ValorTDC[7]_i_6_n_0 ;
  wire \ValorTDC[7]_i_7_n_0 ;
  wire \ValorTDC[7]_i_8_n_0 ;
  wire \ValorTDC[7]_i_9_n_0 ;
  wire \ValorTDC[8]_i_10_n_0 ;
  wire \ValorTDC[8]_i_11_n_0 ;
  wire \ValorTDC[8]_i_12_n_0 ;
  wire \ValorTDC[8]_i_13_n_0 ;
  wire \ValorTDC[8]_i_14_n_0 ;
  wire \ValorTDC[8]_i_15_n_0 ;
  wire \ValorTDC[8]_i_16_n_0 ;
  wire \ValorTDC[8]_i_17_n_0 ;
  wire \ValorTDC[8]_i_18_n_0 ;
  wire \ValorTDC[8]_i_19_n_0 ;
  wire \ValorTDC[8]_i_20_n_0 ;
  wire \ValorTDC[8]_i_21_n_0 ;
  wire \ValorTDC[8]_i_22_n_0 ;
  wire \ValorTDC[8]_i_23_n_0 ;
  wire \ValorTDC[8]_i_24_n_0 ;
  wire \ValorTDC[8]_i_25_n_0 ;
  wire \ValorTDC[8]_i_26_n_0 ;
  wire \ValorTDC[8]_i_27_n_0 ;
  wire \ValorTDC[8]_i_28_n_0 ;
  wire \ValorTDC[8]_i_29_n_0 ;
  wire \ValorTDC[8]_i_2_n_0 ;
  wire \ValorTDC[8]_i_30_n_0 ;
  wire \ValorTDC[8]_i_31_n_0 ;
  wire \ValorTDC[8]_i_32_n_0 ;
  wire \ValorTDC[8]_i_33_n_0 ;
  wire \ValorTDC[8]_i_34_n_0 ;
  wire \ValorTDC[8]_i_35_n_0 ;
  wire \ValorTDC[8]_i_36_n_0 ;
  wire \ValorTDC[8]_i_37_n_0 ;
  wire \ValorTDC[8]_i_38_n_0 ;
  wire \ValorTDC[8]_i_39_n_0 ;
  wire \ValorTDC[8]_i_3_n_0 ;
  wire \ValorTDC[8]_i_40_n_0 ;
  wire \ValorTDC[8]_i_4_n_0 ;
  wire \ValorTDC[8]_i_5_n_0 ;
  wire \ValorTDC[8]_i_6_n_0 ;
  wire \ValorTDC[8]_i_7_n_0 ;
  wire \ValorTDC[8]_i_8_n_0 ;
  wire \ValorTDC[8]_i_9_n_0 ;
  wire \ValorTDC[9]_i_10_n_0 ;
  wire \ValorTDC[9]_i_11_n_0 ;
  wire \ValorTDC[9]_i_12_n_0 ;
  wire \ValorTDC[9]_i_13_n_0 ;
  wire \ValorTDC[9]_i_14_n_0 ;
  wire \ValorTDC[9]_i_15_n_0 ;
  wire \ValorTDC[9]_i_16_n_0 ;
  wire \ValorTDC[9]_i_17_n_0 ;
  wire \ValorTDC[9]_i_18_n_0 ;
  wire \ValorTDC[9]_i_19_n_0 ;
  wire \ValorTDC[9]_i_20_n_0 ;
  wire \ValorTDC[9]_i_21_n_0 ;
  wire \ValorTDC[9]_i_22_n_0 ;
  wire \ValorTDC[9]_i_23_n_0 ;
  wire \ValorTDC[9]_i_2_n_0 ;
  wire \ValorTDC[9]_i_3_n_0 ;
  wire \ValorTDC[9]_i_4_n_0 ;
  wire \ValorTDC[9]_i_5_n_0 ;
  wire \ValorTDC[9]_i_6_n_0 ;
  wire \ValorTDC[9]_i_7_n_0 ;
  wire \ValorTDC[9]_i_8_n_0 ;
  wire \ValorTDC[9]_i_9_n_0 ;
  wire iClk;
  wire iClk_IBUF;
  wire iClk_IBUF_BUFG;
  wire iHit;
  wire iHit_IBUF;
  wire [23:0]oTDC;
  wire [14:0]oTDC_OBUF;
  wire [119:0]taps;
  wire [119:0]taps_OBUF;
  wire [119:0]NLW_u_FineDelay_outFF_UNCONNECTED;

initial begin
 $sdf_annotate("top_tb_time_synth.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'h2)) 
    DelayCounter_i_1
       (.I0(StartDelay),
        .I1(StopDelay),
        .O(DelayCounter_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    DelayCounter_reg
       (.C(iClk_IBUF_BUFG),
        .CE(1'b1),
        .D(DelayCounter_i_1_n_0),
        .Q(StopDelay),
        .R(1'b0));
  OBUF \FFStart_OBUF[0]_inst 
       (.I(FFStart_OBUF[0]),
        .O(FFStart[0]));
  OBUF \FFStart_OBUF[100]_inst 
       (.I(FFStart_OBUF[100]),
        .O(FFStart[100]));
  OBUF \FFStart_OBUF[101]_inst 
       (.I(FFStart_OBUF[101]),
        .O(FFStart[101]));
  OBUF \FFStart_OBUF[102]_inst 
       (.I(FFStart_OBUF[102]),
        .O(FFStart[102]));
  OBUF \FFStart_OBUF[103]_inst 
       (.I(FFStart_OBUF[103]),
        .O(FFStart[103]));
  OBUF \FFStart_OBUF[104]_inst 
       (.I(FFStart_OBUF[104]),
        .O(FFStart[104]));
  OBUF \FFStart_OBUF[105]_inst 
       (.I(FFStart_OBUF[105]),
        .O(FFStart[105]));
  OBUF \FFStart_OBUF[106]_inst 
       (.I(FFStart_OBUF[106]),
        .O(FFStart[106]));
  OBUF \FFStart_OBUF[107]_inst 
       (.I(FFStart_OBUF[107]),
        .O(FFStart[107]));
  OBUF \FFStart_OBUF[108]_inst 
       (.I(FFStart_OBUF[108]),
        .O(FFStart[108]));
  OBUF \FFStart_OBUF[109]_inst 
       (.I(FFStart_OBUF[109]),
        .O(FFStart[109]));
  OBUF \FFStart_OBUF[10]_inst 
       (.I(FFStart_OBUF[10]),
        .O(FFStart[10]));
  OBUF \FFStart_OBUF[110]_inst 
       (.I(FFStart_OBUF[110]),
        .O(FFStart[110]));
  OBUF \FFStart_OBUF[111]_inst 
       (.I(FFStart_OBUF[111]),
        .O(FFStart[111]));
  OBUF \FFStart_OBUF[112]_inst 
       (.I(FFStart_OBUF[112]),
        .O(FFStart[112]));
  OBUF \FFStart_OBUF[113]_inst 
       (.I(FFStart_OBUF[113]),
        .O(FFStart[113]));
  OBUF \FFStart_OBUF[114]_inst 
       (.I(FFStart_OBUF[114]),
        .O(FFStart[114]));
  OBUF \FFStart_OBUF[115]_inst 
       (.I(FFStart_OBUF[115]),
        .O(FFStart[115]));
  OBUF \FFStart_OBUF[116]_inst 
       (.I(FFStart_OBUF[116]),
        .O(FFStart[116]));
  OBUF \FFStart_OBUF[117]_inst 
       (.I(FFStart_OBUF[117]),
        .O(FFStart[117]));
  OBUF \FFStart_OBUF[118]_inst 
       (.I(FFStart_OBUF[118]),
        .O(FFStart[118]));
  OBUF \FFStart_OBUF[119]_inst 
       (.I(FFStart_OBUF[119]),
        .O(FFStart[119]));
  OBUF \FFStart_OBUF[11]_inst 
       (.I(FFStart_OBUF[11]),
        .O(FFStart[11]));
  OBUF \FFStart_OBUF[12]_inst 
       (.I(FFStart_OBUF[12]),
        .O(FFStart[12]));
  OBUF \FFStart_OBUF[13]_inst 
       (.I(FFStart_OBUF[13]),
        .O(FFStart[13]));
  OBUF \FFStart_OBUF[14]_inst 
       (.I(FFStart_OBUF[14]),
        .O(FFStart[14]));
  OBUF \FFStart_OBUF[15]_inst 
       (.I(FFStart_OBUF[15]),
        .O(FFStart[15]));
  OBUF \FFStart_OBUF[16]_inst 
       (.I(FFStart_OBUF[16]),
        .O(FFStart[16]));
  OBUF \FFStart_OBUF[17]_inst 
       (.I(FFStart_OBUF[17]),
        .O(FFStart[17]));
  OBUF \FFStart_OBUF[18]_inst 
       (.I(FFStart_OBUF[18]),
        .O(FFStart[18]));
  OBUF \FFStart_OBUF[19]_inst 
       (.I(FFStart_OBUF[19]),
        .O(FFStart[19]));
  OBUF \FFStart_OBUF[1]_inst 
       (.I(FFStart_OBUF[1]),
        .O(FFStart[1]));
  OBUF \FFStart_OBUF[20]_inst 
       (.I(FFStart_OBUF[20]),
        .O(FFStart[20]));
  OBUF \FFStart_OBUF[21]_inst 
       (.I(FFStart_OBUF[21]),
        .O(FFStart[21]));
  OBUF \FFStart_OBUF[22]_inst 
       (.I(FFStart_OBUF[22]),
        .O(FFStart[22]));
  OBUF \FFStart_OBUF[23]_inst 
       (.I(FFStart_OBUF[23]),
        .O(FFStart[23]));
  OBUF \FFStart_OBUF[24]_inst 
       (.I(FFStart_OBUF[24]),
        .O(FFStart[24]));
  OBUF \FFStart_OBUF[25]_inst 
       (.I(FFStart_OBUF[25]),
        .O(FFStart[25]));
  OBUF \FFStart_OBUF[26]_inst 
       (.I(FFStart_OBUF[26]),
        .O(FFStart[26]));
  OBUF \FFStart_OBUF[27]_inst 
       (.I(FFStart_OBUF[27]),
        .O(FFStart[27]));
  OBUF \FFStart_OBUF[28]_inst 
       (.I(FFStart_OBUF[28]),
        .O(FFStart[28]));
  OBUF \FFStart_OBUF[29]_inst 
       (.I(FFStart_OBUF[29]),
        .O(FFStart[29]));
  OBUF \FFStart_OBUF[2]_inst 
       (.I(FFStart_OBUF[2]),
        .O(FFStart[2]));
  OBUF \FFStart_OBUF[30]_inst 
       (.I(FFStart_OBUF[30]),
        .O(FFStart[30]));
  OBUF \FFStart_OBUF[31]_inst 
       (.I(FFStart_OBUF[31]),
        .O(FFStart[31]));
  OBUF \FFStart_OBUF[32]_inst 
       (.I(FFStart_OBUF[32]),
        .O(FFStart[32]));
  OBUF \FFStart_OBUF[33]_inst 
       (.I(FFStart_OBUF[33]),
        .O(FFStart[33]));
  OBUF \FFStart_OBUF[34]_inst 
       (.I(FFStart_OBUF[34]),
        .O(FFStart[34]));
  OBUF \FFStart_OBUF[35]_inst 
       (.I(FFStart_OBUF[35]),
        .O(FFStart[35]));
  OBUF \FFStart_OBUF[36]_inst 
       (.I(FFStart_OBUF[36]),
        .O(FFStart[36]));
  OBUF \FFStart_OBUF[37]_inst 
       (.I(FFStart_OBUF[37]),
        .O(FFStart[37]));
  OBUF \FFStart_OBUF[38]_inst 
       (.I(FFStart_OBUF[38]),
        .O(FFStart[38]));
  OBUF \FFStart_OBUF[39]_inst 
       (.I(FFStart_OBUF[39]),
        .O(FFStart[39]));
  OBUF \FFStart_OBUF[3]_inst 
       (.I(FFStart_OBUF[3]),
        .O(FFStart[3]));
  OBUF \FFStart_OBUF[40]_inst 
       (.I(FFStart_OBUF[40]),
        .O(FFStart[40]));
  OBUF \FFStart_OBUF[41]_inst 
       (.I(FFStart_OBUF[41]),
        .O(FFStart[41]));
  OBUF \FFStart_OBUF[42]_inst 
       (.I(FFStart_OBUF[42]),
        .O(FFStart[42]));
  OBUF \FFStart_OBUF[43]_inst 
       (.I(FFStart_OBUF[43]),
        .O(FFStart[43]));
  OBUF \FFStart_OBUF[44]_inst 
       (.I(FFStart_OBUF[44]),
        .O(FFStart[44]));
  OBUF \FFStart_OBUF[45]_inst 
       (.I(FFStart_OBUF[45]),
        .O(FFStart[45]));
  OBUF \FFStart_OBUF[46]_inst 
       (.I(FFStart_OBUF[46]),
        .O(FFStart[46]));
  OBUF \FFStart_OBUF[47]_inst 
       (.I(FFStart_OBUF[47]),
        .O(FFStart[47]));
  OBUF \FFStart_OBUF[48]_inst 
       (.I(FFStart_OBUF[48]),
        .O(FFStart[48]));
  OBUF \FFStart_OBUF[49]_inst 
       (.I(FFStart_OBUF[49]),
        .O(FFStart[49]));
  OBUF \FFStart_OBUF[4]_inst 
       (.I(FFStart_OBUF[4]),
        .O(FFStart[4]));
  OBUF \FFStart_OBUF[50]_inst 
       (.I(FFStart_OBUF[50]),
        .O(FFStart[50]));
  OBUF \FFStart_OBUF[51]_inst 
       (.I(FFStart_OBUF[51]),
        .O(FFStart[51]));
  OBUF \FFStart_OBUF[52]_inst 
       (.I(FFStart_OBUF[52]),
        .O(FFStart[52]));
  OBUF \FFStart_OBUF[53]_inst 
       (.I(FFStart_OBUF[53]),
        .O(FFStart[53]));
  OBUF \FFStart_OBUF[54]_inst 
       (.I(FFStart_OBUF[54]),
        .O(FFStart[54]));
  OBUF \FFStart_OBUF[55]_inst 
       (.I(FFStart_OBUF[55]),
        .O(FFStart[55]));
  OBUF \FFStart_OBUF[56]_inst 
       (.I(FFStart_OBUF[56]),
        .O(FFStart[56]));
  OBUF \FFStart_OBUF[57]_inst 
       (.I(FFStart_OBUF[57]),
        .O(FFStart[57]));
  OBUF \FFStart_OBUF[58]_inst 
       (.I(FFStart_OBUF[58]),
        .O(FFStart[58]));
  OBUF \FFStart_OBUF[59]_inst 
       (.I(FFStart_OBUF[59]),
        .O(FFStart[59]));
  OBUF \FFStart_OBUF[5]_inst 
       (.I(FFStart_OBUF[5]),
        .O(FFStart[5]));
  OBUF \FFStart_OBUF[60]_inst 
       (.I(FFStart_OBUF[60]),
        .O(FFStart[60]));
  OBUF \FFStart_OBUF[61]_inst 
       (.I(FFStart_OBUF[61]),
        .O(FFStart[61]));
  OBUF \FFStart_OBUF[62]_inst 
       (.I(FFStart_OBUF[62]),
        .O(FFStart[62]));
  OBUF \FFStart_OBUF[63]_inst 
       (.I(FFStart_OBUF[63]),
        .O(FFStart[63]));
  OBUF \FFStart_OBUF[64]_inst 
       (.I(FFStart_OBUF[64]),
        .O(FFStart[64]));
  OBUF \FFStart_OBUF[65]_inst 
       (.I(FFStart_OBUF[65]),
        .O(FFStart[65]));
  OBUF \FFStart_OBUF[66]_inst 
       (.I(FFStart_OBUF[66]),
        .O(FFStart[66]));
  OBUF \FFStart_OBUF[67]_inst 
       (.I(FFStart_OBUF[67]),
        .O(FFStart[67]));
  OBUF \FFStart_OBUF[68]_inst 
       (.I(FFStart_OBUF[68]),
        .O(FFStart[68]));
  OBUF \FFStart_OBUF[69]_inst 
       (.I(FFStart_OBUF[69]),
        .O(FFStart[69]));
  OBUF \FFStart_OBUF[6]_inst 
       (.I(FFStart_OBUF[6]),
        .O(FFStart[6]));
  OBUF \FFStart_OBUF[70]_inst 
       (.I(FFStart_OBUF[70]),
        .O(FFStart[70]));
  OBUF \FFStart_OBUF[71]_inst 
       (.I(FFStart_OBUF[71]),
        .O(FFStart[71]));
  OBUF \FFStart_OBUF[72]_inst 
       (.I(FFStart_OBUF[72]),
        .O(FFStart[72]));
  OBUF \FFStart_OBUF[73]_inst 
       (.I(FFStart_OBUF[73]),
        .O(FFStart[73]));
  OBUF \FFStart_OBUF[74]_inst 
       (.I(FFStart_OBUF[74]),
        .O(FFStart[74]));
  OBUF \FFStart_OBUF[75]_inst 
       (.I(FFStart_OBUF[75]),
        .O(FFStart[75]));
  OBUF \FFStart_OBUF[76]_inst 
       (.I(FFStart_OBUF[76]),
        .O(FFStart[76]));
  OBUF \FFStart_OBUF[77]_inst 
       (.I(FFStart_OBUF[77]),
        .O(FFStart[77]));
  OBUF \FFStart_OBUF[78]_inst 
       (.I(FFStart_OBUF[78]),
        .O(FFStart[78]));
  OBUF \FFStart_OBUF[79]_inst 
       (.I(FFStart_OBUF[79]),
        .O(FFStart[79]));
  OBUF \FFStart_OBUF[7]_inst 
       (.I(FFStart_OBUF[7]),
        .O(FFStart[7]));
  OBUF \FFStart_OBUF[80]_inst 
       (.I(FFStart_OBUF[80]),
        .O(FFStart[80]));
  OBUF \FFStart_OBUF[81]_inst 
       (.I(FFStart_OBUF[81]),
        .O(FFStart[81]));
  OBUF \FFStart_OBUF[82]_inst 
       (.I(FFStart_OBUF[82]),
        .O(FFStart[82]));
  OBUF \FFStart_OBUF[83]_inst 
       (.I(FFStart_OBUF[83]),
        .O(FFStart[83]));
  OBUF \FFStart_OBUF[84]_inst 
       (.I(FFStart_OBUF[84]),
        .O(FFStart[84]));
  OBUF \FFStart_OBUF[85]_inst 
       (.I(FFStart_OBUF[85]),
        .O(FFStart[85]));
  OBUF \FFStart_OBUF[86]_inst 
       (.I(FFStart_OBUF[86]),
        .O(FFStart[86]));
  OBUF \FFStart_OBUF[87]_inst 
       (.I(FFStart_OBUF[87]),
        .O(FFStart[87]));
  OBUF \FFStart_OBUF[88]_inst 
       (.I(FFStart_OBUF[88]),
        .O(FFStart[88]));
  OBUF \FFStart_OBUF[89]_inst 
       (.I(FFStart_OBUF[89]),
        .O(FFStart[89]));
  OBUF \FFStart_OBUF[8]_inst 
       (.I(FFStart_OBUF[8]),
        .O(FFStart[8]));
  OBUF \FFStart_OBUF[90]_inst 
       (.I(FFStart_OBUF[90]),
        .O(FFStart[90]));
  OBUF \FFStart_OBUF[91]_inst 
       (.I(FFStart_OBUF[91]),
        .O(FFStart[91]));
  OBUF \FFStart_OBUF[92]_inst 
       (.I(FFStart_OBUF[92]),
        .O(FFStart[92]));
  OBUF \FFStart_OBUF[93]_inst 
       (.I(FFStart_OBUF[93]),
        .O(FFStart[93]));
  OBUF \FFStart_OBUF[94]_inst 
       (.I(FFStart_OBUF[94]),
        .O(FFStart[94]));
  OBUF \FFStart_OBUF[95]_inst 
       (.I(FFStart_OBUF[95]),
        .O(FFStart[95]));
  OBUF \FFStart_OBUF[96]_inst 
       (.I(FFStart_OBUF[96]),
        .O(FFStart[96]));
  OBUF \FFStart_OBUF[97]_inst 
       (.I(FFStart_OBUF[97]),
        .O(FFStart[97]));
  OBUF \FFStart_OBUF[98]_inst 
       (.I(FFStart_OBUF[98]),
        .O(FFStart[98]));
  OBUF \FFStart_OBUF[99]_inst 
       (.I(FFStart_OBUF[99]),
        .O(FFStart[99]));
  OBUF \FFStart_OBUF[9]_inst 
       (.I(FFStart_OBUF[9]),
        .O(FFStart[9]));
  OBUF \FFStop_OBUF[0]_inst 
       (.I(FFStop_OBUF[0]),
        .O(FFStop[0]));
  OBUF \FFStop_OBUF[100]_inst 
       (.I(FFStop_OBUF[100]),
        .O(FFStop[100]));
  OBUF \FFStop_OBUF[101]_inst 
       (.I(FFStop_OBUF[101]),
        .O(FFStop[101]));
  OBUF \FFStop_OBUF[102]_inst 
       (.I(FFStop_OBUF[102]),
        .O(FFStop[102]));
  OBUF \FFStop_OBUF[103]_inst 
       (.I(FFStop_OBUF[103]),
        .O(FFStop[103]));
  OBUF \FFStop_OBUF[104]_inst 
       (.I(FFStop_OBUF[104]),
        .O(FFStop[104]));
  OBUF \FFStop_OBUF[105]_inst 
       (.I(FFStop_OBUF[105]),
        .O(FFStop[105]));
  OBUF \FFStop_OBUF[106]_inst 
       (.I(FFStop_OBUF[106]),
        .O(FFStop[106]));
  OBUF \FFStop_OBUF[107]_inst 
       (.I(FFStop_OBUF[107]),
        .O(FFStop[107]));
  OBUF \FFStop_OBUF[108]_inst 
       (.I(FFStop_OBUF[108]),
        .O(FFStop[108]));
  OBUF \FFStop_OBUF[109]_inst 
       (.I(FFStop_OBUF[109]),
        .O(FFStop[109]));
  OBUF \FFStop_OBUF[10]_inst 
       (.I(FFStop_OBUF[10]),
        .O(FFStop[10]));
  OBUF \FFStop_OBUF[110]_inst 
       (.I(FFStop_OBUF[110]),
        .O(FFStop[110]));
  OBUF \FFStop_OBUF[111]_inst 
       (.I(FFStop_OBUF[111]),
        .O(FFStop[111]));
  OBUF \FFStop_OBUF[112]_inst 
       (.I(FFStop_OBUF[112]),
        .O(FFStop[112]));
  OBUF \FFStop_OBUF[113]_inst 
       (.I(FFStop_OBUF[113]),
        .O(FFStop[113]));
  OBUF \FFStop_OBUF[114]_inst 
       (.I(FFStop_OBUF[114]),
        .O(FFStop[114]));
  OBUF \FFStop_OBUF[115]_inst 
       (.I(FFStop_OBUF[115]),
        .O(FFStop[115]));
  OBUF \FFStop_OBUF[116]_inst 
       (.I(FFStop_OBUF[116]),
        .O(FFStop[116]));
  OBUF \FFStop_OBUF[117]_inst 
       (.I(FFStop_OBUF[117]),
        .O(FFStop[117]));
  OBUF \FFStop_OBUF[118]_inst 
       (.I(FFStop_OBUF[118]),
        .O(FFStop[118]));
  OBUF \FFStop_OBUF[119]_inst 
       (.I(FFStop_OBUF[119]),
        .O(FFStop[119]));
  OBUF \FFStop_OBUF[11]_inst 
       (.I(FFStop_OBUF[11]),
        .O(FFStop[11]));
  OBUF \FFStop_OBUF[12]_inst 
       (.I(FFStop_OBUF[12]),
        .O(FFStop[12]));
  OBUF \FFStop_OBUF[13]_inst 
       (.I(FFStop_OBUF[13]),
        .O(FFStop[13]));
  OBUF \FFStop_OBUF[14]_inst 
       (.I(FFStop_OBUF[14]),
        .O(FFStop[14]));
  OBUF \FFStop_OBUF[15]_inst 
       (.I(FFStop_OBUF[15]),
        .O(FFStop[15]));
  OBUF \FFStop_OBUF[16]_inst 
       (.I(FFStop_OBUF[16]),
        .O(FFStop[16]));
  OBUF \FFStop_OBUF[17]_inst 
       (.I(FFStop_OBUF[17]),
        .O(FFStop[17]));
  OBUF \FFStop_OBUF[18]_inst 
       (.I(FFStop_OBUF[18]),
        .O(FFStop[18]));
  OBUF \FFStop_OBUF[19]_inst 
       (.I(FFStop_OBUF[19]),
        .O(FFStop[19]));
  OBUF \FFStop_OBUF[1]_inst 
       (.I(FFStop_OBUF[1]),
        .O(FFStop[1]));
  OBUF \FFStop_OBUF[20]_inst 
       (.I(FFStop_OBUF[20]),
        .O(FFStop[20]));
  OBUF \FFStop_OBUF[21]_inst 
       (.I(FFStop_OBUF[21]),
        .O(FFStop[21]));
  OBUF \FFStop_OBUF[22]_inst 
       (.I(FFStop_OBUF[22]),
        .O(FFStop[22]));
  OBUF \FFStop_OBUF[23]_inst 
       (.I(FFStop_OBUF[23]),
        .O(FFStop[23]));
  OBUF \FFStop_OBUF[24]_inst 
       (.I(FFStop_OBUF[24]),
        .O(FFStop[24]));
  OBUF \FFStop_OBUF[25]_inst 
       (.I(FFStop_OBUF[25]),
        .O(FFStop[25]));
  OBUF \FFStop_OBUF[26]_inst 
       (.I(FFStop_OBUF[26]),
        .O(FFStop[26]));
  OBUF \FFStop_OBUF[27]_inst 
       (.I(FFStop_OBUF[27]),
        .O(FFStop[27]));
  OBUF \FFStop_OBUF[28]_inst 
       (.I(FFStop_OBUF[28]),
        .O(FFStop[28]));
  OBUF \FFStop_OBUF[29]_inst 
       (.I(FFStop_OBUF[29]),
        .O(FFStop[29]));
  OBUF \FFStop_OBUF[2]_inst 
       (.I(FFStop_OBUF[2]),
        .O(FFStop[2]));
  OBUF \FFStop_OBUF[30]_inst 
       (.I(FFStop_OBUF[30]),
        .O(FFStop[30]));
  OBUF \FFStop_OBUF[31]_inst 
       (.I(FFStop_OBUF[31]),
        .O(FFStop[31]));
  OBUF \FFStop_OBUF[32]_inst 
       (.I(FFStop_OBUF[32]),
        .O(FFStop[32]));
  OBUF \FFStop_OBUF[33]_inst 
       (.I(FFStop_OBUF[33]),
        .O(FFStop[33]));
  OBUF \FFStop_OBUF[34]_inst 
       (.I(FFStop_OBUF[34]),
        .O(FFStop[34]));
  OBUF \FFStop_OBUF[35]_inst 
       (.I(FFStop_OBUF[35]),
        .O(FFStop[35]));
  OBUF \FFStop_OBUF[36]_inst 
       (.I(FFStop_OBUF[36]),
        .O(FFStop[36]));
  OBUF \FFStop_OBUF[37]_inst 
       (.I(FFStop_OBUF[37]),
        .O(FFStop[37]));
  OBUF \FFStop_OBUF[38]_inst 
       (.I(FFStop_OBUF[38]),
        .O(FFStop[38]));
  OBUF \FFStop_OBUF[39]_inst 
       (.I(FFStop_OBUF[39]),
        .O(FFStop[39]));
  OBUF \FFStop_OBUF[3]_inst 
       (.I(FFStop_OBUF[3]),
        .O(FFStop[3]));
  OBUF \FFStop_OBUF[40]_inst 
       (.I(FFStop_OBUF[40]),
        .O(FFStop[40]));
  OBUF \FFStop_OBUF[41]_inst 
       (.I(FFStop_OBUF[41]),
        .O(FFStop[41]));
  OBUF \FFStop_OBUF[42]_inst 
       (.I(FFStop_OBUF[42]),
        .O(FFStop[42]));
  OBUF \FFStop_OBUF[43]_inst 
       (.I(FFStop_OBUF[43]),
        .O(FFStop[43]));
  OBUF \FFStop_OBUF[44]_inst 
       (.I(FFStop_OBUF[44]),
        .O(FFStop[44]));
  OBUF \FFStop_OBUF[45]_inst 
       (.I(FFStop_OBUF[45]),
        .O(FFStop[45]));
  OBUF \FFStop_OBUF[46]_inst 
       (.I(FFStop_OBUF[46]),
        .O(FFStop[46]));
  OBUF \FFStop_OBUF[47]_inst 
       (.I(FFStop_OBUF[47]),
        .O(FFStop[47]));
  OBUF \FFStop_OBUF[48]_inst 
       (.I(FFStop_OBUF[48]),
        .O(FFStop[48]));
  OBUF \FFStop_OBUF[49]_inst 
       (.I(FFStop_OBUF[49]),
        .O(FFStop[49]));
  OBUF \FFStop_OBUF[4]_inst 
       (.I(FFStop_OBUF[4]),
        .O(FFStop[4]));
  OBUF \FFStop_OBUF[50]_inst 
       (.I(FFStop_OBUF[50]),
        .O(FFStop[50]));
  OBUF \FFStop_OBUF[51]_inst 
       (.I(FFStop_OBUF[51]),
        .O(FFStop[51]));
  OBUF \FFStop_OBUF[52]_inst 
       (.I(FFStop_OBUF[52]),
        .O(FFStop[52]));
  OBUF \FFStop_OBUF[53]_inst 
       (.I(FFStop_OBUF[53]),
        .O(FFStop[53]));
  OBUF \FFStop_OBUF[54]_inst 
       (.I(FFStop_OBUF[54]),
        .O(FFStop[54]));
  OBUF \FFStop_OBUF[55]_inst 
       (.I(FFStop_OBUF[55]),
        .O(FFStop[55]));
  OBUF \FFStop_OBUF[56]_inst 
       (.I(FFStop_OBUF[56]),
        .O(FFStop[56]));
  OBUF \FFStop_OBUF[57]_inst 
       (.I(FFStop_OBUF[57]),
        .O(FFStop[57]));
  OBUF \FFStop_OBUF[58]_inst 
       (.I(FFStop_OBUF[58]),
        .O(FFStop[58]));
  OBUF \FFStop_OBUF[59]_inst 
       (.I(FFStop_OBUF[59]),
        .O(FFStop[59]));
  OBUF \FFStop_OBUF[5]_inst 
       (.I(FFStop_OBUF[5]),
        .O(FFStop[5]));
  OBUF \FFStop_OBUF[60]_inst 
       (.I(FFStop_OBUF[60]),
        .O(FFStop[60]));
  OBUF \FFStop_OBUF[61]_inst 
       (.I(FFStop_OBUF[61]),
        .O(FFStop[61]));
  OBUF \FFStop_OBUF[62]_inst 
       (.I(FFStop_OBUF[62]),
        .O(FFStop[62]));
  OBUF \FFStop_OBUF[63]_inst 
       (.I(FFStop_OBUF[63]),
        .O(FFStop[63]));
  OBUF \FFStop_OBUF[64]_inst 
       (.I(FFStop_OBUF[64]),
        .O(FFStop[64]));
  OBUF \FFStop_OBUF[65]_inst 
       (.I(FFStop_OBUF[65]),
        .O(FFStop[65]));
  OBUF \FFStop_OBUF[66]_inst 
       (.I(FFStop_OBUF[66]),
        .O(FFStop[66]));
  OBUF \FFStop_OBUF[67]_inst 
       (.I(FFStop_OBUF[67]),
        .O(FFStop[67]));
  OBUF \FFStop_OBUF[68]_inst 
       (.I(FFStop_OBUF[68]),
        .O(FFStop[68]));
  OBUF \FFStop_OBUF[69]_inst 
       (.I(FFStop_OBUF[69]),
        .O(FFStop[69]));
  OBUF \FFStop_OBUF[6]_inst 
       (.I(FFStop_OBUF[6]),
        .O(FFStop[6]));
  OBUF \FFStop_OBUF[70]_inst 
       (.I(FFStop_OBUF[70]),
        .O(FFStop[70]));
  OBUF \FFStop_OBUF[71]_inst 
       (.I(FFStop_OBUF[71]),
        .O(FFStop[71]));
  OBUF \FFStop_OBUF[72]_inst 
       (.I(FFStop_OBUF[72]),
        .O(FFStop[72]));
  OBUF \FFStop_OBUF[73]_inst 
       (.I(FFStop_OBUF[73]),
        .O(FFStop[73]));
  OBUF \FFStop_OBUF[74]_inst 
       (.I(FFStop_OBUF[74]),
        .O(FFStop[74]));
  OBUF \FFStop_OBUF[75]_inst 
       (.I(FFStop_OBUF[75]),
        .O(FFStop[75]));
  OBUF \FFStop_OBUF[76]_inst 
       (.I(FFStop_OBUF[76]),
        .O(FFStop[76]));
  OBUF \FFStop_OBUF[77]_inst 
       (.I(FFStop_OBUF[77]),
        .O(FFStop[77]));
  OBUF \FFStop_OBUF[78]_inst 
       (.I(FFStop_OBUF[78]),
        .O(FFStop[78]));
  OBUF \FFStop_OBUF[79]_inst 
       (.I(FFStop_OBUF[79]),
        .O(FFStop[79]));
  OBUF \FFStop_OBUF[7]_inst 
       (.I(FFStop_OBUF[7]),
        .O(FFStop[7]));
  OBUF \FFStop_OBUF[80]_inst 
       (.I(FFStop_OBUF[80]),
        .O(FFStop[80]));
  OBUF \FFStop_OBUF[81]_inst 
       (.I(FFStop_OBUF[81]),
        .O(FFStop[81]));
  OBUF \FFStop_OBUF[82]_inst 
       (.I(FFStop_OBUF[82]),
        .O(FFStop[82]));
  OBUF \FFStop_OBUF[83]_inst 
       (.I(FFStop_OBUF[83]),
        .O(FFStop[83]));
  OBUF \FFStop_OBUF[84]_inst 
       (.I(FFStop_OBUF[84]),
        .O(FFStop[84]));
  OBUF \FFStop_OBUF[85]_inst 
       (.I(FFStop_OBUF[85]),
        .O(FFStop[85]));
  OBUF \FFStop_OBUF[86]_inst 
       (.I(FFStop_OBUF[86]),
        .O(FFStop[86]));
  OBUF \FFStop_OBUF[87]_inst 
       (.I(FFStop_OBUF[87]),
        .O(FFStop[87]));
  OBUF \FFStop_OBUF[88]_inst 
       (.I(FFStop_OBUF[88]),
        .O(FFStop[88]));
  OBUF \FFStop_OBUF[89]_inst 
       (.I(FFStop_OBUF[89]),
        .O(FFStop[89]));
  OBUF \FFStop_OBUF[8]_inst 
       (.I(FFStop_OBUF[8]),
        .O(FFStop[8]));
  OBUF \FFStop_OBUF[90]_inst 
       (.I(FFStop_OBUF[90]),
        .O(FFStop[90]));
  OBUF \FFStop_OBUF[91]_inst 
       (.I(FFStop_OBUF[91]),
        .O(FFStop[91]));
  OBUF \FFStop_OBUF[92]_inst 
       (.I(FFStop_OBUF[92]),
        .O(FFStop[92]));
  OBUF \FFStop_OBUF[93]_inst 
       (.I(FFStop_OBUF[93]),
        .O(FFStop[93]));
  OBUF \FFStop_OBUF[94]_inst 
       (.I(FFStop_OBUF[94]),
        .O(FFStop[94]));
  OBUF \FFStop_OBUF[95]_inst 
       (.I(FFStop_OBUF[95]),
        .O(FFStop[95]));
  OBUF \FFStop_OBUF[96]_inst 
       (.I(FFStop_OBUF[96]),
        .O(FFStop[96]));
  OBUF \FFStop_OBUF[97]_inst 
       (.I(FFStop_OBUF[97]),
        .O(FFStop[97]));
  OBUF \FFStop_OBUF[98]_inst 
       (.I(FFStop_OBUF[98]),
        .O(FFStop[98]));
  OBUF \FFStop_OBUF[99]_inst 
       (.I(FFStop_OBUF[99]),
        .O(FFStop[99]));
  OBUF \FFStop_OBUF[9]_inst 
       (.I(FFStop_OBUF[9]),
        .O(FFStop[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFF57550000)) 
    \ValorTDC[0]_i_1 
       (.I0(\ValorTDC[0]_i_2_n_0 ),
        .I1(\ValorTDC[2]_i_3_n_0 ),
        .I2(\ValorTDC[0]_i_3_n_0 ),
        .I3(\ValorTDC[0]_i_4_n_0 ),
        .I4(\ValorTDC[6]_i_2_n_0 ),
        .I5(\ValorTDC[0]_i_5_n_0 ),
        .O(DecodedStop[0]));
  LUT6 #(
    .INIT(64'h00000000000000F2)) 
    \ValorTDC[0]_i_10 
       (.I0(\ValorTDC[5]_i_26_n_0 ),
        .I1(\ValorTDC[0]_i_29_n_0 ),
        .I2(\ValorTDC[3]_i_10_n_0 ),
        .I3(\ValorTDC[0]_i_30_n_0 ),
        .I4(\ValorTDC[5]_i_29_n_0 ),
        .I5(\ValorTDC[0]_i_31_n_0 ),
        .O(\ValorTDC[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \ValorTDC[0]_i_11 
       (.I0(\ValorTDC[0]_i_32_n_0 ),
        .I1(\ValorTDC[0]_i_33_n_0 ),
        .I2(\ValorTDC[4]_i_11_n_0 ),
        .I3(\ValorTDC[0]_i_34_n_0 ),
        .I4(\ValorTDC[4]_i_13_n_0 ),
        .O(\ValorTDC[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h08AA)) 
    \ValorTDC[0]_i_12 
       (.I0(\ValorTDC[0]_i_35_n_0 ),
        .I1(\ValorTDC[0]_i_36_n_0 ),
        .I2(\ValorTDC[0]_i_37_n_0 ),
        .I3(\ValorTDC[0]_i_38_n_0 ),
        .O(\ValorTDC[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000002AAAAAAAAA)) 
    \ValorTDC[0]_i_13 
       (.I0(\ValorTDC[0]_i_39_n_0 ),
        .I1(\ValorTDC[0]_i_40_n_0 ),
        .I2(\ValorTDC[2]_i_25_n_0 ),
        .I3(\ValorTDC[2]_i_24_n_0 ),
        .I4(\ValorTDC[2]_i_26_n_0 ),
        .I5(\ValorTDC[0]_i_41_n_0 ),
        .O(\ValorTDC[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ValorTDC[0]_i_14 
       (.I0(\ValorTDC[4]_i_14_n_0 ),
        .I1(\ValorTDC[3]_i_21_n_0 ),
        .I2(\ValorTDC[3]_i_22_n_0 ),
        .O(\ValorTDC[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEF)) 
    \ValorTDC[0]_i_15 
       (.I0(\ValorTDC[0]_i_42_n_0 ),
        .I1(\ValorTDC[1]_i_29_n_0 ),
        .I2(\ValorTDC[0]_i_43_n_0 ),
        .I3(\ValorTDC[0]_i_44_n_0 ),
        .I4(\ValorTDC[3]_i_14_n_0 ),
        .I5(\ValorTDC[0]_i_45_n_0 ),
        .O(\ValorTDC[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ValorTDC[0]_i_16 
       (.I0(\ValorTDC[0]_i_46_n_0 ),
        .I1(\ValorTDC[1]_i_10_n_0 ),
        .I2(\ValorTDC[0]_i_47_n_0 ),
        .O(\ValorTDC[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4F40404000000000)) 
    \ValorTDC[0]_i_17 
       (.I0(FFStop_OBUF[96]),
        .I1(FFStop_OBUF[97]),
        .I2(FFStop_OBUF[98]),
        .I3(FFStop_OBUF[102]),
        .I4(FFStop_OBUF[101]),
        .I5(\ValorTDC[5]_i_33_n_0 ),
        .O(\ValorTDC[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FB00FBFBFBFB)) 
    \ValorTDC[0]_i_18 
       (.I0(FFStop_OBUF[88]),
        .I1(FFStop_OBUF[92]),
        .I2(\ValorTDC[0]_i_48_n_0 ),
        .I3(\ValorTDC[0]_i_49_n_0 ),
        .I4(\ValorTDC[0]_i_50_n_0 ),
        .I5(\ValorTDC[6]_i_5_n_0 ),
        .O(\ValorTDC[0]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_19 
       (.I0(FFStop_OBUF[60]),
        .I1(FFStop_OBUF[59]),
        .I2(FFStop_OBUF[61]),
        .I3(FFStop_OBUF[62]),
        .I4(FFStop_OBUF[58]),
        .O(\ValorTDC[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h00007707)) 
    \ValorTDC[0]_i_2 
       (.I0(\ValorTDC[0]_i_6_n_0 ),
        .I1(\ValorTDC[6]_i_3_n_0 ),
        .I2(\ValorTDC[3]_i_7_n_0 ),
        .I3(\ValorTDC[0]_i_7_n_0 ),
        .I4(\ValorTDC[0]_i_8_n_0 ),
        .O(\ValorTDC[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F008888)) 
    \ValorTDC[0]_i_20 
       (.I0(FFStop_OBUF[65]),
        .I1(FFStop_OBUF[66]),
        .I2(FFStop_OBUF[60]),
        .I3(FFStop_OBUF[61]),
        .I4(FFStop_OBUF[62]),
        .I5(\ValorTDC[5]_i_31_n_0 ),
        .O(\ValorTDC[0]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \ValorTDC[0]_i_21 
       (.I0(FFStop_OBUF[73]),
        .I1(FFStop_OBUF[72]),
        .I2(FFStop_OBUF[74]),
        .I3(FFStop_OBUF[70]),
        .I4(FFStop_OBUF[71]),
        .O(\ValorTDC[0]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_22 
       (.I0(FFStop_OBUF[71]),
        .I1(FFStop_OBUF[70]),
        .I2(FFStop_OBUF[68]),
        .I3(FFStop_OBUF[69]),
        .I4(FFStop_OBUF[67]),
        .O(\ValorTDC[0]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \ValorTDC[0]_i_23 
       (.I0(FFStop_OBUF[69]),
        .I1(FFStop_OBUF[70]),
        .I2(FFStop_OBUF[71]),
        .I3(FFStop_OBUF[73]),
        .I4(FFStop_OBUF[72]),
        .O(\ValorTDC[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[0]_i_24 
       (.I0(FFStop_OBUF[67]),
        .I1(FFStop_OBUF[66]),
        .I2(FFStop_OBUF[65]),
        .I3(FFStop_OBUF[64]),
        .I4(FFStop_OBUF[68]),
        .O(\ValorTDC[0]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[0]_i_25 
       (.I0(FFStop_OBUF[83]),
        .I1(FFStop_OBUF[82]),
        .I2(FFStop_OBUF[81]),
        .I3(FFStop_OBUF[80]),
        .I4(FFStop_OBUF[84]),
        .O(\ValorTDC[0]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_26 
       (.I0(FFStop_OBUF[78]),
        .I1(FFStop_OBUF[79]),
        .I2(FFStop_OBUF[77]),
        .I3(FFStop_OBUF[80]),
        .I4(FFStop_OBUF[76]),
        .O(\ValorTDC[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \ValorTDC[0]_i_27 
       (.I0(\ValorTDC[5]_i_24_n_0 ),
        .I1(FFStop_OBUF[54]),
        .I2(FFStop_OBUF[53]),
        .I3(FFStop_OBUF[52]),
        .I4(FFStop_OBUF[55]),
        .I5(FFStop_OBUF[51]),
        .O(\ValorTDC[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAAAAAEEAAEE)) 
    \ValorTDC[0]_i_28 
       (.I0(\ValorTDC[0]_i_51_n_0 ),
        .I1(\ValorTDC[5]_i_22_n_0 ),
        .I2(FFStop_OBUF[46]),
        .I3(\ValorTDC[4]_i_15_n_0 ),
        .I4(FFStop_OBUF[47]),
        .I5(FFStop_OBUF[48]),
        .O(\ValorTDC[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[0]_i_29 
       (.I0(FFStop_OBUF[41]),
        .I1(FFStop_OBUF[40]),
        .I2(FFStop_OBUF[39]),
        .I3(FFStop_OBUF[38]),
        .I4(FFStop_OBUF[42]),
        .O(\ValorTDC[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h2022202200002022)) 
    \ValorTDC[0]_i_3 
       (.I0(\ValorTDC[4]_i_8_n_0 ),
        .I1(\ValorTDC[0]_i_9_n_0 ),
        .I2(\ValorTDC[0]_i_10_n_0 ),
        .I3(\ValorTDC[3]_i_9_n_0 ),
        .I4(\ValorTDC[0]_i_11_n_0 ),
        .I5(\ValorTDC[5]_i_2_n_0 ),
        .O(\ValorTDC[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_30 
       (.I0(FFStop_OBUF[46]),
        .I1(FFStop_OBUF[45]),
        .I2(FFStop_OBUF[47]),
        .I3(FFStop_OBUF[48]),
        .I4(FFStop_OBUF[44]),
        .O(\ValorTDC[0]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_31 
       (.I0(FFStop_OBUF[42]),
        .I1(FFStop_OBUF[43]),
        .I2(FFStop_OBUF[44]),
        .I3(FFStop_OBUF[41]),
        .I4(FFStop_OBUF[40]),
        .O(\ValorTDC[0]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[0]_i_32 
       (.I0(FFStop_OBUF[37]),
        .I1(FFStop_OBUF[36]),
        .I2(FFStop_OBUF[38]),
        .I3(FFStop_OBUF[34]),
        .I4(FFStop_OBUF[35]),
        .O(\ValorTDC[0]_i_32_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[0]_i_33 
       (.I0(FFStop_OBUF[30]),
        .I1(FFStop_OBUF[29]),
        .I2(FFStop_OBUF[31]),
        .I3(FFStop_OBUF[32]),
        .I4(FFStop_OBUF[28]),
        .O(\ValorTDC[0]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[0]_i_34 
       (.I0(FFStop_OBUF[35]),
        .I1(FFStop_OBUF[34]),
        .I2(FFStop_OBUF[33]),
        .I3(FFStop_OBUF[32]),
        .I4(FFStop_OBUF[36]),
        .O(\ValorTDC[0]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[0]_i_35 
       (.I0(FFStop_OBUF[18]),
        .I1(FFStop_OBUF[17]),
        .I2(FFStop_OBUF[19]),
        .I3(FFStop_OBUF[20]),
        .I4(FFStop_OBUF[16]),
        .O(\ValorTDC[0]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[0]_i_36 
       (.I0(FFStop_OBUF[14]),
        .I1(FFStop_OBUF[12]),
        .I2(FFStop_OBUF[13]),
        .I3(FFStop_OBUF[11]),
        .I4(FFStop_OBUF[10]),
        .O(\ValorTDC[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h440000000F000000)) 
    \ValorTDC[0]_i_37 
       (.I0(FFStop_OBUF[12]),
        .I1(FFStop_OBUF[13]),
        .I2(\ValorTDC[4]_i_18_n_0 ),
        .I3(FFStop_OBUF[16]),
        .I4(FFStop_OBUF[15]),
        .I5(FFStop_OBUF[14]),
        .O(\ValorTDC[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \ValorTDC[0]_i_38 
       (.I0(\ValorTDC[1]_i_24_n_0 ),
        .I1(FFStop_OBUF[15]),
        .I2(FFStop_OBUF[16]),
        .I3(FFStop_OBUF[19]),
        .I4(FFStop_OBUF[18]),
        .I5(FFStop_OBUF[17]),
        .O(\ValorTDC[0]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[0]_i_39 
       (.I0(FFStop_OBUF[9]),
        .I1(FFStop_OBUF[10]),
        .I2(FFStop_OBUF[11]),
        .I3(FFStop_OBUF[12]),
        .I4(FFStop_OBUF[8]),
        .O(\ValorTDC[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \ValorTDC[0]_i_4 
       (.I0(\ValorTDC[0]_i_12_n_0 ),
        .I1(\ValorTDC[0]_i_13_n_0 ),
        .I2(\ValorTDC[0]_i_14_n_0 ),
        .I3(\ValorTDC[1]_i_13_n_0 ),
        .I4(\ValorTDC[0]_i_15_n_0 ),
        .I5(\ValorTDC[4]_i_8_n_0 ),
        .O(\ValorTDC[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \ValorTDC[0]_i_40 
       (.I0(FFStop_OBUF[0]),
        .I1(FFStop_OBUF[1]),
        .I2(FFStop_OBUF[4]),
        .I3(FFStop_OBUF[2]),
        .I4(FFStop_OBUF[3]),
        .I5(\ValorTDC[0]_i_52_n_0 ),
        .O(\ValorTDC[0]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[0]_i_41 
       (.I0(FFStop_OBUF[9]),
        .I1(FFStop_OBUF[10]),
        .I2(FFStop_OBUF[11]),
        .I3(FFStop_OBUF[8]),
        .I4(FFStop_OBUF[7]),
        .O(\ValorTDC[0]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_42 
       (.I0(FFStop_OBUF[29]),
        .I1(FFStop_OBUF[30]),
        .I2(FFStop_OBUF[28]),
        .I3(FFStop_OBUF[27]),
        .I4(FFStop_OBUF[26]),
        .O(\ValorTDC[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BFBFBF)) 
    \ValorTDC[0]_i_43 
       (.I0(FFStop_OBUF[18]),
        .I1(FFStop_OBUF[19]),
        .I2(FFStop_OBUF[20]),
        .I3(FFStop_OBUF[23]),
        .I4(FFStop_OBUF[24]),
        .I5(\ValorTDC[0]_i_53_n_0 ),
        .O(\ValorTDC[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000000007474F000)) 
    \ValorTDC[0]_i_44 
       (.I0(FFStop_OBUF[21]),
        .I1(FFStop_OBUF[22]),
        .I2(FFStop_OBUF[26]),
        .I3(FFStop_OBUF[27]),
        .I4(FFStop_OBUF[23]),
        .I5(\ValorTDC[0]_i_54_n_0 ),
        .O(\ValorTDC[0]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_45 
       (.I0(FFStop_OBUF[24]),
        .I1(FFStop_OBUF[25]),
        .I2(FFStop_OBUF[23]),
        .I3(FFStop_OBUF[26]),
        .I4(FFStop_OBUF[22]),
        .O(\ValorTDC[0]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \ValorTDC[0]_i_46 
       (.I0(FFStop_OBUF[95]),
        .I1(FFStop_OBUF[94]),
        .I2(FFStop_OBUF[97]),
        .I3(FFStop_OBUF[98]),
        .I4(FFStop_OBUF[96]),
        .O(\ValorTDC[0]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_47 
       (.I0(FFStop_OBUF[94]),
        .I1(FFStop_OBUF[95]),
        .I2(FFStop_OBUF[96]),
        .I3(FFStop_OBUF[93]),
        .I4(FFStop_OBUF[92]),
        .O(\ValorTDC[0]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ValorTDC[0]_i_48 
       (.I0(FFStop_OBUF[90]),
        .I1(FFStop_OBUF[89]),
        .I2(FFStop_OBUF[91]),
        .O(\ValorTDC[0]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[0]_i_49 
       (.I0(FFStop_OBUF[86]),
        .I1(FFStop_OBUF[84]),
        .I2(FFStop_OBUF[85]),
        .I3(FFStop_OBUF[83]),
        .I4(FFStop_OBUF[82]),
        .O(\ValorTDC[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1F1F1FF)) 
    \ValorTDC[0]_i_5 
       (.I0(\ValorTDC[0]_i_16_n_0 ),
        .I1(\ValorTDC[4]_i_7_n_0 ),
        .I2(\ValorTDC[0]_i_17_n_0 ),
        .I3(\ValorTDC[6]_i_4_n_0 ),
        .I4(\ValorTDC[0]_i_18_n_0 ),
        .I5(\ValorTDC[6]_i_8_n_0 ),
        .O(\ValorTDC[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F008888)) 
    \ValorTDC[0]_i_50 
       (.I0(FFStop_OBUF[90]),
        .I1(FFStop_OBUF[89]),
        .I2(FFStop_OBUF[84]),
        .I3(FFStop_OBUF[85]),
        .I4(FFStop_OBUF[86]),
        .I5(\ValorTDC[6]_i_17_n_0 ),
        .O(\ValorTDC[0]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[0]_i_51 
       (.I0(FFStop_OBUF[52]),
        .I1(FFStop_OBUF[51]),
        .I2(FFStop_OBUF[53]),
        .I3(FFStop_OBUF[54]),
        .I4(FFStop_OBUF[50]),
        .O(\ValorTDC[0]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \ValorTDC[0]_i_52 
       (.I0(FFStop_OBUF[6]),
        .I1(FFStop_OBUF[4]),
        .I2(FFStop_OBUF[3]),
        .I3(FFStop_OBUF[2]),
        .I4(FFStop_OBUF[5]),
        .O(\ValorTDC[0]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[0]_i_53 
       (.I0(FFStop_OBUF[21]),
        .I1(FFStop_OBUF[22]),
        .O(\ValorTDC[0]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[0]_i_54 
       (.I0(FFStop_OBUF[24]),
        .I1(FFStop_OBUF[25]),
        .O(\ValorTDC[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABABABAA)) 
    \ValorTDC[0]_i_6 
       (.I0(\ValorTDC[0]_i_19_n_0 ),
        .I1(\ValorTDC[5]_i_19_n_0 ),
        .I2(\ValorTDC[1]_i_32_n_0 ),
        .I3(\ValorTDC[5]_i_18_n_0 ),
        .I4(\ValorTDC[5]_i_16_n_0 ),
        .I5(\ValorTDC[0]_i_20_n_0 ),
        .O(\ValorTDC[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8AAAA)) 
    \ValorTDC[0]_i_7 
       (.I0(\ValorTDC[0]_i_21_n_0 ),
        .I1(\ValorTDC[0]_i_22_n_0 ),
        .I2(\ValorTDC[6]_i_11_n_0 ),
        .I3(\ValorTDC[0]_i_23_n_0 ),
        .I4(\ValorTDC[6]_i_14_n_0 ),
        .I5(\ValorTDC[0]_i_24_n_0 ),
        .O(\ValorTDC[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAFAFAFBF)) 
    \ValorTDC[0]_i_8 
       (.I0(\ValorTDC[0]_i_25_n_0 ),
        .I1(\ValorTDC[4]_i_6_n_0 ),
        .I2(\ValorTDC[6]_i_23_n_0 ),
        .I3(\ValorTDC[3]_i_17_n_0 ),
        .I4(\ValorTDC[3]_i_15_n_0 ),
        .I5(\ValorTDC[0]_i_26_n_0 ),
        .O(\ValorTDC[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400040)) 
    \ValorTDC[0]_i_9 
       (.I0(FFStop_OBUF[52]),
        .I1(FFStop_OBUF[56]),
        .I2(FFStop_OBUF[55]),
        .I3(\ValorTDC[5]_i_23_n_0 ),
        .I4(\ValorTDC[0]_i_27_n_0 ),
        .I5(\ValorTDC[0]_i_28_n_0 ),
        .O(\ValorTDC[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEAAAAAAAA)) 
    \ValorTDC[10]_i_1 
       (.I0(\ValorTDC[10]_i_2_n_0 ),
        .I1(\ValorTDC[10]_i_3_n_0 ),
        .I2(\ValorTDC[10]_i_4_n_0 ),
        .I3(\ValorTDC[10]_i_5_n_0 ),
        .I4(\ValorTDC[10]_i_6_n_0 ),
        .I5(\ValorTDC[13]_i_2_n_0 ),
        .O(DecodedStart[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[10]_i_10 
       (.I0(\ValorTDC[10]_i_19_n_0 ),
        .I1(\ValorTDC[10]_i_20_n_0 ),
        .O(\ValorTDC[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFECEF)) 
    \ValorTDC[10]_i_11 
       (.I0(FFStart_OBUF[60]),
        .I1(FFStart_OBUF[58]),
        .I2(FFStart_OBUF[56]),
        .I3(FFStart_OBUF[55]),
        .I4(FFStart_OBUF[59]),
        .I5(FFStart_OBUF[57]),
        .O(\ValorTDC[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \ValorTDC[10]_i_12 
       (.I0(FFStart_OBUF[81]),
        .I1(FFStart_OBUF[80]),
        .I2(FFStart_OBUF[79]),
        .I3(FFStart_OBUF[82]),
        .I4(FFStart_OBUF[83]),
        .I5(\ValorTDC[13]_i_12_n_0 ),
        .O(\ValorTDC[10]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ValorTDC[10]_i_13 
       (.I0(\ValorTDC[10]_i_21_n_0 ),
        .I1(\ValorTDC[11]_i_10_n_0 ),
        .I2(\ValorTDC[11]_i_9_n_0 ),
        .O(\ValorTDC[10]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ValorTDC[10]_i_14 
       (.I0(\ValorTDC[10]_i_22_n_0 ),
        .I1(\ValorTDC[11]_i_9_n_0 ),
        .I2(\ValorTDC[12]_i_24_n_0 ),
        .I3(\ValorTDC[10]_i_23_n_0 ),
        .I4(\ValorTDC[12]_i_11_n_0 ),
        .O(\ValorTDC[10]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \ValorTDC[10]_i_15 
       (.I0(\ValorTDC[11]_i_11_n_0 ),
        .I1(\ValorTDC[11]_i_13_n_0 ),
        .I2(\ValorTDC[12]_i_3_n_0 ),
        .I3(\ValorTDC[11]_i_12_n_0 ),
        .O(\ValorTDC[10]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ValorTDC[10]_i_16 
       (.I0(\ValorTDC[10]_i_24_n_0 ),
        .I1(\ValorTDC[10]_i_25_n_0 ),
        .I2(\ValorTDC[10]_i_26_n_0 ),
        .O(\ValorTDC[10]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[10]_i_17 
       (.I0(FFStart_OBUF[27]),
        .I1(FFStart_OBUF[26]),
        .I2(FFStart_OBUF[23]),
        .I3(FFStart_OBUF[24]),
        .I4(FFStart_OBUF[25]),
        .O(\ValorTDC[10]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[10]_i_18 
       (.I0(FFStart_OBUF[25]),
        .I1(FFStart_OBUF[24]),
        .I2(FFStart_OBUF[28]),
        .I3(FFStart_OBUF[26]),
        .I4(FFStart_OBUF[27]),
        .I5(\ValorTDC[10]_i_27_n_0 ),
        .O(\ValorTDC[10]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \ValorTDC[10]_i_19 
       (.I0(FFStart_OBUF[64]),
        .I1(FFStart_OBUF[63]),
        .I2(FFStart_OBUF[62]),
        .I3(FFStart_OBUF[61]),
        .I4(FFStart_OBUF[60]),
        .I5(\ValorTDC[12]_i_17_n_0 ),
        .O(\ValorTDC[10]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ValorTDC[10]_i_2 
       (.I0(\ValorTDC[10]_i_7_n_0 ),
        .I1(\ValorTDC[12]_i_2_n_0 ),
        .O(\ValorTDC[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \ValorTDC[10]_i_20 
       (.I0(FFStart_OBUF[63]),
        .I1(FFStart_OBUF[62]),
        .I2(FFStart_OBUF[61]),
        .I3(FFStart_OBUF[59]),
        .I4(FFStart_OBUF[60]),
        .I5(\ValorTDC[12]_i_22_n_0 ),
        .O(\ValorTDC[10]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000074)) 
    \ValorTDC[10]_i_21 
       (.I0(FFStart_OBUF[50]),
        .I1(FFStart_OBUF[46]),
        .I2(FFStart_OBUF[45]),
        .I3(FFStart_OBUF[47]),
        .I4(FFStart_OBUF[48]),
        .I5(FFStart_OBUF[49]),
        .O(\ValorTDC[10]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[10]_i_22 
       (.I0(FFStart_OBUF[50]),
        .I1(FFStart_OBUF[48]),
        .I2(FFStart_OBUF[49]),
        .I3(FFStart_OBUF[47]),
        .I4(FFStart_OBUF[51]),
        .O(\ValorTDC[10]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[10]_i_23 
       (.I0(FFStart_OBUF[49]),
        .I1(FFStart_OBUF[48]),
        .I2(FFStart_OBUF[47]),
        .I3(FFStart_OBUF[45]),
        .I4(FFStart_OBUF[46]),
        .O(\ValorTDC[10]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF8B)) 
    \ValorTDC[10]_i_24 
       (.I0(FFStart_OBUF[12]),
        .I1(FFStart_OBUF[8]),
        .I2(FFStart_OBUF[7]),
        .I3(FFStart_OBUF[9]),
        .I4(FFStart_OBUF[11]),
        .I5(FFStart_OBUF[10]),
        .O(\ValorTDC[10]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FDF5FFF5FDF5)) 
    \ValorTDC[10]_i_25 
       (.I0(\ValorTDC[10]_i_28_n_0 ),
        .I1(FFStart_OBUF[12]),
        .I2(\ValorTDC[10]_i_29_n_0 ),
        .I3(\ValorTDC[10]_i_30_n_0 ),
        .I4(FFStart_OBUF[13]),
        .I5(FFStart_OBUF[17]),
        .O(\ValorTDC[10]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000202)) 
    \ValorTDC[10]_i_26 
       (.I0(FFStart_OBUF[9]),
        .I1(FFStart_OBUF[13]),
        .I2(FFStart_OBUF[12]),
        .I3(FFStart_OBUF[14]),
        .I4(FFStart_OBUF[11]),
        .I5(FFStart_OBUF[10]),
        .O(\ValorTDC[10]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000050C)) 
    \ValorTDC[10]_i_27 
       (.I0(FFStart_OBUF[30]),
        .I1(FFStart_OBUF[25]),
        .I2(FFStart_OBUF[27]),
        .I3(FFStart_OBUF[26]),
        .I4(FFStart_OBUF[28]),
        .I5(FFStart_OBUF[29]),
        .O(\ValorTDC[10]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ValorTDC[10]_i_28 
       (.I0(FFStart_OBUF[14]),
        .I1(FFStart_OBUF[15]),
        .I2(FFStart_OBUF[16]),
        .I3(FFStart_OBUF[17]),
        .I4(FFStart_OBUF[18]),
        .O(\ValorTDC[10]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[10]_i_29 
       (.I0(FFStart_OBUF[15]),
        .I1(FFStart_OBUF[14]),
        .I2(FFStart_OBUF[11]),
        .I3(FFStart_OBUF[12]),
        .I4(FFStart_OBUF[13]),
        .O(\ValorTDC[10]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFF8DFFFF8D8D8D8D)) 
    \ValorTDC[10]_i_3 
       (.I0(\ValorTDC[10]_i_8_n_0 ),
        .I1(\ValorTDC[10]_i_9_n_0 ),
        .I2(\ValorTDC[11]_i_7_n_0 ),
        .I3(\ValorTDC[10]_i_10_n_0 ),
        .I4(\ValorTDC[10]_i_11_n_0 ),
        .I5(\ValorTDC[13]_i_3_n_0 ),
        .O(\ValorTDC[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ValorTDC[10]_i_30 
       (.I0(FFStart_OBUF[16]),
        .I1(FFStart_OBUF[15]),
        .I2(FFStart_OBUF[14]),
        .O(\ValorTDC[10]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \ValorTDC[10]_i_4 
       (.I0(\ValorTDC[12]_i_5_n_0 ),
        .I1(\ValorTDC[13]_i_14_n_0 ),
        .I2(\ValorTDC[13]_i_13_n_0 ),
        .I3(\ValorTDC[10]_i_12_n_0 ),
        .I4(\ValorTDC[13]_i_10_n_0 ),
        .I5(\ValorTDC[13]_i_9_n_0 ),
        .O(\ValorTDC[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0045004545450045)) 
    \ValorTDC[10]_i_5 
       (.I0(\ValorTDC[10]_i_13_n_0 ),
        .I1(\ValorTDC[12]_i_14_n_0 ),
        .I2(\ValorTDC[10]_i_14_n_0 ),
        .I3(\ValorTDC[12]_i_4_n_0 ),
        .I4(\ValorTDC[11]_i_15_n_0 ),
        .I5(\ValorTDC[10]_i_15_n_0 ),
        .O(\ValorTDC[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFF)) 
    \ValorTDC[10]_i_6 
       (.I0(\ValorTDC[10]_i_16_n_0 ),
        .I1(\ValorTDC[11]_i_14_n_0 ),
        .I2(\ValorTDC[10]_i_17_n_0 ),
        .I3(\ValorTDC[10]_i_18_n_0 ),
        .I4(\ValorTDC[12]_i_4_n_0 ),
        .I5(\ValorTDC[11]_i_15_n_0 ),
        .O(\ValorTDC[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ValorTDC[10]_i_7 
       (.I0(\ValorTDC[13]_i_4_n_0 ),
        .I1(\ValorTDC[13]_i_5_n_0 ),
        .I2(\ValorTDC[13]_i_6_n_0 ),
        .I3(\ValorTDC[13]_i_7_n_0 ),
        .O(\ValorTDC[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[10]_i_8 
       (.I0(\ValorTDC[13]_i_13_n_0 ),
        .I1(\ValorTDC[13]_i_12_n_0 ),
        .I2(\ValorTDC[13]_i_11_n_0 ),
        .I3(\ValorTDC[13]_i_10_n_0 ),
        .I4(\ValorTDC[13]_i_9_n_0 ),
        .O(\ValorTDC[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[10]_i_9 
       (.I0(FFStart_OBUF[75]),
        .I1(FFStart_OBUF[74]),
        .I2(FFStart_OBUF[71]),
        .I3(FFStart_OBUF[72]),
        .I4(FFStart_OBUF[73]),
        .O(\ValorTDC[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h555455545554FFFF)) 
    \ValorTDC[11]_i_1 
       (.I0(\ValorTDC[11]_i_2_n_0 ),
        .I1(\ValorTDC[11]_i_3_n_0 ),
        .I2(\ValorTDC[11]_i_4_n_0 ),
        .I3(\ValorTDC[11]_i_5_n_0 ),
        .I4(\ValorTDC[12]_i_2_n_0 ),
        .I5(\ValorTDC[11]_i_6_n_0 ),
        .O(DecodedStart[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[11]_i_10 
       (.I0(FFStart_OBUF[49]),
        .I1(FFStart_OBUF[48]),
        .I2(FFStart_OBUF[50]),
        .I3(FFStart_OBUF[51]),
        .I4(FFStart_OBUF[52]),
        .I5(\ValorTDC[12]_i_24_n_0 ),
        .O(\ValorTDC[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C050F050C)) 
    \ValorTDC[11]_i_11 
       (.I0(FFStart_OBUF[39]),
        .I1(FFStart_OBUF[33]),
        .I2(\ValorTDC[11]_i_19_n_0 ),
        .I3(FFStart_OBUF[35]),
        .I4(FFStart_OBUF[34]),
        .I5(FFStart_OBUF[38]),
        .O(\ValorTDC[11]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFF08FFFF)) 
    \ValorTDC[11]_i_12 
       (.I0(\ValorTDC[11]_i_20_n_0 ),
        .I1(FFStart_OBUF[27]),
        .I2(FFStart_OBUF[31]),
        .I3(\ValorTDC[11]_i_21_n_0 ),
        .I4(\ValorTDC[11]_i_22_n_0 ),
        .O(\ValorTDC[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \ValorTDC[11]_i_13 
       (.I0(FFStart_OBUF[31]),
        .I1(FFStart_OBUF[30]),
        .I2(FFStart_OBUF[32]),
        .I3(FFStart_OBUF[33]),
        .I4(FFStart_OBUF[34]),
        .O(\ValorTDC[11]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ValorTDC[11]_i_14 
       (.I0(\ValorTDC[8]_i_20_n_0 ),
        .I1(\ValorTDC[11]_i_23_n_0 ),
        .O(\ValorTDC[11]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ValorTDC[11]_i_15 
       (.I0(\ValorTDC[12]_i_3_n_0 ),
        .I1(\ValorTDC[11]_i_12_n_0 ),
        .I2(\ValorTDC[11]_i_13_n_0 ),
        .O(\ValorTDC[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCC8C0C8CC)) 
    \ValorTDC[11]_i_16 
       (.I0(FFStart_OBUF[88]),
        .I1(\ValorTDC[13]_i_23_n_0 ),
        .I2(FFStart_OBUF[85]),
        .I3(FFStart_OBUF[84]),
        .I4(FFStart_OBUF[83]),
        .I5(\ValorTDC[13]_i_21_n_0 ),
        .O(\ValorTDC[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAF3)) 
    \ValorTDC[11]_i_17 
       (.I0(FFStart_OBUF[86]),
        .I1(FFStart_OBUF[81]),
        .I2(FFStart_OBUF[83]),
        .I3(FFStart_OBUF[82]),
        .I4(FFStart_OBUF[84]),
        .I5(FFStart_OBUF[85]),
        .O(\ValorTDC[11]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[11]_i_18 
       (.I0(FFStart_OBUF[53]),
        .I1(FFStart_OBUF[54]),
        .O(\ValorTDC[11]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[11]_i_19 
       (.I0(FFStart_OBUF[36]),
        .I1(FFStart_OBUF[37]),
        .O(\ValorTDC[11]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \ValorTDC[11]_i_2 
       (.I0(\ValorTDC[13]_i_2_n_0 ),
        .I1(\ValorTDC[13]_i_3_n_0 ),
        .I2(\ValorTDC[11]_i_7_n_0 ),
        .O(\ValorTDC[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ValorTDC[11]_i_20 
       (.I0(FFStart_OBUF[29]),
        .I1(FFStart_OBUF[28]),
        .I2(FFStart_OBUF[30]),
        .O(\ValorTDC[11]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \ValorTDC[11]_i_21 
       (.I0(FFStart_OBUF[31]),
        .I1(FFStart_OBUF[29]),
        .I2(FFStart_OBUF[32]),
        .I3(FFStart_OBUF[33]),
        .I4(FFStart_OBUF[30]),
        .O(\ValorTDC[11]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ValorTDC[11]_i_22 
       (.I0(FFStart_OBUF[28]),
        .I1(FFStart_OBUF[30]),
        .I2(FFStart_OBUF[31]),
        .I3(FFStart_OBUF[32]),
        .I4(FFStart_OBUF[29]),
        .O(\ValorTDC[11]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hCCC8CCC8CCC0CCCC)) 
    \ValorTDC[11]_i_23 
       (.I0(FFStart_OBUF[20]),
        .I1(\ValorTDC[8]_i_33_n_0 ),
        .I2(\ValorTDC[11]_i_24_n_0 ),
        .I3(FFStart_OBUF[19]),
        .I4(FFStart_OBUF[15]),
        .I5(FFStart_OBUF[16]),
        .O(\ValorTDC[11]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[11]_i_24 
       (.I0(FFStart_OBUF[17]),
        .I1(FFStart_OBUF[18]),
        .O(\ValorTDC[11]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF08)) 
    \ValorTDC[11]_i_3 
       (.I0(\ValorTDC[11]_i_8_n_0 ),
        .I1(FFStart_OBUF[47]),
        .I2(FFStart_OBUF[51]),
        .I3(\ValorTDC[11]_i_9_n_0 ),
        .I4(\ValorTDC[11]_i_10_n_0 ),
        .O(\ValorTDC[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h75300000)) 
    \ValorTDC[11]_i_4 
       (.I0(\ValorTDC[11]_i_11_n_0 ),
        .I1(\ValorTDC[12]_i_3_n_0 ),
        .I2(\ValorTDC[11]_i_12_n_0 ),
        .I3(\ValorTDC[11]_i_13_n_0 ),
        .I4(\ValorTDC[12]_i_4_n_0 ),
        .O(\ValorTDC[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \ValorTDC[11]_i_5 
       (.I0(\ValorTDC[10]_i_4_n_0 ),
        .I1(\ValorTDC[11]_i_14_n_0 ),
        .I2(\ValorTDC[12]_i_4_n_0 ),
        .I3(\ValorTDC[11]_i_15_n_0 ),
        .O(\ValorTDC[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \ValorTDC[11]_i_6 
       (.I0(\ValorTDC[11]_i_16_n_0 ),
        .I1(\ValorTDC[11]_i_17_n_0 ),
        .I2(\ValorTDC[13]_i_7_n_0 ),
        .I3(\ValorTDC[13]_i_6_n_0 ),
        .I4(\ValorTDC[13]_i_5_n_0 ),
        .I5(\ValorTDC[13]_i_4_n_0 ),
        .O(\ValorTDC[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001310)) 
    \ValorTDC[11]_i_7 
       (.I0(FFStart_OBUF[84]),
        .I1(FFStart_OBUF[81]),
        .I2(FFStart_OBUF[80]),
        .I3(FFStart_OBUF[79]),
        .I4(FFStart_OBUF[82]),
        .I5(FFStart_OBUF[83]),
        .O(\ValorTDC[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ValorTDC[11]_i_8 
       (.I0(FFStart_OBUF[49]),
        .I1(FFStart_OBUF[48]),
        .I2(FFStart_OBUF[50]),
        .O(\ValorTDC[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00110030)) 
    \ValorTDC[11]_i_9 
       (.I0(FFStart_OBUF[56]),
        .I1(FFStart_OBUF[55]),
        .I2(FFStart_OBUF[51]),
        .I3(\ValorTDC[11]_i_18_n_0 ),
        .I4(FFStart_OBUF[52]),
        .I5(\ValorTDC[12]_i_25_n_0 ),
        .O(\ValorTDC[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8F8F8F0F8F8)) 
    \ValorTDC[12]_i_1 
       (.I0(\ValorTDC[13]_i_2_n_0 ),
        .I1(\ValorTDC[13]_i_3_n_0 ),
        .I2(\ValorTDC[12]_i_2_n_0 ),
        .I3(\ValorTDC[12]_i_3_n_0 ),
        .I4(\ValorTDC[12]_i_4_n_0 ),
        .I5(\ValorTDC[12]_i_5_n_0 ),
        .O(DecodedStart[5]));
  LUT6 #(
    .INIT(64'h0000000700000004)) 
    \ValorTDC[12]_i_10 
       (.I0(FFStart_OBUF[38]),
        .I1(FFStart_OBUF[34]),
        .I2(FFStart_OBUF[35]),
        .I3(FFStart_OBUF[37]),
        .I4(FFStart_OBUF[36]),
        .I5(FFStart_OBUF[33]),
        .O(\ValorTDC[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF55FFCF)) 
    \ValorTDC[12]_i_11 
       (.I0(\ValorTDC[12]_i_23_n_0 ),
        .I1(FFStart_OBUF[47]),
        .I2(FFStart_OBUF[46]),
        .I3(FFStart_OBUF[49]),
        .I4(FFStart_OBUF[48]),
        .I5(FFStart_OBUF[50]),
        .O(\ValorTDC[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555545)) 
    \ValorTDC[12]_i_12 
       (.I0(\ValorTDC[12]_i_24_n_0 ),
        .I1(FFStart_OBUF[46]),
        .I2(FFStart_OBUF[45]),
        .I3(FFStart_OBUF[47]),
        .I4(FFStart_OBUF[48]),
        .I5(FFStart_OBUF[49]),
        .O(\ValorTDC[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFE)) 
    \ValorTDC[12]_i_13 
       (.I0(\ValorTDC[12]_i_25_n_0 ),
        .I1(\ValorTDC[12]_i_26_n_0 ),
        .I2(\ValorTDC[12]_i_27_n_0 ),
        .I3(FFStart_OBUF[51]),
        .I4(FFStart_OBUF[47]),
        .I5(\ValorTDC[11]_i_8_n_0 ),
        .O(\ValorTDC[12]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ValorTDC[12]_i_14 
       (.I0(\ValorTDC[12]_i_28_n_0 ),
        .I1(\ValorTDC[12]_i_29_n_0 ),
        .I2(\ValorTDC[12]_i_30_n_0 ),
        .I3(\ValorTDC[12]_i_31_n_0 ),
        .O(\ValorTDC[12]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \ValorTDC[12]_i_15 
       (.I0(FFStart_OBUF[39]),
        .I1(FFStart_OBUF[38]),
        .I2(FFStart_OBUF[37]),
        .I3(FFStart_OBUF[40]),
        .I4(FFStart_OBUF[41]),
        .O(\ValorTDC[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555545)) 
    \ValorTDC[12]_i_16 
       (.I0(\ValorTDC[12]_i_32_n_0 ),
        .I1(FFStart_OBUF[40]),
        .I2(FFStart_OBUF[36]),
        .I3(FFStart_OBUF[37]),
        .I4(FFStart_OBUF[39]),
        .I5(FFStart_OBUF[38]),
        .O(\ValorTDC[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000010001010100)) 
    \ValorTDC[12]_i_17 
       (.I0(FFStart_OBUF[63]),
        .I1(FFStart_OBUF[64]),
        .I2(FFStart_OBUF[65]),
        .I3(FFStart_OBUF[61]),
        .I4(FFStart_OBUF[62]),
        .I5(FFStart_OBUF[66]),
        .O(\ValorTDC[12]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ValorTDC[12]_i_18 
       (.I0(FFStart_OBUF[60]),
        .I1(FFStart_OBUF[61]),
        .I2(FFStart_OBUF[62]),
        .I3(FFStart_OBUF[63]),
        .I4(FFStart_OBUF[64]),
        .O(\ValorTDC[12]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[12]_i_19 
       (.I0(FFStart_OBUF[59]),
        .I1(FFStart_OBUF[60]),
        .I2(FFStart_OBUF[58]),
        .I3(FFStart_OBUF[56]),
        .I4(FFStart_OBUF[57]),
        .O(\ValorTDC[12]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[12]_i_2 
       (.I0(FFStart_OBUF[100]),
        .I1(FFStart_OBUF[99]),
        .I2(FFStart_OBUF[103]),
        .I3(FFStart_OBUF[102]),
        .I4(FFStart_OBUF[101]),
        .I5(\ValorTDC[13]_i_6_n_0 ),
        .O(\ValorTDC[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020302)) 
    \ValorTDC[12]_i_20 
       (.I0(FFStart_OBUF[54]),
        .I1(FFStart_OBUF[58]),
        .I2(FFStart_OBUF[56]),
        .I3(FFStart_OBUF[55]),
        .I4(FFStart_OBUF[59]),
        .I5(FFStart_OBUF[57]),
        .O(\ValorTDC[12]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \ValorTDC[12]_i_21 
       (.I0(FFStart_OBUF[60]),
        .I1(FFStart_OBUF[59]),
        .I2(FFStart_OBUF[61]),
        .I3(FFStart_OBUF[62]),
        .I4(FFStart_OBUF[63]),
        .O(\ValorTDC[12]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000070004)) 
    \ValorTDC[12]_i_22 
       (.I0(FFStart_OBUF[62]),
        .I1(FFStart_OBUF[58]),
        .I2(FFStart_OBUF[60]),
        .I3(FFStart_OBUF[59]),
        .I4(FFStart_OBUF[57]),
        .I5(FFStart_OBUF[61]),
        .O(\ValorTDC[12]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ValorTDC[12]_i_23 
       (.I0(FFStart_OBUF[51]),
        .I1(FFStart_OBUF[52]),
        .O(\ValorTDC[12]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001130)) 
    \ValorTDC[12]_i_24 
       (.I0(FFStart_OBUF[54]),
        .I1(FFStart_OBUF[53]),
        .I2(FFStart_OBUF[49]),
        .I3(FFStart_OBUF[50]),
        .I4(FFStart_OBUF[51]),
        .I5(FFStart_OBUF[52]),
        .O(\ValorTDC[12]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[12]_i_25 
       (.I0(FFStart_OBUF[55]),
        .I1(FFStart_OBUF[56]),
        .I2(FFStart_OBUF[57]),
        .I3(FFStart_OBUF[53]),
        .I4(FFStart_OBUF[54]),
        .O(\ValorTDC[12]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \ValorTDC[12]_i_26 
       (.I0(FFStart_OBUF[55]),
        .I1(FFStart_OBUF[51]),
        .I2(FFStart_OBUF[53]),
        .I3(FFStart_OBUF[54]),
        .I4(FFStart_OBUF[52]),
        .O(\ValorTDC[12]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[12]_i_27 
       (.I0(FFStart_OBUF[54]),
        .I1(FFStart_OBUF[53]),
        .I2(FFStart_OBUF[52]),
        .I3(FFStart_OBUF[55]),
        .I4(FFStart_OBUF[56]),
        .O(\ValorTDC[12]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[12]_i_28 
       (.I0(FFStart_OBUF[46]),
        .I1(FFStart_OBUF[45]),
        .I2(FFStart_OBUF[44]),
        .I3(FFStart_OBUF[42]),
        .I4(FFStart_OBUF[43]),
        .O(\ValorTDC[12]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF8B)) 
    \ValorTDC[12]_i_29 
       (.I0(FFStart_OBUF[48]),
        .I1(FFStart_OBUF[44]),
        .I2(FFStart_OBUF[43]),
        .I3(FFStart_OBUF[45]),
        .I4(FFStart_OBUF[46]),
        .I5(FFStart_OBUF[47]),
        .O(\ValorTDC[12]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    \ValorTDC[12]_i_3 
       (.I0(\ValorTDC[12]_i_6_n_0 ),
        .I1(FFStart_OBUF[31]),
        .I2(\ValorTDC[12]_i_7_n_0 ),
        .I3(\ValorTDC[12]_i_8_n_0 ),
        .I4(\ValorTDC[12]_i_9_n_0 ),
        .I5(\ValorTDC[12]_i_10_n_0 ),
        .O(\ValorTDC[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[12]_i_30 
       (.I0(FFStart_OBUF[44]),
        .I1(FFStart_OBUF[42]),
        .I2(FFStart_OBUF[43]),
        .I3(FFStart_OBUF[41]),
        .I4(FFStart_OBUF[45]),
        .O(\ValorTDC[12]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001310)) 
    \ValorTDC[12]_i_31 
       (.I0(FFStart_OBUF[44]),
        .I1(FFStart_OBUF[41]),
        .I2(FFStart_OBUF[40]),
        .I3(FFStart_OBUF[39]),
        .I4(FFStart_OBUF[42]),
        .I5(FFStart_OBUF[43]),
        .O(\ValorTDC[12]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[12]_i_32 
       (.I0(FFStart_OBUF[41]),
        .I1(FFStart_OBUF[40]),
        .I2(FFStart_OBUF[42]),
        .I3(FFStart_OBUF[38]),
        .I4(FFStart_OBUF[39]),
        .O(\ValorTDC[12]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \ValorTDC[12]_i_4 
       (.I0(\ValorTDC[12]_i_11_n_0 ),
        .I1(\ValorTDC[12]_i_12_n_0 ),
        .I2(\ValorTDC[12]_i_13_n_0 ),
        .I3(\ValorTDC[12]_i_14_n_0 ),
        .I4(\ValorTDC[12]_i_15_n_0 ),
        .I5(\ValorTDC[12]_i_16_n_0 ),
        .O(\ValorTDC[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ValorTDC[12]_i_5 
       (.I0(\ValorTDC[12]_i_17_n_0 ),
        .I1(\ValorTDC[12]_i_18_n_0 ),
        .I2(\ValorTDC[12]_i_19_n_0 ),
        .I3(\ValorTDC[12]_i_20_n_0 ),
        .I4(\ValorTDC[12]_i_21_n_0 ),
        .I5(\ValorTDC[12]_i_22_n_0 ),
        .O(\ValorTDC[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[12]_i_6 
       (.I0(FFStart_OBUF[32]),
        .I1(FFStart_OBUF[33]),
        .O(\ValorTDC[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ValorTDC[12]_i_7 
       (.I0(FFStart_OBUF[34]),
        .I1(FFStart_OBUF[35]),
        .O(\ValorTDC[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[12]_i_8 
       (.I0(FFStart_OBUF[35]),
        .I1(FFStart_OBUF[34]),
        .I2(FFStart_OBUF[33]),
        .I3(FFStart_OBUF[32]),
        .I4(FFStart_OBUF[36]),
        .O(\ValorTDC[12]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[12]_i_9 
       (.I0(FFStart_OBUF[37]),
        .I1(FFStart_OBUF[36]),
        .I2(FFStart_OBUF[35]),
        .I3(FFStart_OBUF[38]),
        .I4(FFStart_OBUF[39]),
        .O(\ValorTDC[12]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[13]_i_1 
       (.I0(\ValorTDC[13]_i_2_n_0 ),
        .I1(\ValorTDC[13]_i_3_n_0 ),
        .O(DecodedStart[6]));
  LUT6 #(
    .INIT(64'hFFFFFFEEFFFFFFCF)) 
    \ValorTDC[13]_i_10 
       (.I0(FFStart_OBUF[78]),
        .I1(FFStart_OBUF[77]),
        .I2(FFStart_OBUF[73]),
        .I3(FFStart_OBUF[76]),
        .I4(FFStart_OBUF[75]),
        .I5(FFStart_OBUF[74]),
        .O(\ValorTDC[13]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[13]_i_11 
       (.I0(FFStart_OBUF[83]),
        .I1(FFStart_OBUF[82]),
        .I2(FFStart_OBUF[79]),
        .I3(FFStart_OBUF[80]),
        .I4(FFStart_OBUF[81]),
        .O(\ValorTDC[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[13]_i_12 
       (.I0(FFStart_OBUF[74]),
        .I1(FFStart_OBUF[75]),
        .I2(FFStart_OBUF[76]),
        .I3(FFStart_OBUF[72]),
        .I4(FFStart_OBUF[73]),
        .O(\ValorTDC[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000011113F30)) 
    \ValorTDC[13]_i_13 
       (.I0(FFStart_OBUF[81]),
        .I1(FFStart_OBUF[80]),
        .I2(FFStart_OBUF[76]),
        .I3(FFStart_OBUF[75]),
        .I4(FFStart_OBUF[77]),
        .I5(\ValorTDC[13]_i_25_n_0 ),
        .O(\ValorTDC[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ValorTDC[13]_i_14 
       (.I0(\ValorTDC[9]_i_14_n_0 ),
        .I1(\ValorTDC[13]_i_26_n_0 ),
        .I2(\ValorTDC[13]_i_27_n_0 ),
        .I3(\ValorTDC[13]_i_28_n_0 ),
        .I4(\ValorTDC[9]_i_13_n_0 ),
        .I5(\ValorTDC[10]_i_9_n_0 ),
        .O(\ValorTDC[13]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[13]_i_15 
       (.I0(FFStart_OBUF[92]),
        .I1(FFStart_OBUF[93]),
        .I2(FFStart_OBUF[91]),
        .I3(FFStart_OBUF[90]),
        .I4(FFStart_OBUF[94]),
        .O(\ValorTDC[13]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[13]_i_16 
       (.I0(FFStart_OBUF[94]),
        .I1(FFStart_OBUF[95]),
        .O(\ValorTDC[13]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[13]_i_17 
       (.I0(FFStart_OBUF[98]),
        .I1(FFStart_OBUF[97]),
        .I2(FFStart_OBUF[96]),
        .I3(FFStart_OBUF[95]),
        .I4(FFStart_OBUF[99]),
        .O(\ValorTDC[13]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[13]_i_18 
       (.I0(FFStart_OBUF[100]),
        .I1(FFStart_OBUF[99]),
        .I2(FFStart_OBUF[98]),
        .I3(FFStart_OBUF[102]),
        .I4(FFStart_OBUF[101]),
        .O(\ValorTDC[13]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[13]_i_19 
       (.I0(FFStart_OBUF[100]),
        .I1(FFStart_OBUF[99]),
        .I2(FFStart_OBUF[101]),
        .I3(FFStart_OBUF[97]),
        .I4(FFStart_OBUF[98]),
        .O(\ValorTDC[13]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \ValorTDC[13]_i_2 
       (.I0(\ValorTDC[13]_i_4_n_0 ),
        .I1(\ValorTDC[13]_i_5_n_0 ),
        .I2(\ValorTDC[13]_i_6_n_0 ),
        .I3(\ValorTDC[13]_i_7_n_0 ),
        .I4(\ValorTDC[13]_i_8_n_0 ),
        .I5(\ValorTDC[8]_i_3_n_0 ),
        .O(\ValorTDC[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010001010100)) 
    \ValorTDC[13]_i_20 
       (.I0(FFStart_OBUF[89]),
        .I1(FFStart_OBUF[90]),
        .I2(FFStart_OBUF[91]),
        .I3(FFStart_OBUF[87]),
        .I4(FFStart_OBUF[88]),
        .I5(FFStart_OBUF[92]),
        .O(\ValorTDC[13]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[13]_i_21 
       (.I0(FFStart_OBUF[86]),
        .I1(FFStart_OBUF[87]),
        .O(\ValorTDC[13]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ValorTDC[13]_i_22 
       (.I0(FFStart_OBUF[84]),
        .I1(FFStart_OBUF[85]),
        .O(\ValorTDC[13]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEEFFFFFFCF)) 
    \ValorTDC[13]_i_23 
       (.I0(FFStart_OBUF[90]),
        .I1(FFStart_OBUF[89]),
        .I2(FFStart_OBUF[85]),
        .I3(FFStart_OBUF[88]),
        .I4(FFStart_OBUF[87]),
        .I5(FFStart_OBUF[86]),
        .O(\ValorTDC[13]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[13]_i_24 
       (.I0(FFStart_OBUF[86]),
        .I1(FFStart_OBUF[87]),
        .I2(FFStart_OBUF[88]),
        .I3(FFStart_OBUF[84]),
        .I4(FFStart_OBUF[85]),
        .O(\ValorTDC[13]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[13]_i_25 
       (.I0(FFStart_OBUF[78]),
        .I1(FFStart_OBUF[79]),
        .O(\ValorTDC[13]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[13]_i_26 
       (.I0(FFStart_OBUF[69]),
        .I1(FFStart_OBUF[68]),
        .I2(FFStart_OBUF[67]),
        .I3(FFStart_OBUF[66]),
        .I4(FFStart_OBUF[70]),
        .O(\ValorTDC[13]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ValorTDC[13]_i_27 
       (.I0(FFStart_OBUF[69]),
        .I1(FFStart_OBUF[68]),
        .I2(FFStart_OBUF[66]),
        .I3(FFStart_OBUF[67]),
        .I4(FFStart_OBUF[65]),
        .O(\ValorTDC[13]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000003A)) 
    \ValorTDC[13]_i_28 
       (.I0(FFStart_OBUF[63]),
        .I1(FFStart_OBUF[68]),
        .I2(FFStart_OBUF[64]),
        .I3(FFStart_OBUF[65]),
        .I4(FFStart_OBUF[66]),
        .I5(FFStart_OBUF[67]),
        .O(\ValorTDC[13]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ValorTDC[13]_i_3 
       (.I0(\ValorTDC[13]_i_9_n_0 ),
        .I1(\ValorTDC[13]_i_10_n_0 ),
        .I2(\ValorTDC[13]_i_11_n_0 ),
        .I3(\ValorTDC[13]_i_12_n_0 ),
        .I4(\ValorTDC[13]_i_13_n_0 ),
        .I5(\ValorTDC[13]_i_14_n_0 ),
        .O(\ValorTDC[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCFCECE)) 
    \ValorTDC[13]_i_4 
       (.I0(FFStart_OBUF[91]),
        .I1(\ValorTDC[13]_i_15_n_0 ),
        .I2(\ValorTDC[13]_i_16_n_0 ),
        .I3(FFStart_OBUF[96]),
        .I4(FFStart_OBUF[92]),
        .I5(FFStart_OBUF[93]),
        .O(\ValorTDC[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEEFFFFFFCF)) 
    \ValorTDC[13]_i_5 
       (.I0(FFStart_OBUF[98]),
        .I1(FFStart_OBUF[97]),
        .I2(FFStart_OBUF[93]),
        .I3(FFStart_OBUF[96]),
        .I4(FFStart_OBUF[95]),
        .I5(FFStart_OBUF[94]),
        .O(\ValorTDC[13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ValorTDC[13]_i_6 
       (.I0(\ValorTDC[13]_i_17_n_0 ),
        .I1(\ValorTDC[13]_i_18_n_0 ),
        .I2(\ValorTDC[8]_i_8_n_0 ),
        .I3(\ValorTDC[13]_i_19_n_0 ),
        .O(\ValorTDC[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \ValorTDC[13]_i_7 
       (.I0(FFStart_OBUF[90]),
        .I1(FFStart_OBUF[89]),
        .I2(FFStart_OBUF[91]),
        .I3(FFStart_OBUF[93]),
        .I4(FFStart_OBUF[92]),
        .I5(\ValorTDC[13]_i_20_n_0 ),
        .O(\ValorTDC[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7555FFFF)) 
    \ValorTDC[13]_i_8 
       (.I0(\ValorTDC[11]_i_17_n_0 ),
        .I1(\ValorTDC[13]_i_21_n_0 ),
        .I2(FFStart_OBUF[83]),
        .I3(\ValorTDC[13]_i_22_n_0 ),
        .I4(\ValorTDC[13]_i_23_n_0 ),
        .I5(\ValorTDC[13]_i_24_n_0 ),
        .O(\ValorTDC[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[13]_i_9 
       (.I0(FFStart_OBUF[81]),
        .I1(FFStart_OBUF[80]),
        .I2(FFStart_OBUF[84]),
        .I3(FFStart_OBUF[82]),
        .I4(FFStart_OBUF[83]),
        .I5(\ValorTDC[8]_i_14_n_0 ),
        .O(\ValorTDC[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBFBAAAAAAAA)) 
    \ValorTDC[1]_i_1 
       (.I0(\ValorTDC[1]_i_2_n_0 ),
        .I1(\ValorTDC[1]_i_3_n_0 ),
        .I2(\ValorTDC[1]_i_4_n_0 ),
        .I3(\ValorTDC[2]_i_3_n_0 ),
        .I4(\ValorTDC[1]_i_5_n_0 ),
        .I5(\ValorTDC[6]_i_2_n_0 ),
        .O(DecodedStop[1]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[1]_i_10 
       (.I0(FFStop_OBUF[93]),
        .I1(FFStop_OBUF[92]),
        .I2(FFStop_OBUF[91]),
        .I3(FFStop_OBUF[90]),
        .I4(FFStop_OBUF[94]),
        .O(\ValorTDC[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h8088AAAA)) 
    \ValorTDC[1]_i_11 
       (.I0(\ValorTDC[1]_i_24_n_0 ),
        .I1(\ValorTDC[1]_i_25_n_0 ),
        .I2(\ValorTDC[3]_i_21_n_0 ),
        .I3(\ValorTDC[3]_i_22_n_0 ),
        .I4(\ValorTDC[4]_i_14_n_0 ),
        .O(\ValorTDC[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEFFFFFFFFF)) 
    \ValorTDC[1]_i_12 
       (.I0(\ValorTDC[3]_i_22_n_0 ),
        .I1(\ValorTDC[3]_i_21_n_0 ),
        .I2(\ValorTDC[4]_i_14_n_0 ),
        .I3(\ValorTDC[1]_i_26_n_0 ),
        .I4(\ValorTDC[1]_i_27_n_0 ),
        .I5(\ValorTDC[3]_i_20_n_0 ),
        .O(\ValorTDC[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ValorTDC[1]_i_13 
       (.I0(\ValorTDC[2]_i_12_n_0 ),
        .I1(\ValorTDC[1]_i_28_n_0 ),
        .I2(\ValorTDC[2]_i_11_n_0 ),
        .I3(\ValorTDC[3]_i_13_n_0 ),
        .I4(\ValorTDC[1]_i_29_n_0 ),
        .I5(\ValorTDC[3]_i_23_n_0 ),
        .O(\ValorTDC[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF0E)) 
    \ValorTDC[1]_i_14 
       (.I0(\ValorTDC[3]_i_13_n_0 ),
        .I1(\ValorTDC[1]_i_28_n_0 ),
        .I2(\ValorTDC[2]_i_11_n_0 ),
        .I3(\ValorTDC[3]_i_14_n_0 ),
        .I4(\ValorTDC[3]_i_23_n_0 ),
        .O(\ValorTDC[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \ValorTDC[1]_i_15 
       (.I0(\ValorTDC[5]_i_30_n_0 ),
        .I1(\ValorTDC[5]_i_25_n_0 ),
        .I2(\ValorTDC[5]_i_27_n_0 ),
        .I3(\ValorTDC[5]_i_29_n_0 ),
        .O(\ValorTDC[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \ValorTDC[1]_i_16 
       (.I0(FFStop_OBUF[53]),
        .I1(FFStop_OBUF[54]),
        .I2(FFStop_OBUF[57]),
        .I3(FFStop_OBUF[56]),
        .I4(FFStop_OBUF[55]),
        .I5(\ValorTDC[1]_i_30_n_0 ),
        .O(\ValorTDC[1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00B3)) 
    \ValorTDC[1]_i_17 
       (.I0(\ValorTDC[2]_i_27_n_0 ),
        .I1(\ValorTDC[4]_i_13_n_0 ),
        .I2(\ValorTDC[4]_i_11_n_0 ),
        .I3(\ValorTDC[5]_i_12_n_0 ),
        .O(\ValorTDC[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \ValorTDC[1]_i_18 
       (.I0(\ValorTDC[5]_i_11_n_0 ),
        .I1(\ValorTDC[5]_i_10_n_0 ),
        .I2(\ValorTDC[5]_i_9_n_0 ),
        .I3(\ValorTDC[5]_i_8_n_0 ),
        .I4(\ValorTDC[5]_i_7_n_0 ),
        .I5(\ValorTDC[2]_i_15_n_0 ),
        .O(\ValorTDC[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF0B)) 
    \ValorTDC[1]_i_19 
       (.I0(\ValorTDC[5]_i_19_n_0 ),
        .I1(\ValorTDC[5]_i_18_n_0 ),
        .I2(\ValorTDC[5]_i_32_n_0 ),
        .I3(\ValorTDC[5]_i_15_n_0 ),
        .I4(\ValorTDC[1]_i_31_n_0 ),
        .I5(\ValorTDC[1]_i_32_n_0 ),
        .O(\ValorTDC[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4545454545454544)) 
    \ValorTDC[1]_i_2 
       (.I0(\ValorTDC[6]_i_8_n_0 ),
        .I1(\ValorTDC[1]_i_6_n_0 ),
        .I2(\ValorTDC[1]_i_7_n_0 ),
        .I3(\ValorTDC[1]_i_8_n_0 ),
        .I4(\ValorTDC[1]_i_9_n_0 ),
        .I5(\ValorTDC[1]_i_10_n_0 ),
        .O(\ValorTDC[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \ValorTDC[1]_i_20 
       (.I0(\ValorTDC[1]_i_33_n_0 ),
        .I1(\ValorTDC[6]_i_25_n_0 ),
        .I2(\ValorTDC[6]_i_11_n_0 ),
        .I3(\ValorTDC[6]_i_12_n_0 ),
        .O(\ValorTDC[1]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hF1FF)) 
    \ValorTDC[1]_i_21 
       (.I0(\ValorTDC[4]_i_6_n_0 ),
        .I1(\ValorTDC[1]_i_34_n_0 ),
        .I2(\ValorTDC[6]_i_21_n_0 ),
        .I3(\ValorTDC[6]_i_23_n_0 ),
        .O(\ValorTDC[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h30A0000000000000)) 
    \ValorTDC[1]_i_22 
       (.I0(FFStop_OBUF[90]),
        .I1(FFStop_OBUF[85]),
        .I2(FFStop_OBUF[89]),
        .I3(FFStop_OBUF[86]),
        .I4(FFStop_OBUF[88]),
        .I5(FFStop_OBUF[87]),
        .O(\ValorTDC[1]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[1]_i_23 
       (.I0(FFStop_OBUF[91]),
        .I1(FFStop_OBUF[90]),
        .I2(FFStop_OBUF[92]),
        .I3(FFStop_OBUF[93]),
        .I4(FFStop_OBUF[89]),
        .O(\ValorTDC[1]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \ValorTDC[1]_i_24 
       (.I0(FFStop_OBUF[20]),
        .I1(FFStop_OBUF[19]),
        .I2(FFStop_OBUF[18]),
        .I3(FFStop_OBUF[17]),
        .I4(FFStop_OBUF[21]),
        .O(\ValorTDC[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hCF5FFFFFFFFFFFFF)) 
    \ValorTDC[1]_i_25 
       (.I0(FFStop_OBUF[18]),
        .I1(FFStop_OBUF[13]),
        .I2(FFStop_OBUF[17]),
        .I3(FFStop_OBUF[14]),
        .I4(FFStop_OBUF[16]),
        .I5(FFStop_OBUF[15]),
        .O(\ValorTDC[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h30A0000000000000)) 
    \ValorTDC[1]_i_26 
       (.I0(FFStop_OBUF[10]),
        .I1(FFStop_OBUF[5]),
        .I2(FFStop_OBUF[8]),
        .I3(FFStop_OBUF[6]),
        .I4(FFStop_OBUF[7]),
        .I5(FFStop_OBUF[9]),
        .O(\ValorTDC[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hCFFF5FFFFFFFFFFF)) 
    \ValorTDC[1]_i_27 
       (.I0(FFStop_OBUF[6]),
        .I1(FFStop_OBUF[1]),
        .I2(FFStop_OBUF[5]),
        .I3(FFStop_OBUF[4]),
        .I4(FFStop_OBUF[2]),
        .I5(FFStop_OBUF[3]),
        .O(\ValorTDC[1]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[1]_i_28 
       (.I0(FFStop_OBUF[20]),
        .I1(FFStop_OBUF[19]),
        .I2(FFStop_OBUF[21]),
        .I3(FFStop_OBUF[22]),
        .I4(FFStop_OBUF[18]),
        .O(\ValorTDC[1]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[1]_i_29 
       (.I0(FFStop_OBUF[26]),
        .I1(FFStop_OBUF[27]),
        .I2(FFStop_OBUF[28]),
        .I3(FFStop_OBUF[25]),
        .I4(FFStop_OBUF[24]),
        .O(\ValorTDC[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F00)) 
    \ValorTDC[1]_i_3 
       (.I0(\ValorTDC[1]_i_11_n_0 ),
        .I1(\ValorTDC[1]_i_12_n_0 ),
        .I2(\ValorTDC[1]_i_13_n_0 ),
        .I3(\ValorTDC[1]_i_14_n_0 ),
        .I4(\ValorTDC[4]_i_8_n_0 ),
        .I5(\ValorTDC[2]_i_3_n_0 ),
        .O(\ValorTDC[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C88000000000000)) 
    \ValorTDC[1]_i_30 
       (.I0(FFStop_OBUF[54]),
        .I1(FFStop_OBUF[53]),
        .I2(FFStop_OBUF[49]),
        .I3(FFStop_OBUF[50]),
        .I4(FFStop_OBUF[51]),
        .I5(FFStop_OBUF[52]),
        .O(\ValorTDC[1]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[1]_i_31 
       (.I0(FFStop_OBUF[66]),
        .I1(FFStop_OBUF[65]),
        .I2(FFStop_OBUF[63]),
        .I3(FFStop_OBUF[64]),
        .I4(FFStop_OBUF[62]),
        .O(\ValorTDC[1]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[1]_i_32 
       (.I0(FFStop_OBUF[63]),
        .I1(FFStop_OBUF[64]),
        .I2(FFStop_OBUF[62]),
        .I3(FFStop_OBUF[65]),
        .I4(FFStop_OBUF[61]),
        .O(\ValorTDC[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h30A0000000000000)) 
    \ValorTDC[1]_i_33 
       (.I0(FFStop_OBUF[70]),
        .I1(FFStop_OBUF[65]),
        .I2(FFStop_OBUF[67]),
        .I3(FFStop_OBUF[66]),
        .I4(FFStop_OBUF[68]),
        .I5(FFStop_OBUF[69]),
        .O(\ValorTDC[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFFFFF3FFFFFFF)) 
    \ValorTDC[1]_i_34 
       (.I0(FFStop_OBUF[73]),
        .I1(FFStop_OBUF[78]),
        .I2(FFStop_OBUF[77]),
        .I3(FFStop_OBUF[76]),
        .I4(FFStop_OBUF[75]),
        .I5(FFStop_OBUF[74]),
        .O(\ValorTDC[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2FFF2FFF2FFFF)) 
    \ValorTDC[1]_i_4 
       (.I0(\ValorTDC[3]_i_9_n_0 ),
        .I1(\ValorTDC[1]_i_15_n_0 ),
        .I2(\ValorTDC[3]_i_11_n_0 ),
        .I3(\ValorTDC[1]_i_16_n_0 ),
        .I4(\ValorTDC[1]_i_17_n_0 ),
        .I5(\ValorTDC[1]_i_18_n_0 ),
        .O(\ValorTDC[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ValorTDC[1]_i_5 
       (.I0(\ValorTDC[1]_i_19_n_0 ),
        .I1(\ValorTDC[6]_i_3_n_0 ),
        .I2(\ValorTDC[3]_i_7_n_0 ),
        .I3(\ValorTDC[1]_i_20_n_0 ),
        .I4(\ValorTDC[1]_i_21_n_0 ),
        .O(\ValorTDC[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800088008000)) 
    \ValorTDC[1]_i_6 
       (.I0(FFStop_OBUF[100]),
        .I1(FFStop_OBUF[99]),
        .I2(FFStop_OBUF[102]),
        .I3(FFStop_OBUF[101]),
        .I4(FFStop_OBUF[98]),
        .I5(FFStop_OBUF[97]),
        .O(\ValorTDC[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h30A0000000000000)) 
    \ValorTDC[1]_i_7 
       (.I0(FFStop_OBUF[100]),
        .I1(FFStop_OBUF[95]),
        .I2(FFStop_OBUF[99]),
        .I3(FFStop_OBUF[96]),
        .I4(FFStop_OBUF[98]),
        .I5(FFStop_OBUF[97]),
        .O(\ValorTDC[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h2022AAAA)) 
    \ValorTDC[1]_i_8 
       (.I0(\ValorTDC[6]_i_15_n_0 ),
        .I1(\ValorTDC[6]_i_16_n_0 ),
        .I2(\ValorTDC[1]_i_22_n_0 ),
        .I3(\ValorTDC[6]_i_6_n_0 ),
        .I4(\ValorTDC[1]_i_23_n_0 ),
        .O(\ValorTDC[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4400C00000000000)) 
    \ValorTDC[1]_i_9 
       (.I0(FFStop_OBUF[93]),
        .I1(FFStop_OBUF[96]),
        .I2(FFStop_OBUF[98]),
        .I3(FFStop_OBUF[97]),
        .I4(FFStop_OBUF[94]),
        .I5(FFStop_OBUF[95]),
        .O(\ValorTDC[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAAAAAAAAA)) 
    \ValorTDC[2]_i_1 
       (.I0(\ValorTDC[2]_i_2_n_0 ),
        .I1(\ValorTDC[2]_i_3_n_0 ),
        .I2(\ValorTDC[2]_i_4_n_0 ),
        .I3(\ValorTDC[2]_i_5_n_0 ),
        .I4(\ValorTDC[2]_i_6_n_0 ),
        .I5(\ValorTDC[6]_i_2_n_0 ),
        .O(DecodedStop[2]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFB00)) 
    \ValorTDC[2]_i_10 
       (.I0(\ValorTDC[2]_i_24_n_0 ),
        .I1(\ValorTDC[2]_i_25_n_0 ),
        .I2(\ValorTDC[2]_i_26_n_0 ),
        .I3(\ValorTDC[3]_i_20_n_0 ),
        .I4(\ValorTDC[3]_i_21_n_0 ),
        .I5(\ValorTDC[3]_i_22_n_0 ),
        .O(\ValorTDC[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0080000080808000)) 
    \ValorTDC[2]_i_11 
       (.I0(FFStop_OBUF[24]),
        .I1(FFStop_OBUF[25]),
        .I2(FFStop_OBUF[23]),
        .I3(FFStop_OBUF[22]),
        .I4(FFStop_OBUF[26]),
        .I5(FFStop_OBUF[21]),
        .O(\ValorTDC[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30000000A0000000)) 
    \ValorTDC[2]_i_12 
       (.I0(FFStop_OBUF[24]),
        .I1(FFStop_OBUF[19]),
        .I2(FFStop_OBUF[22]),
        .I3(FFStop_OBUF[21]),
        .I4(FFStop_OBUF[23]),
        .I5(FFStop_OBUF[20]),
        .O(\ValorTDC[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \ValorTDC[2]_i_13 
       (.I0(\ValorTDC[5]_i_9_n_0 ),
        .I1(\ValorTDC[5]_i_8_n_0 ),
        .I2(\ValorTDC[5]_i_7_n_0 ),
        .O(\ValorTDC[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \ValorTDC[2]_i_14 
       (.I0(\ValorTDC[5]_i_27_n_0 ),
        .I1(\ValorTDC[5]_i_28_n_0 ),
        .I2(\ValorTDC[5]_i_29_n_0 ),
        .I3(\ValorTDC[5]_i_30_n_0 ),
        .O(\ValorTDC[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \ValorTDC[2]_i_15 
       (.I0(\ValorTDC[4]_i_16_n_0 ),
        .I1(\ValorTDC[2]_i_27_n_0 ),
        .I2(\ValorTDC[4]_i_11_n_0 ),
        .I3(\ValorTDC[5]_i_12_n_0 ),
        .I4(\ValorTDC[2]_i_28_n_0 ),
        .I5(\ValorTDC[5]_i_14_n_0 ),
        .O(\ValorTDC[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \ValorTDC[2]_i_16 
       (.I0(\ValorTDC[3]_i_18_n_0 ),
        .I1(FFStop_OBUF[35]),
        .I2(FFStop_OBUF[39]),
        .I3(FFStop_OBUF[38]),
        .I4(FFStop_OBUF[36]),
        .I5(FFStop_OBUF[37]),
        .O(\ValorTDC[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \ValorTDC[2]_i_17 
       (.I0(\ValorTDC[5]_i_19_n_0 ),
        .I1(FFStop_OBUF[54]),
        .I2(FFStop_OBUF[58]),
        .I3(FFStop_OBUF[57]),
        .I4(FFStop_OBUF[56]),
        .I5(FFStop_OBUF[55]),
        .O(\ValorTDC[2]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \ValorTDC[2]_i_18 
       (.I0(FFStop_OBUF[63]),
        .I1(FFStop_OBUF[59]),
        .I2(FFStop_OBUF[60]),
        .I3(FFStop_OBUF[61]),
        .I4(FFStop_OBUF[62]),
        .O(\ValorTDC[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000E000)) 
    \ValorTDC[2]_i_19 
       (.I0(\ValorTDC[6]_i_25_n_0 ),
        .I1(\ValorTDC[6]_i_12_n_0 ),
        .I2(\ValorTDC[3]_i_16_n_0 ),
        .I3(\ValorTDC[3]_i_17_n_0 ),
        .I4(\ValorTDC[4]_i_6_n_0 ),
        .I5(\ValorTDC[6]_i_10_n_0 ),
        .O(\ValorTDC[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAFFFFAABA)) 
    \ValorTDC[2]_i_2 
       (.I0(\ValorTDC[6]_i_8_n_0 ),
        .I1(\ValorTDC[6]_i_7_n_0 ),
        .I2(\ValorTDC[6]_i_5_n_0 ),
        .I3(\ValorTDC[6]_i_4_n_0 ),
        .I4(\ValorTDC[2]_i_7_n_0 ),
        .I5(\ValorTDC[4]_i_7_n_0 ),
        .O(\ValorTDC[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040C00000000000)) 
    \ValorTDC[2]_i_20 
       (.I0(FFStop_OBUF[54]),
        .I1(FFStop_OBUF[58]),
        .I2(FFStop_OBUF[56]),
        .I3(FFStop_OBUF[59]),
        .I4(FFStop_OBUF[55]),
        .I5(FFStop_OBUF[57]),
        .O(\ValorTDC[2]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[2]_i_21 
       (.I0(FFStop_OBUF[69]),
        .I1(FFStop_OBUF[68]),
        .I2(FFStop_OBUF[67]),
        .I3(FFStop_OBUF[66]),
        .I4(FFStop_OBUF[70]),
        .O(\ValorTDC[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h2E00000000000000)) 
    \ValorTDC[2]_i_22 
       (.I0(FFStop_OBUF[68]),
        .I1(FFStop_OBUF[64]),
        .I2(FFStop_OBUF[63]),
        .I3(FFStop_OBUF[65]),
        .I4(FFStop_OBUF[66]),
        .I5(FFStop_OBUF[67]),
        .O(\ValorTDC[2]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[2]_i_23 
       (.I0(FFStop_OBUF[69]),
        .I1(FFStop_OBUF[68]),
        .I2(FFStop_OBUF[66]),
        .I3(FFStop_OBUF[67]),
        .I4(FFStop_OBUF[65]),
        .O(\ValorTDC[2]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[2]_i_24 
       (.I0(FFStop_OBUF[8]),
        .I1(FFStop_OBUF[6]),
        .I2(FFStop_OBUF[5]),
        .I3(FFStop_OBUF[7]),
        .I4(FFStop_OBUF[4]),
        .O(\ValorTDC[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h4555555555555555)) 
    \ValorTDC[2]_i_25 
       (.I0(\ValorTDC[2]_i_29_n_0 ),
        .I1(FFStop_OBUF[3]),
        .I2(FFStop_OBUF[6]),
        .I3(FFStop_OBUF[4]),
        .I4(FFStop_OBUF[5]),
        .I5(FFStop_OBUF[7]),
        .O(\ValorTDC[2]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \ValorTDC[2]_i_26 
       (.I0(FFStop_OBUF[8]),
        .I1(FFStop_OBUF[10]),
        .I2(FFStop_OBUF[6]),
        .I3(FFStop_OBUF[7]),
        .I4(FFStop_OBUF[9]),
        .O(\ValorTDC[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \ValorTDC[2]_i_27 
       (.I0(FFStop_OBUF[31]),
        .I1(FFStop_OBUF[29]),
        .I2(FFStop_OBUF[30]),
        .I3(FFStop_OBUF[33]),
        .I4(FFStop_OBUF[32]),
        .O(\ValorTDC[2]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[2]_i_28 
       (.I0(FFStop_OBUF[37]),
        .I1(FFStop_OBUF[36]),
        .I2(FFStop_OBUF[38]),
        .I3(FFStop_OBUF[39]),
        .I4(FFStop_OBUF[35]),
        .O(\ValorTDC[2]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[2]_i_29 
       (.I0(FFStop_OBUF[9]),
        .I1(FFStop_OBUF[7]),
        .I2(FFStop_OBUF[6]),
        .I3(FFStop_OBUF[8]),
        .I4(FFStop_OBUF[5]),
        .O(\ValorTDC[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ValorTDC[2]_i_3 
       (.I0(\ValorTDC[5]_i_19_n_0 ),
        .I1(\ValorTDC[2]_i_8_n_0 ),
        .I2(\ValorTDC[5]_i_15_n_0 ),
        .I3(\ValorTDC[2]_i_9_n_0 ),
        .I4(\ValorTDC[6]_i_10_n_0 ),
        .I5(\ValorTDC[6]_i_9_n_0 ),
        .O(\ValorTDC[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077007707)) 
    \ValorTDC[2]_i_4 
       (.I0(\ValorTDC[2]_i_10_n_0 ),
        .I1(\ValorTDC[4]_i_9_n_0 ),
        .I2(\ValorTDC[2]_i_11_n_0 ),
        .I3(\ValorTDC[3]_i_14_n_0 ),
        .I4(\ValorTDC[2]_i_12_n_0 ),
        .I5(\ValorTDC[4]_i_8_n_0 ),
        .O(\ValorTDC[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBAAFBAAABAA)) 
    \ValorTDC[2]_i_5 
       (.I0(\ValorTDC[2]_i_13_n_0 ),
        .I1(\ValorTDC[2]_i_14_n_0 ),
        .I2(\ValorTDC[5]_i_11_n_0 ),
        .I3(\ValorTDC[3]_i_9_n_0 ),
        .I4(\ValorTDC[2]_i_15_n_0 ),
        .I5(\ValorTDC[2]_i_16_n_0 ),
        .O(\ValorTDC[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD000000)) 
    \ValorTDC[2]_i_6 
       (.I0(\ValorTDC[2]_i_17_n_0 ),
        .I1(\ValorTDC[2]_i_18_n_0 ),
        .I2(\ValorTDC[5]_i_15_n_0 ),
        .I3(\ValorTDC[6]_i_3_n_0 ),
        .I4(\ValorTDC[5]_i_4_n_0 ),
        .I5(\ValorTDC[2]_i_19_n_0 ),
        .O(\ValorTDC[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ValorTDC[2]_i_7 
       (.I0(\ValorTDC[1]_i_9_n_0 ),
        .I1(\ValorTDC[6]_i_15_n_0 ),
        .O(\ValorTDC[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \ValorTDC[2]_i_8 
       (.I0(FFStop_OBUF[56]),
        .I1(FFStop_OBUF[58]),
        .I2(FFStop_OBUF[59]),
        .I3(FFStop_OBUF[60]),
        .I4(FFStop_OBUF[57]),
        .I5(\ValorTDC[2]_i_20_n_0 ),
        .O(\ValorTDC[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ValorTDC[2]_i_9 
       (.I0(\ValorTDC[6]_i_25_n_0 ),
        .I1(\ValorTDC[2]_i_21_n_0 ),
        .I2(\ValorTDC[2]_i_22_n_0 ),
        .I3(\ValorTDC[2]_i_23_n_0 ),
        .I4(\ValorTDC[6]_i_12_n_0 ),
        .I5(\ValorTDC[6]_i_11_n_0 ),
        .O(\ValorTDC[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4FFF4F4F44444444)) 
    \ValorTDC[3]_i_1 
       (.I0(\ValorTDC[5]_i_5_n_0 ),
        .I1(\ValorTDC[3]_i_2_n_0 ),
        .I2(\ValorTDC[3]_i_3_n_0 ),
        .I3(\ValorTDC[3]_i_4_n_0 ),
        .I4(\ValorTDC[3]_i_5_n_0 ),
        .I5(\ValorTDC[6]_i_2_n_0 ),
        .O(DecodedStop[3]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \ValorTDC[3]_i_10 
       (.I0(\ValorTDC[5]_i_30_n_0 ),
        .I1(\ValorTDC[5]_i_29_n_0 ),
        .I2(\ValorTDC[5]_i_28_n_0 ),
        .I3(\ValorTDC[5]_i_27_n_0 ),
        .O(\ValorTDC[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \ValorTDC[3]_i_11 
       (.I0(\ValorTDC[5]_i_8_n_0 ),
        .I1(\ValorTDC[5]_i_7_n_0 ),
        .I2(\ValorTDC[5]_i_9_n_0 ),
        .O(\ValorTDC[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \ValorTDC[3]_i_12 
       (.I0(\ValorTDC[3]_i_20_n_0 ),
        .I1(\ValorTDC[3]_i_21_n_0 ),
        .I2(\ValorTDC[3]_i_22_n_0 ),
        .O(\ValorTDC[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \ValorTDC[3]_i_13 
       (.I0(FFStop_OBUF[24]),
        .I1(FFStop_OBUF[25]),
        .I2(FFStop_OBUF[23]),
        .I3(FFStop_OBUF[27]),
        .I4(FFStop_OBUF[26]),
        .O(\ValorTDC[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \ValorTDC[3]_i_14 
       (.I0(FFStop_OBUF[24]),
        .I1(FFStop_OBUF[25]),
        .I2(FFStop_OBUF[28]),
        .I3(FFStop_OBUF[27]),
        .I4(FFStop_OBUF[26]),
        .I5(\ValorTDC[3]_i_23_n_0 ),
        .O(\ValorTDC[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h070702020F000000)) 
    \ValorTDC[3]_i_15 
       (.I0(FFStop_OBUF[76]),
        .I1(FFStop_OBUF[75]),
        .I2(\ValorTDC[3]_i_24_n_0 ),
        .I3(FFStop_OBUF[81]),
        .I4(FFStop_OBUF[80]),
        .I5(FFStop_OBUF[77]),
        .O(\ValorTDC[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \ValorTDC[3]_i_16 
       (.I0(FFStop_OBUF[76]),
        .I1(FFStop_OBUF[74]),
        .I2(FFStop_OBUF[75]),
        .I3(FFStop_OBUF[77]),
        .I4(FFStop_OBUF[73]),
        .O(\ValorTDC[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFFFFFF)) 
    \ValorTDC[3]_i_17 
       (.I0(FFStop_OBUF[72]),
        .I1(FFStop_OBUF[73]),
        .I2(FFStop_OBUF[75]),
        .I3(FFStop_OBUF[74]),
        .I4(FFStop_OBUF[76]),
        .I5(\ValorTDC[6]_i_20_n_0 ),
        .O(\ValorTDC[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0055000000F70000)) 
    \ValorTDC[3]_i_18 
       (.I0(\ValorTDC[4]_i_11_n_0 ),
        .I1(\ValorTDC[2]_i_27_n_0 ),
        .I2(\ValorTDC[4]_i_16_n_0 ),
        .I3(\ValorTDC[5]_i_12_n_0 ),
        .I4(\ValorTDC[2]_i_28_n_0 ),
        .I5(\ValorTDC[5]_i_14_n_0 ),
        .O(\ValorTDC[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ValorTDC[3]_i_19 
       (.I0(\ValorTDC[5]_i_24_n_0 ),
        .I1(\ValorTDC[3]_i_25_n_0 ),
        .I2(\ValorTDC[3]_i_26_n_0 ),
        .I3(\ValorTDC[5]_i_10_n_0 ),
        .O(\ValorTDC[3]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ValorTDC[3]_i_2 
       (.I0(\ValorTDC[6]_i_4_n_0 ),
        .I1(\ValorTDC[6]_i_5_n_0 ),
        .O(\ValorTDC[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFFFFFFFFFFFFF)) 
    \ValorTDC[3]_i_20 
       (.I0(FFStop_OBUF[12]),
        .I1(FFStop_OBUF[7]),
        .I2(FFStop_OBUF[8]),
        .I3(FFStop_OBUF[11]),
        .I4(FFStop_OBUF[10]),
        .I5(FFStop_OBUF[9]),
        .O(\ValorTDC[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hF7F5F7F5FFF5F5F5)) 
    \ValorTDC[3]_i_21 
       (.I0(\ValorTDC[3]_i_27_n_0 ),
        .I1(FFStop_OBUF[12]),
        .I2(\ValorTDC[3]_i_28_n_0 ),
        .I3(\ValorTDC[3]_i_29_n_0 ),
        .I4(FFStop_OBUF[17]),
        .I5(FFStop_OBUF[13]),
        .O(\ValorTDC[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h7000000040000000)) 
    \ValorTDC[3]_i_22 
       (.I0(FFStop_OBUF[9]),
        .I1(FFStop_OBUF[10]),
        .I2(FFStop_OBUF[11]),
        .I3(FFStop_OBUF[13]),
        .I4(FFStop_OBUF[12]),
        .I5(FFStop_OBUF[14]),
        .O(\ValorTDC[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h30000000A0000000)) 
    \ValorTDC[3]_i_23 
       (.I0(FFStop_OBUF[30]),
        .I1(FFStop_OBUF[25]),
        .I2(FFStop_OBUF[29]),
        .I3(FFStop_OBUF[28]),
        .I4(FFStop_OBUF[27]),
        .I5(FFStop_OBUF[26]),
        .O(\ValorTDC[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[3]_i_24 
       (.I0(FFStop_OBUF[78]),
        .I1(FFStop_OBUF[79]),
        .O(\ValorTDC[3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \ValorTDC[3]_i_25 
       (.I0(FFStop_OBUF[51]),
        .I1(FFStop_OBUF[55]),
        .I2(FFStop_OBUF[52]),
        .I3(FFStop_OBUF[53]),
        .I4(FFStop_OBUF[54]),
        .O(\ValorTDC[3]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[3]_i_26 
       (.I0(FFStop_OBUF[54]),
        .I1(FFStop_OBUF[53]),
        .I2(FFStop_OBUF[55]),
        .I3(FFStop_OBUF[56]),
        .I4(FFStop_OBUF[52]),
        .O(\ValorTDC[3]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \ValorTDC[3]_i_27 
       (.I0(FFStop_OBUF[14]),
        .I1(FFStop_OBUF[15]),
        .I2(FFStop_OBUF[16]),
        .I3(FFStop_OBUF[17]),
        .I4(FFStop_OBUF[18]),
        .O(\ValorTDC[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \ValorTDC[3]_i_28 
       (.I0(FFStop_OBUF[11]),
        .I1(FFStop_OBUF[15]),
        .I2(FFStop_OBUF[14]),
        .I3(FFStop_OBUF[12]),
        .I4(FFStop_OBUF[13]),
        .O(\ValorTDC[3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ValorTDC[3]_i_29 
       (.I0(FFStop_OBUF[14]),
        .I1(FFStop_OBUF[16]),
        .I2(FFStop_OBUF[15]),
        .O(\ValorTDC[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h07770070)) 
    \ValorTDC[3]_i_3 
       (.I0(\ValorTDC[3]_i_6_n_0 ),
        .I1(\ValorTDC[6]_i_3_n_0 ),
        .I2(\ValorTDC[3]_i_7_n_0 ),
        .I3(\ValorTDC[6]_i_11_n_0 ),
        .I4(\ValorTDC[4]_i_6_n_0 ),
        .O(\ValorTDC[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABABABA)) 
    \ValorTDC[3]_i_4 
       (.I0(\ValorTDC[2]_i_3_n_0 ),
        .I1(\ValorTDC[3]_i_8_n_0 ),
        .I2(\ValorTDC[4]_i_8_n_0 ),
        .I3(\ValorTDC[3]_i_9_n_0 ),
        .I4(\ValorTDC[3]_i_10_n_0 ),
        .I5(\ValorTDC[3]_i_11_n_0 ),
        .O(\ValorTDC[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \ValorTDC[3]_i_5 
       (.I0(\ValorTDC[3]_i_12_n_0 ),
        .I1(\ValorTDC[4]_i_9_n_0 ),
        .I2(\ValorTDC[3]_i_13_n_0 ),
        .I3(\ValorTDC[3]_i_14_n_0 ),
        .I4(\ValorTDC[4]_i_8_n_0 ),
        .O(\ValorTDC[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ValorTDC[3]_i_6 
       (.I0(\ValorTDC[5]_i_17_n_0 ),
        .I1(\ValorTDC[5]_i_15_n_0 ),
        .I2(\ValorTDC[5]_i_19_n_0 ),
        .I3(\ValorTDC[5]_i_16_n_0 ),
        .O(\ValorTDC[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \ValorTDC[3]_i_7 
       (.I0(\ValorTDC[6]_i_23_n_0 ),
        .I1(\ValorTDC[3]_i_15_n_0 ),
        .I2(\ValorTDC[4]_i_6_n_0 ),
        .I3(\ValorTDC[3]_i_16_n_0 ),
        .I4(\ValorTDC[3]_i_17_n_0 ),
        .O(\ValorTDC[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \ValorTDC[3]_i_8 
       (.I0(\ValorTDC[3]_i_18_n_0 ),
        .I1(\ValorTDC[2]_i_15_n_0 ),
        .I2(\ValorTDC[5]_i_7_n_0 ),
        .I3(\ValorTDC[5]_i_8_n_0 ),
        .I4(\ValorTDC[3]_i_19_n_0 ),
        .I5(\ValorTDC[5]_i_11_n_0 ),
        .O(\ValorTDC[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ValorTDC[3]_i_9 
       (.I0(\ValorTDC[5]_i_10_n_0 ),
        .I1(\ValorTDC[5]_i_9_n_0 ),
        .I2(\ValorTDC[5]_i_8_n_0 ),
        .I3(\ValorTDC[5]_i_7_n_0 ),
        .O(\ValorTDC[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFABAAAAAAAA)) 
    \ValorTDC[4]_i_1 
       (.I0(\ValorTDC[4]_i_2_n_0 ),
        .I1(\ValorTDC[4]_i_3_n_0 ),
        .I2(\ValorTDC[4]_i_4_n_0 ),
        .I3(\ValorTDC[4]_i_5_n_0 ),
        .I4(\ValorTDC[4]_i_6_n_0 ),
        .I5(\ValorTDC[6]_i_2_n_0 ),
        .O(DecodedStop[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0020)) 
    \ValorTDC[4]_i_10 
       (.I0(FFStop_OBUF[48]),
        .I1(FFStop_OBUF[47]),
        .I2(FFStop_OBUF[51]),
        .I3(\ValorTDC[4]_i_15_n_0 ),
        .I4(\ValorTDC[5]_i_9_n_0 ),
        .I5(\ValorTDC[5]_i_7_n_0 ),
        .O(\ValorTDC[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \ValorTDC[4]_i_11 
       (.I0(FFStop_OBUF[31]),
        .I1(FFStop_OBUF[30]),
        .I2(FFStop_OBUF[34]),
        .I3(FFStop_OBUF[33]),
        .I4(FFStop_OBUF[32]),
        .O(\ValorTDC[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF7FFFFF)) 
    \ValorTDC[4]_i_12 
       (.I0(FFStop_OBUF[32]),
        .I1(FFStop_OBUF[33]),
        .I2(FFStop_OBUF[30]),
        .I3(FFStop_OBUF[29]),
        .I4(FFStop_OBUF[31]),
        .I5(\ValorTDC[4]_i_16_n_0 ),
        .O(\ValorTDC[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFD1FF11FFFFFF3F)) 
    \ValorTDC[4]_i_13 
       (.I0(FFStop_OBUF[39]),
        .I1(FFStop_OBUF[35]),
        .I2(FFStop_OBUF[34]),
        .I3(\ValorTDC[4]_i_17_n_0 ),
        .I4(FFStop_OBUF[33]),
        .I5(FFStop_OBUF[38]),
        .O(\ValorTDC[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFCFDF00000000)) 
    \ValorTDC[4]_i_14 
       (.I0(FFStop_OBUF[20]),
        .I1(\ValorTDC[4]_i_18_n_0 ),
        .I2(FFStop_OBUF[19]),
        .I3(FFStop_OBUF[16]),
        .I4(FFStop_OBUF[15]),
        .I5(\ValorTDC[1]_i_24_n_0 ),
        .O(\ValorTDC[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[4]_i_15 
       (.I0(FFStop_OBUF[49]),
        .I1(FFStop_OBUF[50]),
        .O(\ValorTDC[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h2000E00000000000)) 
    \ValorTDC[4]_i_16 
       (.I0(FFStop_OBUF[32]),
        .I1(FFStop_OBUF[28]),
        .I2(FFStop_OBUF[30]),
        .I3(FFStop_OBUF[29]),
        .I4(FFStop_OBUF[27]),
        .I5(FFStop_OBUF[31]),
        .O(\ValorTDC[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[4]_i_17 
       (.I0(FFStop_OBUF[36]),
        .I1(FFStop_OBUF[37]),
        .O(\ValorTDC[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[4]_i_18 
       (.I0(FFStop_OBUF[17]),
        .I1(FFStop_OBUF[18]),
        .O(\ValorTDC[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000BFFF)) 
    \ValorTDC[4]_i_2 
       (.I0(\ValorTDC[6]_i_4_n_0 ),
        .I1(\ValorTDC[6]_i_5_n_0 ),
        .I2(\ValorTDC[6]_i_6_n_0 ),
        .I3(\ValorTDC[6]_i_7_n_0 ),
        .I4(\ValorTDC[4]_i_7_n_0 ),
        .I5(\ValorTDC[6]_i_8_n_0 ),
        .O(\ValorTDC[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ValorTDC[4]_i_3 
       (.I0(\ValorTDC[2]_i_3_n_0 ),
        .I1(\ValorTDC[4]_i_8_n_0 ),
        .I2(\ValorTDC[4]_i_9_n_0 ),
        .O(\ValorTDC[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4544454445554545)) 
    \ValorTDC[4]_i_4 
       (.I0(\ValorTDC[4]_i_10_n_0 ),
        .I1(\ValorTDC[5]_i_2_n_0 ),
        .I2(\ValorTDC[5]_i_3_n_0 ),
        .I3(\ValorTDC[4]_i_11_n_0 ),
        .I4(\ValorTDC[4]_i_12_n_0 ),
        .I5(\ValorTDC[4]_i_13_n_0 ),
        .O(\ValorTDC[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ValorTDC[4]_i_5 
       (.I0(\ValorTDC[6]_i_3_n_0 ),
        .I1(\ValorTDC[5]_i_4_n_0 ),
        .O(\ValorTDC[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3000A00000000000)) 
    \ValorTDC[4]_i_6 
       (.I0(FFStop_OBUF[84]),
        .I1(FFStop_OBUF[79]),
        .I2(FFStop_OBUF[83]),
        .I3(FFStop_OBUF[82]),
        .I4(FFStop_OBUF[80]),
        .I5(FFStop_OBUF[81]),
        .O(\ValorTDC[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \ValorTDC[4]_i_7 
       (.I0(FFStop_OBUF[95]),
        .I1(FFStop_OBUF[99]),
        .I2(FFStop_OBUF[96]),
        .I3(FFStop_OBUF[98]),
        .I4(FFStop_OBUF[97]),
        .I5(\ValorTDC[5]_i_20_n_0 ),
        .O(\ValorTDC[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \ValorTDC[4]_i_8 
       (.I0(\ValorTDC[5]_i_11_n_0 ),
        .I1(\ValorTDC[5]_i_10_n_0 ),
        .I2(\ValorTDC[5]_i_9_n_0 ),
        .I3(\ValorTDC[5]_i_8_n_0 ),
        .I4(\ValorTDC[5]_i_7_n_0 ),
        .I5(\ValorTDC[2]_i_15_n_0 ),
        .O(\ValorTDC[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ValorTDC[4]_i_9 
       (.I0(\ValorTDC[1]_i_13_n_0 ),
        .I1(\ValorTDC[4]_i_14_n_0 ),
        .O(\ValorTDC[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0B0FFFF0000)) 
    \ValorTDC[5]_i_1 
       (.I0(\ValorTDC[5]_i_2_n_0 ),
        .I1(\ValorTDC[5]_i_3_n_0 ),
        .I2(\ValorTDC[6]_i_3_n_0 ),
        .I3(\ValorTDC[5]_i_4_n_0 ),
        .I4(\ValorTDC[5]_i_5_n_0 ),
        .I5(\ValorTDC[5]_i_6_n_0 ),
        .O(DecodedStop[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \ValorTDC[5]_i_10 
       (.I0(FFStop_OBUF[48]),
        .I1(FFStop_OBUF[47]),
        .I2(FFStop_OBUF[51]),
        .I3(FFStop_OBUF[50]),
        .I4(FFStop_OBUF[49]),
        .O(\ValorTDC[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ValorTDC[5]_i_11 
       (.I0(\ValorTDC[5]_i_25_n_0 ),
        .I1(\ValorTDC[5]_i_26_n_0 ),
        .I2(\ValorTDC[5]_i_27_n_0 ),
        .I3(\ValorTDC[5]_i_28_n_0 ),
        .I4(\ValorTDC[5]_i_29_n_0 ),
        .I5(\ValorTDC[5]_i_30_n_0 ),
        .O(\ValorTDC[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3000A00000000000)) 
    \ValorTDC[5]_i_12 
       (.I0(FFStop_OBUF[38]),
        .I1(FFStop_OBUF[33]),
        .I2(FFStop_OBUF[37]),
        .I3(FFStop_OBUF[36]),
        .I4(FFStop_OBUF[34]),
        .I5(FFStop_OBUF[35]),
        .O(\ValorTDC[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[5]_i_13 
       (.I0(FFStop_OBUF[38]),
        .I1(FFStop_OBUF[39]),
        .O(\ValorTDC[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5C00000000000000)) 
    \ValorTDC[5]_i_14 
       (.I0(FFStop_OBUF[31]),
        .I1(FFStop_OBUF[36]),
        .I2(FFStop_OBUF[32]),
        .I3(FFStop_OBUF[33]),
        .I4(FFStop_OBUF[34]),
        .I5(FFStop_OBUF[35]),
        .O(\ValorTDC[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h1555044400400040)) 
    \ValorTDC[5]_i_15 
       (.I0(\ValorTDC[5]_i_31_n_0 ),
        .I1(FFStop_OBUF[62]),
        .I2(FFStop_OBUF[61]),
        .I3(FFStop_OBUF[60]),
        .I4(FFStop_OBUF[66]),
        .I5(FFStop_OBUF[65]),
        .O(\ValorTDC[5]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[5]_i_16 
       (.I0(FFStop_OBUF[57]),
        .I1(FFStop_OBUF[60]),
        .I2(FFStop_OBUF[59]),
        .I3(FFStop_OBUF[58]),
        .I4(FFStop_OBUF[56]),
        .O(\ValorTDC[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \ValorTDC[5]_i_17 
       (.I0(FFStop_OBUF[57]),
        .I1(FFStop_OBUF[55]),
        .I2(FFStop_OBUF[59]),
        .I3(FFStop_OBUF[56]),
        .I4(FFStop_OBUF[58]),
        .O(\ValorTDC[5]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[5]_i_18 
       (.I0(FFStop_OBUF[55]),
        .I1(FFStop_OBUF[56]),
        .I2(FFStop_OBUF[57]),
        .I3(FFStop_OBUF[58]),
        .I4(FFStop_OBUF[54]),
        .O(\ValorTDC[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \ValorTDC[5]_i_19 
       (.I0(FFStop_OBUF[62]),
        .I1(FFStop_OBUF[61]),
        .I2(FFStop_OBUF[60]),
        .I3(FFStop_OBUF[59]),
        .I4(FFStop_OBUF[63]),
        .I5(\ValorTDC[5]_i_32_n_0 ),
        .O(\ValorTDC[5]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \ValorTDC[5]_i_2 
       (.I0(\ValorTDC[5]_i_7_n_0 ),
        .I1(\ValorTDC[5]_i_8_n_0 ),
        .I2(\ValorTDC[5]_i_9_n_0 ),
        .I3(\ValorTDC[5]_i_10_n_0 ),
        .I4(\ValorTDC[5]_i_11_n_0 ),
        .O(\ValorTDC[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80BF8FBFFFFFFFFF)) 
    \ValorTDC[5]_i_20 
       (.I0(FFStop_OBUF[96]),
        .I1(FFStop_OBUF[97]),
        .I2(FFStop_OBUF[98]),
        .I3(FFStop_OBUF[101]),
        .I4(FFStop_OBUF[102]),
        .I5(\ValorTDC[5]_i_33_n_0 ),
        .O(\ValorTDC[5]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[5]_i_21 
       (.I0(FFStop_OBUF[97]),
        .I1(FFStop_OBUF[98]),
        .I2(FFStop_OBUF[96]),
        .I3(FFStop_OBUF[99]),
        .I4(FFStop_OBUF[95]),
        .O(\ValorTDC[5]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ValorTDC[5]_i_22 
       (.I0(FFStop_OBUF[51]),
        .I1(FFStop_OBUF[52]),
        .O(\ValorTDC[5]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[5]_i_23 
       (.I0(FFStop_OBUF[53]),
        .I1(FFStop_OBUF[54]),
        .O(\ValorTDC[5]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[5]_i_24 
       (.I0(FFStop_OBUF[55]),
        .I1(FFStop_OBUF[56]),
        .I2(FFStop_OBUF[57]),
        .I3(FFStop_OBUF[54]),
        .I4(FFStop_OBUF[53]),
        .O(\ValorTDC[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hA3FFFFFFFFFFFFFF)) 
    \ValorTDC[5]_i_25 
       (.I0(FFStop_OBUF[37]),
        .I1(FFStop_OBUF[42]),
        .I2(FFStop_OBUF[38]),
        .I3(FFStop_OBUF[39]),
        .I4(FFStop_OBUF[40]),
        .I5(FFStop_OBUF[41]),
        .O(\ValorTDC[5]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \ValorTDC[5]_i_26 
       (.I0(FFStop_OBUF[40]),
        .I1(FFStop_OBUF[36]),
        .I2(FFStop_OBUF[38]),
        .I3(FFStop_OBUF[39]),
        .I4(FFStop_OBUF[37]),
        .O(\ValorTDC[5]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[5]_i_27 
       (.I0(FFStop_OBUF[42]),
        .I1(FFStop_OBUF[43]),
        .I2(FFStop_OBUF[44]),
        .I3(FFStop_OBUF[45]),
        .I4(FFStop_OBUF[41]),
        .O(\ValorTDC[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3000A00000000000)) 
    \ValorTDC[5]_i_28 
       (.I0(FFStop_OBUF[44]),
        .I1(FFStop_OBUF[39]),
        .I2(FFStop_OBUF[43]),
        .I3(FFStop_OBUF[42]),
        .I4(FFStop_OBUF[40]),
        .I5(FFStop_OBUF[41]),
        .O(\ValorTDC[5]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \ValorTDC[5]_i_29 
       (.I0(FFStop_OBUF[46]),
        .I1(FFStop_OBUF[45]),
        .I2(FFStop_OBUF[44]),
        .I3(FFStop_OBUF[42]),
        .I4(FFStop_OBUF[43]),
        .O(\ValorTDC[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555515)) 
    \ValorTDC[5]_i_3 
       (.I0(\ValorTDC[5]_i_12_n_0 ),
        .I1(FFStop_OBUF[37]),
        .I2(FFStop_OBUF[36]),
        .I3(\ValorTDC[5]_i_13_n_0 ),
        .I4(FFStop_OBUF[35]),
        .I5(\ValorTDC[5]_i_14_n_0 ),
        .O(\ValorTDC[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF377FFFFFFFFFFFF)) 
    \ValorTDC[5]_i_30 
       (.I0(FFStop_OBUF[48]),
        .I1(FFStop_OBUF[47]),
        .I2(FFStop_OBUF[43]),
        .I3(FFStop_OBUF[44]),
        .I4(FFStop_OBUF[45]),
        .I5(FFStop_OBUF[46]),
        .O(\ValorTDC[5]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[5]_i_31 
       (.I0(FFStop_OBUF[63]),
        .I1(FFStop_OBUF[64]),
        .O(\ValorTDC[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00800000C0800000)) 
    \ValorTDC[5]_i_32 
       (.I0(FFStop_OBUF[62]),
        .I1(FFStop_OBUF[60]),
        .I2(FFStop_OBUF[59]),
        .I3(FFStop_OBUF[58]),
        .I4(FFStop_OBUF[61]),
        .I5(FFStop_OBUF[57]),
        .O(\ValorTDC[5]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ValorTDC[5]_i_33 
       (.I0(FFStop_OBUF[99]),
        .I1(FFStop_OBUF[100]),
        .O(\ValorTDC[5]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ValorTDC[5]_i_4 
       (.I0(\ValorTDC[5]_i_15_n_0 ),
        .I1(\ValorTDC[5]_i_16_n_0 ),
        .I2(\ValorTDC[5]_i_17_n_0 ),
        .I3(\ValorTDC[5]_i_18_n_0 ),
        .I4(\ValorTDC[5]_i_19_n_0 ),
        .O(\ValorTDC[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \ValorTDC[5]_i_5 
       (.I0(\ValorTDC[6]_i_8_n_0 ),
        .I1(\ValorTDC[5]_i_20_n_0 ),
        .I2(\ValorTDC[5]_i_21_n_0 ),
        .O(\ValorTDC[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ValorTDC[5]_i_6 
       (.I0(\ValorTDC[6]_i_7_n_0 ),
        .I1(\ValorTDC[6]_i_6_n_0 ),
        .I2(\ValorTDC[6]_i_5_n_0 ),
        .I3(\ValorTDC[6]_i_4_n_0 ),
        .O(\ValorTDC[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4CCC400040C04000)) 
    \ValorTDC[5]_i_7 
       (.I0(FFStop_OBUF[48]),
        .I1(\ValorTDC[5]_i_22_n_0 ),
        .I2(FFStop_OBUF[50]),
        .I3(FFStop_OBUF[49]),
        .I4(FFStop_OBUF[53]),
        .I5(FFStop_OBUF[54]),
        .O(\ValorTDC[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF77FF7FFF)) 
    \ValorTDC[5]_i_8 
       (.I0(FFStop_OBUF[48]),
        .I1(FFStop_OBUF[47]),
        .I2(FFStop_OBUF[50]),
        .I3(FFStop_OBUF[49]),
        .I4(FFStop_OBUF[46]),
        .I5(FFStop_OBUF[45]),
        .O(\ValorTDC[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000030A0)) 
    \ValorTDC[5]_i_9 
       (.I0(FFStop_OBUF[56]),
        .I1(FFStop_OBUF[51]),
        .I2(FFStop_OBUF[55]),
        .I3(FFStop_OBUF[52]),
        .I4(\ValorTDC[5]_i_23_n_0 ),
        .I5(\ValorTDC[5]_i_24_n_0 ),
        .O(\ValorTDC[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[6]_i_1 
       (.I0(\ValorTDC[6]_i_2_n_0 ),
        .I1(\ValorTDC[6]_i_3_n_0 ),
        .O(DecodedStop[6]));
  LUT6 #(
    .INIT(64'hAFEEAAAAFFFFFFFF)) 
    \ValorTDC[6]_i_10 
       (.I0(\ValorTDC[6]_i_21_n_0 ),
        .I1(FFStop_OBUF[80]),
        .I2(FFStop_OBUF[75]),
        .I3(FFStop_OBUF[76]),
        .I4(\ValorTDC[6]_i_22_n_0 ),
        .I5(\ValorTDC[6]_i_23_n_0 ),
        .O(\ValorTDC[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[6]_i_11 
       (.I0(FFStop_OBUF[75]),
        .I1(FFStop_OBUF[74]),
        .I2(FFStop_OBUF[72]),
        .I3(FFStop_OBUF[73]),
        .I4(FFStop_OBUF[71]),
        .O(\ValorTDC[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4C40000000000000)) 
    \ValorTDC[6]_i_12 
       (.I0(FFStop_OBUF[69]),
        .I1(FFStop_OBUF[71]),
        .I2(FFStop_OBUF[70]),
        .I3(FFStop_OBUF[74]),
        .I4(FFStop_OBUF[72]),
        .I5(FFStop_OBUF[73]),
        .O(\ValorTDC[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7F00400070004000)) 
    \ValorTDC[6]_i_13 
       (.I0(FFStop_OBUF[63]),
        .I1(FFStop_OBUF[64]),
        .I2(FFStop_OBUF[65]),
        .I3(\ValorTDC[6]_i_24_n_0 ),
        .I4(FFStop_OBUF[68]),
        .I5(FFStop_OBUF[69]),
        .O(\ValorTDC[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \ValorTDC[6]_i_14 
       (.I0(FFStop_OBUF[70]),
        .I1(FFStop_OBUF[66]),
        .I2(FFStop_OBUF[67]),
        .I3(FFStop_OBUF[68]),
        .I4(FFStop_OBUF[69]),
        .I5(\ValorTDC[6]_i_25_n_0 ),
        .O(\ValorTDC[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFFFF7F7FFFFF)) 
    \ValorTDC[6]_i_15 
       (.I0(FFStop_OBUF[96]),
        .I1(FFStop_OBUF[94]),
        .I2(FFStop_OBUF[95]),
        .I3(FFStop_OBUF[91]),
        .I4(FFStop_OBUF[93]),
        .I5(FFStop_OBUF[92]),
        .O(\ValorTDC[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0080000080808000)) 
    \ValorTDC[6]_i_16 
       (.I0(FFStop_OBUF[91]),
        .I1(FFStop_OBUF[89]),
        .I2(FFStop_OBUF[90]),
        .I3(FFStop_OBUF[88]),
        .I4(FFStop_OBUF[92]),
        .I5(FFStop_OBUF[87]),
        .O(\ValorTDC[6]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ValorTDC[6]_i_17 
       (.I0(FFStop_OBUF[87]),
        .I1(FFStop_OBUF[88]),
        .O(\ValorTDC[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h08000000C8000000)) 
    \ValorTDC[6]_i_18 
       (.I0(FFStop_OBUF[88]),
        .I1(FFStop_OBUF[85]),
        .I2(FFStop_OBUF[84]),
        .I3(FFStop_OBUF[86]),
        .I4(FFStop_OBUF[87]),
        .I5(FFStop_OBUF[83]),
        .O(\ValorTDC[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ValorTDC[6]_i_19 
       (.I0(FFStop_OBUF[75]),
        .I1(FFStop_OBUF[74]),
        .I2(FFStop_OBUF[76]),
        .O(\ValorTDC[6]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \ValorTDC[6]_i_2 
       (.I0(\ValorTDC[6]_i_4_n_0 ),
        .I1(\ValorTDC[6]_i_5_n_0 ),
        .I2(\ValorTDC[6]_i_6_n_0 ),
        .I3(\ValorTDC[6]_i_7_n_0 ),
        .I4(\ValorTDC[6]_i_8_n_0 ),
        .O(\ValorTDC[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \ValorTDC[6]_i_20 
       (.I0(FFStop_OBUF[74]),
        .I1(FFStop_OBUF[75]),
        .I2(FFStop_OBUF[76]),
        .I3(FFStop_OBUF[77]),
        .I4(FFStop_OBUF[78]),
        .O(\ValorTDC[6]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \ValorTDC[6]_i_21 
       (.I0(FFStop_OBUF[77]),
        .I1(FFStop_OBUF[80]),
        .I2(FFStop_OBUF[81]),
        .I3(FFStop_OBUF[79]),
        .I4(FFStop_OBUF[78]),
        .O(\ValorTDC[6]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ValorTDC[6]_i_22 
       (.I0(FFStop_OBUF[77]),
        .I1(FFStop_OBUF[79]),
        .I2(FFStop_OBUF[78]),
        .O(\ValorTDC[6]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \ValorTDC[6]_i_23 
       (.I0(FFStop_OBUF[82]),
        .I1(FFStop_OBUF[78]),
        .I2(FFStop_OBUF[79]),
        .I3(FFStop_OBUF[81]),
        .I4(FFStop_OBUF[80]),
        .O(\ValorTDC[6]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ValorTDC[6]_i_24 
       (.I0(FFStop_OBUF[66]),
        .I1(FFStop_OBUF[67]),
        .O(\ValorTDC[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h30A0000000000000)) 
    \ValorTDC[6]_i_25 
       (.I0(FFStop_OBUF[72]),
        .I1(FFStop_OBUF[67]),
        .I2(FFStop_OBUF[69]),
        .I3(FFStop_OBUF[68]),
        .I4(FFStop_OBUF[70]),
        .I5(FFStop_OBUF[71]),
        .O(\ValorTDC[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ValorTDC[6]_i_3 
       (.I0(\ValorTDC[6]_i_9_n_0 ),
        .I1(\ValorTDC[6]_i_10_n_0 ),
        .I2(\ValorTDC[6]_i_11_n_0 ),
        .I3(\ValorTDC[6]_i_12_n_0 ),
        .I4(\ValorTDC[6]_i_13_n_0 ),
        .I5(\ValorTDC[6]_i_14_n_0 ),
        .O(\ValorTDC[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \ValorTDC[6]_i_4 
       (.I0(\ValorTDC[5]_i_20_n_0 ),
        .I1(\ValorTDC[6]_i_15_n_0 ),
        .I2(\ValorTDC[1]_i_10_n_0 ),
        .I3(\ValorTDC[5]_i_21_n_0 ),
        .I4(\ValorTDC[1]_i_9_n_0 ),
        .O(\ValorTDC[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BFFFFFFF)) 
    \ValorTDC[6]_i_5 
       (.I0(FFStop_OBUF[89]),
        .I1(FFStop_OBUF[93]),
        .I2(FFStop_OBUF[92]),
        .I3(FFStop_OBUF[90]),
        .I4(FFStop_OBUF[91]),
        .I5(\ValorTDC[6]_i_16_n_0 ),
        .O(\ValorTDC[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF3FFFFF7F7FFFFF)) 
    \ValorTDC[6]_i_6 
       (.I0(FFStop_OBUF[86]),
        .I1(FFStop_OBUF[84]),
        .I2(FFStop_OBUF[85]),
        .I3(FFStop_OBUF[81]),
        .I4(FFStop_OBUF[83]),
        .I5(FFStop_OBUF[82]),
        .O(\ValorTDC[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EFAFFFBF)) 
    \ValorTDC[6]_i_7 
       (.I0(\ValorTDC[6]_i_17_n_0 ),
        .I1(FFStop_OBUF[86]),
        .I2(FFStop_OBUF[89]),
        .I3(FFStop_OBUF[85]),
        .I4(FFStop_OBUF[90]),
        .I5(\ValorTDC[6]_i_18_n_0 ),
        .O(\ValorTDC[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \ValorTDC[6]_i_8 
       (.I0(FFStop_OBUF[102]),
        .I1(FFStop_OBUF[101]),
        .I2(FFStop_OBUF[100]),
        .I3(FFStop_OBUF[103]),
        .I4(FFStop_OBUF[99]),
        .O(\ValorTDC[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF07FF04)) 
    \ValorTDC[6]_i_9 
       (.I0(FFStop_OBUF[72]),
        .I1(FFStop_OBUF[73]),
        .I2(\ValorTDC[6]_i_19_n_0 ),
        .I3(\ValorTDC[6]_i_20_n_0 ),
        .I4(FFStop_OBUF[77]),
        .I5(\ValorTDC[4]_i_6_n_0 ),
        .O(\ValorTDC[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF57550000)) 
    \ValorTDC[7]_i_1 
       (.I0(\ValorTDC[7]_i_2_n_0 ),
        .I1(\ValorTDC[10]_i_4_n_0 ),
        .I2(\ValorTDC[7]_i_3_n_0 ),
        .I3(\ValorTDC[7]_i_4_n_0 ),
        .I4(\ValorTDC[13]_i_2_n_0 ),
        .I5(\ValorTDC[7]_i_5_n_0 ),
        .O(DecodedStart[0]));
  LUT5 #(
    .INIT(32'h0000000D)) 
    \ValorTDC[7]_i_10 
       (.I0(\ValorTDC[12]_i_14_n_0 ),
        .I1(\ValorTDC[12]_i_16_n_0 ),
        .I2(\ValorTDC[7]_i_30_n_0 ),
        .I3(\ValorTDC[12]_i_28_n_0 ),
        .I4(\ValorTDC[7]_i_31_n_0 ),
        .O(\ValorTDC[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFBAA)) 
    \ValorTDC[7]_i_11 
       (.I0(\ValorTDC[12]_i_27_n_0 ),
        .I1(\ValorTDC[12]_i_11_n_0 ),
        .I2(\ValorTDC[7]_i_32_n_0 ),
        .I3(\ValorTDC[7]_i_33_n_0 ),
        .O(\ValorTDC[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hAA08)) 
    \ValorTDC[7]_i_12 
       (.I0(\ValorTDC[7]_i_34_n_0 ),
        .I1(\ValorTDC[7]_i_35_n_0 ),
        .I2(\ValorTDC[7]_i_36_n_0 ),
        .I3(\ValorTDC[7]_i_37_n_0 ),
        .O(\ValorTDC[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000002AAAAAAAAA)) 
    \ValorTDC[7]_i_13 
       (.I0(\ValorTDC[7]_i_38_n_0 ),
        .I1(\ValorTDC[7]_i_39_n_0 ),
        .I2(\ValorTDC[9]_i_19_n_0 ),
        .I3(\ValorTDC[9]_i_18_n_0 ),
        .I4(\ValorTDC[9]_i_20_n_0 ),
        .I5(\ValorTDC[7]_i_40_n_0 ),
        .O(\ValorTDC[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ValorTDC[7]_i_14 
       (.I0(\ValorTDC[11]_i_23_n_0 ),
        .I1(\ValorTDC[10]_i_25_n_0 ),
        .I2(\ValorTDC[10]_i_26_n_0 ),
        .O(\ValorTDC[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEF)) 
    \ValorTDC[7]_i_15 
       (.I0(\ValorTDC[7]_i_41_n_0 ),
        .I1(\ValorTDC[8]_i_36_n_0 ),
        .I2(\ValorTDC[7]_i_42_n_0 ),
        .I3(\ValorTDC[7]_i_43_n_0 ),
        .I4(\ValorTDC[10]_i_18_n_0 ),
        .I5(\ValorTDC[7]_i_44_n_0 ),
        .O(\ValorTDC[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FBFF)) 
    \ValorTDC[7]_i_16 
       (.I0(\ValorTDC[13]_i_19_n_0 ),
        .I1(\ValorTDC[7]_i_45_n_0 ),
        .I2(\ValorTDC[13]_i_17_n_0 ),
        .I3(\ValorTDC[13]_i_5_n_0 ),
        .I4(\ValorTDC[7]_i_46_n_0 ),
        .I5(\ValorTDC[7]_i_47_n_0 ),
        .O(\ValorTDC[7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \ValorTDC[7]_i_17 
       (.I0(\ValorTDC[13]_i_6_n_0 ),
        .I1(\ValorTDC[13]_i_5_n_0 ),
        .I2(\ValorTDC[13]_i_4_n_0 ),
        .O(\ValorTDC[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFDF)) 
    \ValorTDC[7]_i_18 
       (.I0(\ValorTDC[13]_i_22_n_0 ),
        .I1(FFStart_OBUF[83]),
        .I2(FFStart_OBUF[82]),
        .I3(FFStart_OBUF[86]),
        .I4(\ValorTDC[7]_i_48_n_0 ),
        .I5(\ValorTDC[13]_i_24_n_0 ),
        .O(\ValorTDC[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ValorTDC[7]_i_19 
       (.I0(FFStart_OBUF[88]),
        .I1(FFStart_OBUF[92]),
        .I2(FFStart_OBUF[89]),
        .I3(FFStart_OBUF[90]),
        .I4(FFStart_OBUF[91]),
        .O(\ValorTDC[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0D000D0D)) 
    \ValorTDC[7]_i_2 
       (.I0(\ValorTDC[13]_i_3_n_0 ),
        .I1(\ValorTDC[7]_i_6_n_0 ),
        .I2(\ValorTDC[7]_i_7_n_0 ),
        .I3(\ValorTDC[7]_i_8_n_0 ),
        .I4(\ValorTDC[10]_i_8_n_0 ),
        .O(\ValorTDC[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[7]_i_20 
       (.I0(FFStart_OBUF[66]),
        .I1(FFStart_OBUF[62]),
        .I2(FFStart_OBUF[65]),
        .I3(FFStart_OBUF[64]),
        .I4(FFStart_OBUF[63]),
        .I5(\ValorTDC[12]_i_18_n_0 ),
        .O(\ValorTDC[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[7]_i_21 
       (.I0(FFStart_OBUF[60]),
        .I1(FFStart_OBUF[59]),
        .I2(FFStart_OBUF[58]),
        .I3(FFStart_OBUF[61]),
        .I4(FFStart_OBUF[62]),
        .O(\ValorTDC[7]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ValorTDC[7]_i_22 
       (.I0(FFStart_OBUF[76]),
        .I1(FFStart_OBUF[80]),
        .I2(FFStart_OBUF[78]),
        .I3(FFStart_OBUF[79]),
        .I4(FFStart_OBUF[77]),
        .O(\ValorTDC[7]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ValorTDC[7]_i_23 
       (.I0(FFStart_OBUF[77]),
        .I1(FFStart_OBUF[76]),
        .I2(FFStart_OBUF[75]),
        .I3(FFStart_OBUF[74]),
        .I4(FFStart_OBUF[78]),
        .O(\ValorTDC[7]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ValorTDC[7]_i_24 
       (.I0(FFStart_OBUF[73]),
        .I1(FFStart_OBUF[72]),
        .I2(FFStart_OBUF[74]),
        .I3(FFStart_OBUF[70]),
        .I4(FFStart_OBUF[71]),
        .O(\ValorTDC[7]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[7]_i_25 
       (.I0(FFStart_OBUF[69]),
        .I1(FFStart_OBUF[68]),
        .I2(FFStart_OBUF[67]),
        .I3(FFStart_OBUF[70]),
        .I4(FFStart_OBUF[71]),
        .O(\ValorTDC[7]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[7]_i_26 
       (.I0(FFStart_OBUF[70]),
        .I1(FFStart_OBUF[71]),
        .I2(FFStart_OBUF[69]),
        .I3(FFStart_OBUF[73]),
        .I4(FFStart_OBUF[72]),
        .O(\ValorTDC[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[7]_i_27 
       (.I0(FFStart_OBUF[70]),
        .I1(FFStart_OBUF[66]),
        .I2(FFStart_OBUF[67]),
        .I3(FFStart_OBUF[68]),
        .I4(FFStart_OBUF[69]),
        .I5(\ValorTDC[9]_i_14_n_0 ),
        .O(\ValorTDC[7]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_28 
       (.I0(FFStart_OBUF[67]),
        .I1(FFStart_OBUF[66]),
        .I2(FFStart_OBUF[65]),
        .I3(FFStart_OBUF[64]),
        .I4(FFStart_OBUF[68]),
        .O(\ValorTDC[7]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ValorTDC[7]_i_29 
       (.I0(FFStart_OBUF[37]),
        .I1(FFStart_OBUF[36]),
        .I2(FFStart_OBUF[38]),
        .I3(FFStart_OBUF[34]),
        .I4(FFStart_OBUF[35]),
        .O(\ValorTDC[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8FF08FF)) 
    \ValorTDC[7]_i_3 
       (.I0(\ValorTDC[11]_i_15_n_0 ),
        .I1(\ValorTDC[7]_i_9_n_0 ),
        .I2(\ValorTDC[9]_i_11_n_0 ),
        .I3(\ValorTDC[10]_i_14_n_0 ),
        .I4(\ValorTDC[7]_i_10_n_0 ),
        .I5(\ValorTDC[7]_i_11_n_0 ),
        .O(\ValorTDC[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_30 
       (.I0(FFStart_OBUF[44]),
        .I1(FFStart_OBUF[42]),
        .I2(FFStart_OBUF[43]),
        .I3(FFStart_OBUF[40]),
        .I4(FFStart_OBUF[41]),
        .O(\ValorTDC[7]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_31 
       (.I0(FFStart_OBUF[45]),
        .I1(FFStart_OBUF[46]),
        .I2(FFStart_OBUF[47]),
        .I3(FFStart_OBUF[44]),
        .I4(FFStart_OBUF[48]),
        .O(\ValorTDC[7]_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[7]_i_32 
       (.I0(FFStart_OBUF[52]),
        .I1(FFStart_OBUF[51]),
        .I2(FFStart_OBUF[50]),
        .I3(FFStart_OBUF[53]),
        .I4(FFStart_OBUF[54]),
        .O(\ValorTDC[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555545555)) 
    \ValorTDC[7]_i_33 
       (.I0(\ValorTDC[12]_i_25_n_0 ),
        .I1(FFStart_OBUF[52]),
        .I2(FFStart_OBUF[54]),
        .I3(FFStart_OBUF[53]),
        .I4(FFStart_OBUF[51]),
        .I5(FFStart_OBUF[55]),
        .O(\ValorTDC[7]_i_33_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \ValorTDC[7]_i_34 
       (.I0(FFStart_OBUF[18]),
        .I1(FFStart_OBUF[17]),
        .I2(FFStart_OBUF[16]),
        .I3(FFStart_OBUF[19]),
        .I4(FFStart_OBUF[20]),
        .O(\ValorTDC[7]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \ValorTDC[7]_i_35 
       (.I0(FFStart_OBUF[10]),
        .I1(FFStart_OBUF[11]),
        .I2(FFStart_OBUF[14]),
        .I3(FFStart_OBUF[12]),
        .I4(FFStart_OBUF[13]),
        .O(\ValorTDC[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F00000044)) 
    \ValorTDC[7]_i_36 
       (.I0(FFStart_OBUF[13]),
        .I1(FFStart_OBUF[12]),
        .I2(\ValorTDC[11]_i_24_n_0 ),
        .I3(FFStart_OBUF[16]),
        .I4(FFStart_OBUF[15]),
        .I5(FFStart_OBUF[14]),
        .O(\ValorTDC[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \ValorTDC[7]_i_37 
       (.I0(FFStart_OBUF[16]),
        .I1(FFStart_OBUF[15]),
        .I2(FFStart_OBUF[19]),
        .I3(FFStart_OBUF[18]),
        .I4(FFStart_OBUF[17]),
        .I5(\ValorTDC[8]_i_33_n_0 ),
        .O(\ValorTDC[7]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ValorTDC[7]_i_38 
       (.I0(FFStart_OBUF[10]),
        .I1(FFStart_OBUF[11]),
        .I2(FFStart_OBUF[9]),
        .I3(FFStart_OBUF[8]),
        .I4(FFStart_OBUF[12]),
        .O(\ValorTDC[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \ValorTDC[7]_i_39 
       (.I0(FFStart_OBUF[1]),
        .I1(FFStart_OBUF[0]),
        .I2(FFStart_OBUF[3]),
        .I3(FFStart_OBUF[2]),
        .I4(FFStart_OBUF[4]),
        .I5(\ValorTDC[7]_i_49_n_0 ),
        .O(\ValorTDC[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7500)) 
    \ValorTDC[7]_i_4 
       (.I0(\ValorTDC[7]_i_12_n_0 ),
        .I1(\ValorTDC[7]_i_13_n_0 ),
        .I2(\ValorTDC[7]_i_14_n_0 ),
        .I3(\ValorTDC[8]_i_20_n_0 ),
        .I4(\ValorTDC[7]_i_15_n_0 ),
        .I5(\ValorTDC[8]_i_16_n_0 ),
        .O(\ValorTDC[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ValorTDC[7]_i_40 
       (.I0(FFStart_OBUF[10]),
        .I1(FFStart_OBUF[11]),
        .I2(FFStart_OBUF[9]),
        .I3(FFStart_OBUF[7]),
        .I4(FFStart_OBUF[8]),
        .O(\ValorTDC[7]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_41 
       (.I0(FFStart_OBUF[30]),
        .I1(FFStart_OBUF[28]),
        .I2(FFStart_OBUF[29]),
        .I3(FFStart_OBUF[26]),
        .I4(FFStart_OBUF[27]),
        .O(\ValorTDC[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDF0DDFFFFFFFF)) 
    \ValorTDC[7]_i_42 
       (.I0(FFStart_OBUF[18]),
        .I1(FFStart_OBUF[19]),
        .I2(FFStart_OBUF[24]),
        .I3(FFStart_OBUF[20]),
        .I4(FFStart_OBUF[23]),
        .I5(\ValorTDC[7]_i_50_n_0 ),
        .O(\ValorTDC[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0002000E00020F0E)) 
    \ValorTDC[7]_i_43 
       (.I0(FFStart_OBUF[21]),
        .I1(FFStart_OBUF[22]),
        .I2(\ValorTDC[7]_i_51_n_0 ),
        .I3(FFStart_OBUF[23]),
        .I4(FFStart_OBUF[26]),
        .I5(FFStart_OBUF[27]),
        .O(\ValorTDC[7]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_44 
       (.I0(FFStart_OBUF[24]),
        .I1(FFStart_OBUF[25]),
        .I2(FFStart_OBUF[23]),
        .I3(FFStart_OBUF[22]),
        .I4(FFStart_OBUF[26]),
        .O(\ValorTDC[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \ValorTDC[7]_i_45 
       (.I0(FFStart_OBUF[93]),
        .I1(FFStart_OBUF[92]),
        .I2(FFStart_OBUF[96]),
        .I3(FFStart_OBUF[95]),
        .I4(FFStart_OBUF[94]),
        .I5(\ValorTDC[13]_i_15_n_0 ),
        .O(\ValorTDC[7]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_46 
       (.I0(FFStart_OBUF[98]),
        .I1(FFStart_OBUF[97]),
        .I2(FFStart_OBUF[96]),
        .I3(FFStart_OBUF[94]),
        .I4(FFStart_OBUF[95]),
        .O(\ValorTDC[7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h0101010100000F00)) 
    \ValorTDC[7]_i_47 
       (.I0(FFStart_OBUF[101]),
        .I1(FFStart_OBUF[102]),
        .I2(\ValorTDC[7]_i_52_n_0 ),
        .I3(FFStart_OBUF[96]),
        .I4(FFStart_OBUF[97]),
        .I5(FFStart_OBUF[98]),
        .O(\ValorTDC[7]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[7]_i_48 
       (.I0(FFStart_OBUF[90]),
        .I1(FFStart_OBUF[89]),
        .I2(FFStart_OBUF[88]),
        .I3(FFStart_OBUF[86]),
        .I4(FFStart_OBUF[87]),
        .O(\ValorTDC[7]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \ValorTDC[7]_i_49 
       (.I0(FFStart_OBUF[6]),
        .I1(FFStart_OBUF[4]),
        .I2(FFStart_OBUF[3]),
        .I3(FFStart_OBUF[2]),
        .I4(FFStart_OBUF[5]),
        .O(\ValorTDC[7]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055757777)) 
    \ValorTDC[7]_i_5 
       (.I0(\ValorTDC[7]_i_16_n_0 ),
        .I1(\ValorTDC[7]_i_17_n_0 ),
        .I2(\ValorTDC[13]_i_7_n_0 ),
        .I3(\ValorTDC[7]_i_18_n_0 ),
        .I4(\ValorTDC[7]_i_19_n_0 ),
        .I5(\ValorTDC[8]_i_3_n_0 ),
        .O(\ValorTDC[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ValorTDC[7]_i_50 
       (.I0(FFStart_OBUF[21]),
        .I1(FFStart_OBUF[22]),
        .O(\ValorTDC[7]_i_50_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[7]_i_51 
       (.I0(FFStart_OBUF[24]),
        .I1(FFStart_OBUF[25]),
        .O(\ValorTDC[7]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[7]_i_52 
       (.I0(FFStart_OBUF[99]),
        .I1(FFStart_OBUF[100]),
        .O(\ValorTDC[7]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF1)) 
    \ValorTDC[7]_i_6 
       (.I0(\ValorTDC[12]_i_19_n_0 ),
        .I1(\ValorTDC[9]_i_22_n_0 ),
        .I2(\ValorTDC[10]_i_19_n_0 ),
        .I3(\ValorTDC[10]_i_20_n_0 ),
        .I4(\ValorTDC[7]_i_20_n_0 ),
        .I5(\ValorTDC[7]_i_21_n_0 ),
        .O(\ValorTDC[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFBFAAAAAAAA)) 
    \ValorTDC[7]_i_7 
       (.I0(\ValorTDC[13]_i_9_n_0 ),
        .I1(\ValorTDC[7]_i_22_n_0 ),
        .I2(\ValorTDC[13]_i_13_n_0 ),
        .I3(\ValorTDC[13]_i_12_n_0 ),
        .I4(\ValorTDC[7]_i_23_n_0 ),
        .I5(\ValorTDC[8]_i_27_n_0 ),
        .O(\ValorTDC[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8AAAA)) 
    \ValorTDC[7]_i_8 
       (.I0(\ValorTDC[7]_i_24_n_0 ),
        .I1(\ValorTDC[7]_i_25_n_0 ),
        .I2(\ValorTDC[10]_i_9_n_0 ),
        .I3(\ValorTDC[7]_i_26_n_0 ),
        .I4(\ValorTDC[7]_i_27_n_0 ),
        .I5(\ValorTDC[7]_i_28_n_0 ),
        .O(\ValorTDC[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h888A8888)) 
    \ValorTDC[7]_i_9 
       (.I0(\ValorTDC[7]_i_29_n_0 ),
        .I1(\ValorTDC[11]_i_11_n_0 ),
        .I2(\ValorTDC[11]_i_13_n_0 ),
        .I3(\ValorTDC[12]_i_8_n_0 ),
        .I4(\ValorTDC[11]_i_22_n_0 ),
        .O(\ValorTDC[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1FFF1F1F11111111)) 
    \ValorTDC[8]_i_1 
       (.I0(\ValorTDC[8]_i_2_n_0 ),
        .I1(\ValorTDC[8]_i_3_n_0 ),
        .I2(\ValorTDC[8]_i_4_n_0 ),
        .I3(\ValorTDC[8]_i_5_n_0 ),
        .I4(\ValorTDC[8]_i_6_n_0 ),
        .I5(\ValorTDC[13]_i_2_n_0 ),
        .O(DecodedStart[1]));
  LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
    \ValorTDC[8]_i_10 
       (.I0(FFStart_OBUF[99]),
        .I1(FFStart_OBUF[95]),
        .I2(FFStart_OBUF[96]),
        .I3(FFStart_OBUF[97]),
        .I4(FFStart_OBUF[98]),
        .I5(\ValorTDC[13]_i_5_n_0 ),
        .O(\ValorTDC[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ValorTDC[8]_i_11 
       (.I0(\ValorTDC[13]_i_17_n_0 ),
        .I1(\ValorTDC[13]_i_15_n_0 ),
        .I2(\ValorTDC[13]_i_5_n_0 ),
        .O(\ValorTDC[8]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF0D)) 
    \ValorTDC[8]_i_12 
       (.I0(\ValorTDC[9]_i_22_n_0 ),
        .I1(\ValorTDC[12]_i_21_n_0 ),
        .I2(\ValorTDC[12]_i_22_n_0 ),
        .I3(\ValorTDC[12]_i_18_n_0 ),
        .I4(\ValorTDC[12]_i_17_n_0 ),
        .O(\ValorTDC[8]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \ValorTDC[8]_i_13 
       (.I0(\ValorTDC[8]_i_25_n_0 ),
        .I1(\ValorTDC[9]_i_14_n_0 ),
        .I2(\ValorTDC[10]_i_9_n_0 ),
        .I3(\ValorTDC[9]_i_13_n_0 ),
        .O(\ValorTDC[8]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[8]_i_14 
       (.I0(FFStart_OBUF[81]),
        .I1(FFStart_OBUF[80]),
        .I2(FFStart_OBUF[82]),
        .I3(FFStart_OBUF[78]),
        .I4(FFStart_OBUF[79]),
        .O(\ValorTDC[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100010)) 
    \ValorTDC[8]_i_15 
       (.I0(FFStart_OBUF[79]),
        .I1(FFStart_OBUF[78]),
        .I2(FFStart_OBUF[77]),
        .I3(\ValorTDC[8]_i_26_n_0 ),
        .I4(\ValorTDC[13]_i_10_n_0 ),
        .I5(\ValorTDC[8]_i_27_n_0 ),
        .O(\ValorTDC[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \ValorTDC[8]_i_16 
       (.I0(\ValorTDC[8]_i_28_n_0 ),
        .I1(\ValorTDC[12]_i_13_n_0 ),
        .I2(\ValorTDC[12]_i_14_n_0 ),
        .I3(\ValorTDC[8]_i_29_n_0 ),
        .I4(\ValorTDC[8]_i_30_n_0 ),
        .I5(\ValorTDC[12]_i_3_n_0 ),
        .O(\ValorTDC[8]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00F1)) 
    \ValorTDC[8]_i_17 
       (.I0(\ValorTDC[10]_i_17_n_0 ),
        .I1(\ValorTDC[8]_i_31_n_0 ),
        .I2(\ValorTDC[9]_i_16_n_0 ),
        .I3(\ValorTDC[10]_i_18_n_0 ),
        .I4(\ValorTDC[10]_i_27_n_0 ),
        .O(\ValorTDC[8]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7500FFFF)) 
    \ValorTDC[8]_i_18 
       (.I0(\ValorTDC[8]_i_32_n_0 ),
        .I1(\ValorTDC[10]_i_25_n_0 ),
        .I2(\ValorTDC[10]_i_26_n_0 ),
        .I3(\ValorTDC[11]_i_23_n_0 ),
        .I4(\ValorTDC[8]_i_33_n_0 ),
        .O(\ValorTDC[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFEFEFFFFFFFFF)) 
    \ValorTDC[8]_i_19 
       (.I0(\ValorTDC[10]_i_26_n_0 ),
        .I1(\ValorTDC[10]_i_25_n_0 ),
        .I2(\ValorTDC[11]_i_23_n_0 ),
        .I3(\ValorTDC[8]_i_34_n_0 ),
        .I4(\ValorTDC[8]_i_35_n_0 ),
        .I5(\ValorTDC[10]_i_24_n_0 ),
        .O(\ValorTDC[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA888888888)) 
    \ValorTDC[8]_i_2 
       (.I0(\ValorTDC[8]_i_7_n_0 ),
        .I1(\ValorTDC[8]_i_8_n_0 ),
        .I2(\ValorTDC[8]_i_9_n_0 ),
        .I3(\ValorTDC[13]_i_4_n_0 ),
        .I4(\ValorTDC[8]_i_10_n_0 ),
        .I5(\ValorTDC[8]_i_11_n_0 ),
        .O(\ValorTDC[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ValorTDC[8]_i_20 
       (.I0(\ValorTDC[9]_i_17_n_0 ),
        .I1(\ValorTDC[8]_i_31_n_0 ),
        .I2(\ValorTDC[9]_i_16_n_0 ),
        .I3(\ValorTDC[10]_i_17_n_0 ),
        .I4(\ValorTDC[8]_i_36_n_0 ),
        .I5(\ValorTDC[10]_i_27_n_0 ),
        .O(\ValorTDC[8]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF10)) 
    \ValorTDC[8]_i_21 
       (.I0(\ValorTDC[11]_i_9_n_0 ),
        .I1(\ValorTDC[8]_i_37_n_0 ),
        .I2(\ValorTDC[10]_i_21_n_0 ),
        .I3(\ValorTDC[12]_i_24_n_0 ),
        .I4(\ValorTDC[12]_i_25_n_0 ),
        .O(\ValorTDC[8]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0045)) 
    \ValorTDC[8]_i_22 
       (.I0(\ValorTDC[12]_i_30_n_0 ),
        .I1(\ValorTDC[8]_i_38_n_0 ),
        .I2(\ValorTDC[12]_i_29_n_0 ),
        .I3(\ValorTDC[12]_i_28_n_0 ),
        .O(\ValorTDC[8]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h00F1)) 
    \ValorTDC[8]_i_23 
       (.I0(\ValorTDC[11]_i_21_n_0 ),
        .I1(\ValorTDC[11]_i_13_n_0 ),
        .I2(\ValorTDC[11]_i_11_n_0 ),
        .I3(\ValorTDC[12]_i_10_n_0 ),
        .O(\ValorTDC[8]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[8]_i_24 
       (.I0(FFStart_OBUF[92]),
        .I1(FFStart_OBUF[93]),
        .I2(FFStart_OBUF[91]),
        .I3(FFStart_OBUF[89]),
        .I4(FFStart_OBUF[90]),
        .O(\ValorTDC[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000050C)) 
    \ValorTDC[8]_i_25 
       (.I0(FFStart_OBUF[70]),
        .I1(FFStart_OBUF[65]),
        .I2(FFStart_OBUF[67]),
        .I3(FFStart_OBUF[66]),
        .I4(FFStart_OBUF[68]),
        .I5(FFStart_OBUF[69]),
        .O(\ValorTDC[8]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[8]_i_26 
       (.I0(FFStart_OBUF[80]),
        .I1(FFStart_OBUF[81]),
        .O(\ValorTDC[8]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \ValorTDC[8]_i_27 
       (.I0(FFStart_OBUF[79]),
        .I1(FFStart_OBUF[78]),
        .I2(FFStart_OBUF[82]),
        .I3(FFStart_OBUF[80]),
        .I4(FFStart_OBUF[81]),
        .I5(\ValorTDC[11]_i_7_n_0 ),
        .O(\ValorTDC[8]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ValorTDC[8]_i_28 
       (.I0(\ValorTDC[8]_i_39_n_0 ),
        .I1(\ValorTDC[8]_i_37_n_0 ),
        .I2(\ValorTDC[10]_i_23_n_0 ),
        .I3(\ValorTDC[12]_i_24_n_0 ),
        .O(\ValorTDC[8]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFECEF)) 
    \ValorTDC[8]_i_29 
       (.I0(FFStart_OBUF[41]),
        .I1(\ValorTDC[8]_i_40_n_0 ),
        .I2(FFStart_OBUF[37]),
        .I3(FFStart_OBUF[36]),
        .I4(FFStart_OBUF[40]),
        .I5(\ValorTDC[12]_i_32_n_0 ),
        .O(\ValorTDC[8]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[8]_i_3 
       (.I0(FFStart_OBUF[101]),
        .I1(FFStart_OBUF[102]),
        .I2(FFStart_OBUF[103]),
        .I3(FFStart_OBUF[99]),
        .I4(FFStart_OBUF[100]),
        .O(\ValorTDC[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFBFBFBFBFB)) 
    \ValorTDC[8]_i_30 
       (.I0(\ValorTDC[11]_i_13_n_0 ),
        .I1(\ValorTDC[11]_i_22_n_0 ),
        .I2(\ValorTDC[11]_i_21_n_0 ),
        .I3(FFStart_OBUF[31]),
        .I4(FFStart_OBUF[27]),
        .I5(\ValorTDC[11]_i_20_n_0 ),
        .O(\ValorTDC[8]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \ValorTDC[8]_i_31 
       (.I0(FFStart_OBUF[20]),
        .I1(FFStart_OBUF[19]),
        .I2(FFStart_OBUF[21]),
        .I3(FFStart_OBUF[22]),
        .I4(FFStart_OBUF[18]),
        .O(\ValorTDC[8]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEEFFFFFFCF)) 
    \ValorTDC[8]_i_32 
       (.I0(FFStart_OBUF[18]),
        .I1(FFStart_OBUF[17]),
        .I2(FFStart_OBUF[13]),
        .I3(FFStart_OBUF[16]),
        .I4(FFStart_OBUF[15]),
        .I5(FFStart_OBUF[14]),
        .O(\ValorTDC[8]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \ValorTDC[8]_i_33 
       (.I0(FFStart_OBUF[18]),
        .I1(FFStart_OBUF[21]),
        .I2(FFStart_OBUF[17]),
        .I3(FFStart_OBUF[19]),
        .I4(FFStart_OBUF[20]),
        .O(\ValorTDC[8]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001310)) 
    \ValorTDC[8]_i_34 
       (.I0(FFStart_OBUF[10]),
        .I1(FFStart_OBUF[8]),
        .I2(FFStart_OBUF[6]),
        .I3(FFStart_OBUF[5]),
        .I4(FFStart_OBUF[7]),
        .I5(FFStart_OBUF[9]),
        .O(\ValorTDC[8]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEEFFCF)) 
    \ValorTDC[8]_i_35 
       (.I0(FFStart_OBUF[6]),
        .I1(FFStart_OBUF[5]),
        .I2(FFStart_OBUF[1]),
        .I3(FFStart_OBUF[3]),
        .I4(FFStart_OBUF[2]),
        .I5(FFStart_OBUF[4]),
        .O(\ValorTDC[8]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[8]_i_36 
       (.I0(FFStart_OBUF[27]),
        .I1(FFStart_OBUF[26]),
        .I2(FFStart_OBUF[28]),
        .I3(FFStart_OBUF[24]),
        .I4(FFStart_OBUF[25]),
        .O(\ValorTDC[8]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[8]_i_37 
       (.I0(FFStart_OBUF[52]),
        .I1(FFStart_OBUF[51]),
        .I2(FFStart_OBUF[50]),
        .I3(FFStart_OBUF[48]),
        .I4(FFStart_OBUF[49]),
        .O(\ValorTDC[8]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDCD)) 
    \ValorTDC[8]_i_38 
       (.I0(FFStart_OBUF[37]),
        .I1(FFStart_OBUF[39]),
        .I2(FFStart_OBUF[38]),
        .I3(FFStart_OBUF[42]),
        .I4(FFStart_OBUF[40]),
        .I5(FFStart_OBUF[41]),
        .O(\ValorTDC[8]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[8]_i_39 
       (.I0(FFStart_OBUF[50]),
        .I1(FFStart_OBUF[48]),
        .I2(FFStart_OBUF[49]),
        .I3(FFStart_OBUF[46]),
        .I4(FFStart_OBUF[47]),
        .O(\ValorTDC[8]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DD0D)) 
    \ValorTDC[8]_i_4 
       (.I0(\ValorTDC[13]_i_3_n_0 ),
        .I1(\ValorTDC[8]_i_12_n_0 ),
        .I2(\ValorTDC[10]_i_8_n_0 ),
        .I3(\ValorTDC[8]_i_13_n_0 ),
        .I4(\ValorTDC[8]_i_14_n_0 ),
        .I5(\ValorTDC[8]_i_15_n_0 ),
        .O(\ValorTDC[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[8]_i_40 
       (.I0(FFStart_OBUF[38]),
        .I1(FFStart_OBUF[39]),
        .O(\ValorTDC[8]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAABABABAB)) 
    \ValorTDC[8]_i_5 
       (.I0(\ValorTDC[10]_i_4_n_0 ),
        .I1(\ValorTDC[8]_i_16_n_0 ),
        .I2(\ValorTDC[8]_i_17_n_0 ),
        .I3(\ValorTDC[8]_i_18_n_0 ),
        .I4(\ValorTDC[8]_i_19_n_0 ),
        .I5(\ValorTDC[8]_i_20_n_0 ),
        .O(\ValorTDC[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDFDDCFCCFFFFCFCC)) 
    \ValorTDC[8]_i_6 
       (.I0(\ValorTDC[11]_i_15_n_0 ),
        .I1(\ValorTDC[8]_i_21_n_0 ),
        .I2(\ValorTDC[8]_i_22_n_0 ),
        .I3(\ValorTDC[10]_i_14_n_0 ),
        .I4(\ValorTDC[12]_i_4_n_0 ),
        .I5(\ValorTDC[8]_i_23_n_0 ),
        .O(\ValorTDC[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF8B)) 
    \ValorTDC[8]_i_7 
       (.I0(FFStart_OBUF[102]),
        .I1(FFStart_OBUF[98]),
        .I2(FFStart_OBUF[97]),
        .I3(FFStart_OBUF[101]),
        .I4(FFStart_OBUF[99]),
        .I5(FFStart_OBUF[100]),
        .O(\ValorTDC[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[8]_i_8 
       (.I0(FFStart_OBUF[98]),
        .I1(FFStart_OBUF[97]),
        .I2(FFStart_OBUF[96]),
        .I3(FFStart_OBUF[99]),
        .I4(FFStart_OBUF[100]),
        .O(\ValorTDC[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000FBF8)) 
    \ValorTDC[8]_i_9 
       (.I0(\ValorTDC[11]_i_17_n_0 ),
        .I1(\ValorTDC[11]_i_16_n_0 ),
        .I2(\ValorTDC[13]_i_20_n_0 ),
        .I3(\ValorTDC[13]_i_23_n_0 ),
        .I4(\ValorTDC[8]_i_24_n_0 ),
        .O(\ValorTDC[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBBBAAAAAAAAA)) 
    \ValorTDC[9]_i_1 
       (.I0(\ValorTDC[9]_i_2_n_0 ),
        .I1(\ValorTDC[9]_i_3_n_0 ),
        .I2(\ValorTDC[9]_i_4_n_0 ),
        .I3(\ValorTDC[9]_i_5_n_0 ),
        .I4(\ValorTDC[9]_i_6_n_0 ),
        .I5(\ValorTDC[13]_i_2_n_0 ),
        .O(DecodedStart[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \ValorTDC[9]_i_10 
       (.I0(\ValorTDC[12]_i_14_n_0 ),
        .I1(\ValorTDC[12]_i_29_n_0 ),
        .O(\ValorTDC[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h55555755FFFFFFFF)) 
    \ValorTDC[9]_i_11 
       (.I0(\ValorTDC[12]_i_16_n_0 ),
        .I1(FFStart_OBUF[39]),
        .I2(FFStart_OBUF[38]),
        .I3(FFStart_OBUF[37]),
        .I4(\ValorTDC[9]_i_21_n_0 ),
        .I5(\ValorTDC[12]_i_14_n_0 ),
        .O(\ValorTDC[9]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    \ValorTDC[9]_i_12 
       (.I0(\ValorTDC[9]_i_22_n_0 ),
        .I1(\ValorTDC[10]_i_20_n_0 ),
        .I2(\ValorTDC[12]_i_21_n_0 ),
        .I3(\ValorTDC[10]_i_19_n_0 ),
        .O(\ValorTDC[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000232)) 
    \ValorTDC[9]_i_13 
       (.I0(FFStart_OBUF[69]),
        .I1(FFStart_OBUF[71]),
        .I2(FFStart_OBUF[70]),
        .I3(FFStart_OBUF[74]),
        .I4(FFStart_OBUF[72]),
        .I5(FFStart_OBUF[73]),
        .O(\ValorTDC[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010300)) 
    \ValorTDC[9]_i_14 
       (.I0(FFStart_OBUF[72]),
        .I1(FFStart_OBUF[71]),
        .I2(FFStart_OBUF[70]),
        .I3(FFStart_OBUF[67]),
        .I4(FFStart_OBUF[68]),
        .I5(FFStart_OBUF[69]),
        .O(\ValorTDC[9]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \ValorTDC[9]_i_15 
       (.I0(\ValorTDC[8]_i_14_n_0 ),
        .I1(\ValorTDC[11]_i_7_n_0 ),
        .I2(\ValorTDC[13]_i_13_n_0 ),
        .O(\ValorTDC[9]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0001010100000100)) 
    \ValorTDC[9]_i_16 
       (.I0(FFStart_OBUF[24]),
        .I1(FFStart_OBUF[25]),
        .I2(FFStart_OBUF[23]),
        .I3(FFStart_OBUF[22]),
        .I4(FFStart_OBUF[26]),
        .I5(FFStart_OBUF[21]),
        .O(\ValorTDC[9]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000074)) 
    \ValorTDC[9]_i_17 
       (.I0(FFStart_OBUF[24]),
        .I1(FFStart_OBUF[20]),
        .I2(FFStart_OBUF[19]),
        .I3(FFStart_OBUF[23]),
        .I4(FFStart_OBUF[21]),
        .I5(FFStart_OBUF[22]),
        .O(\ValorTDC[9]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ValorTDC[9]_i_18 
       (.I0(FFStart_OBUF[8]),
        .I1(FFStart_OBUF[6]),
        .I2(FFStart_OBUF[5]),
        .I3(FFStart_OBUF[7]),
        .I4(FFStart_OBUF[4]),
        .O(\ValorTDC[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555455)) 
    \ValorTDC[9]_i_19 
       (.I0(\ValorTDC[9]_i_23_n_0 ),
        .I1(FFStart_OBUF[6]),
        .I2(FFStart_OBUF[4]),
        .I3(FFStart_OBUF[3]),
        .I4(FFStart_OBUF[5]),
        .I5(FFStart_OBUF[7]),
        .O(\ValorTDC[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABFFFFABFF)) 
    \ValorTDC[9]_i_2 
       (.I0(\ValorTDC[8]_i_3_n_0 ),
        .I1(\ValorTDC[11]_i_16_n_0 ),
        .I2(\ValorTDC[10]_i_7_n_0 ),
        .I3(\ValorTDC[13]_i_5_n_0 ),
        .I4(\ValorTDC[9]_i_7_n_0 ),
        .I5(\ValorTDC[13]_i_6_n_0 ),
        .O(\ValorTDC[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \ValorTDC[9]_i_20 
       (.I0(FFStart_OBUF[8]),
        .I1(FFStart_OBUF[6]),
        .I2(FFStart_OBUF[10]),
        .I3(FFStart_OBUF[7]),
        .I4(FFStart_OBUF[9]),
        .O(\ValorTDC[9]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ValorTDC[9]_i_21 
       (.I0(FFStart_OBUF[40]),
        .I1(FFStart_OBUF[41]),
        .O(\ValorTDC[9]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \ValorTDC[9]_i_22 
       (.I0(FFStart_OBUF[55]),
        .I1(FFStart_OBUF[56]),
        .I2(FFStart_OBUF[57]),
        .I3(FFStart_OBUF[54]),
        .I4(FFStart_OBUF[58]),
        .O(\ValorTDC[9]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ValorTDC[9]_i_23 
       (.I0(FFStart_OBUF[9]),
        .I1(FFStart_OBUF[7]),
        .I2(FFStart_OBUF[5]),
        .I3(FFStart_OBUF[6]),
        .I4(FFStart_OBUF[8]),
        .O(\ValorTDC[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAABAAABA)) 
    \ValorTDC[9]_i_3 
       (.I0(\ValorTDC[10]_i_4_n_0 ),
        .I1(\ValorTDC[11]_i_15_n_0 ),
        .I2(\ValorTDC[12]_i_4_n_0 ),
        .I3(\ValorTDC[9]_i_8_n_0 ),
        .I4(\ValorTDC[11]_i_14_n_0 ),
        .I5(\ValorTDC[9]_i_9_n_0 ),
        .O(\ValorTDC[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC04040CC40)) 
    \ValorTDC[9]_i_4 
       (.I0(\ValorTDC[11]_i_11_n_0 ),
        .I1(\ValorTDC[12]_i_4_n_0 ),
        .I2(\ValorTDC[11]_i_13_n_0 ),
        .I3(\ValorTDC[11]_i_12_n_0 ),
        .I4(\ValorTDC[12]_i_3_n_0 ),
        .I5(\ValorTDC[12]_i_9_n_0 ),
        .O(\ValorTDC[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC500)) 
    \ValorTDC[9]_i_5 
       (.I0(\ValorTDC[11]_i_15_n_0 ),
        .I1(\ValorTDC[9]_i_10_n_0 ),
        .I2(\ValorTDC[9]_i_11_n_0 ),
        .I3(\ValorTDC[10]_i_14_n_0 ),
        .I4(\ValorTDC[11]_i_9_n_0 ),
        .I5(\ValorTDC[10]_i_13_n_0 ),
        .O(\ValorTDC[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F444)) 
    \ValorTDC[9]_i_6 
       (.I0(\ValorTDC[9]_i_12_n_0 ),
        .I1(\ValorTDC[13]_i_3_n_0 ),
        .I2(\ValorTDC[10]_i_8_n_0 ),
        .I3(\ValorTDC[9]_i_13_n_0 ),
        .I4(\ValorTDC[9]_i_14_n_0 ),
        .I5(\ValorTDC[9]_i_15_n_0 ),
        .O(\ValorTDC[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000232)) 
    \ValorTDC[9]_i_7 
       (.I0(FFStart_OBUF[91]),
        .I1(FFStart_OBUF[93]),
        .I2(FFStart_OBUF[92]),
        .I3(FFStart_OBUF[96]),
        .I4(FFStart_OBUF[95]),
        .I5(FFStart_OBUF[94]),
        .O(\ValorTDC[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h32)) 
    \ValorTDC[9]_i_8 
       (.I0(\ValorTDC[9]_i_16_n_0 ),
        .I1(\ValorTDC[10]_i_18_n_0 ),
        .I2(\ValorTDC[9]_i_17_n_0 ),
        .O(\ValorTDC[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFB00)) 
    \ValorTDC[9]_i_9 
       (.I0(\ValorTDC[9]_i_18_n_0 ),
        .I1(\ValorTDC[9]_i_19_n_0 ),
        .I2(\ValorTDC[9]_i_20_n_0 ),
        .I3(\ValorTDC[10]_i_24_n_0 ),
        .I4(\ValorTDC[10]_i_25_n_0 ),
        .I5(\ValorTDC[10]_i_26_n_0 ),
        .O(\ValorTDC[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[0] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[0]),
        .Q(oTDC_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[10] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[3]),
        .Q(oTDC_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[11] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[4]),
        .Q(oTDC_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[12] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[5]),
        .Q(oTDC_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[13] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[6]),
        .Q(oTDC_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[14] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(CoarseStamp),
        .Q(oTDC_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[1] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[1]),
        .Q(oTDC_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[2] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[2]),
        .Q(oTDC_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[3] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[3]),
        .Q(oTDC_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[4] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[4]),
        .Q(oTDC_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[5] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[5]),
        .Q(oTDC_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[6] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStop[6]),
        .Q(oTDC_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[7] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[0]),
        .Q(oTDC_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[8] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[1]),
        .Q(oTDC_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ValorTDC_reg[9] 
       (.C(iClk_IBUF_BUFG),
        .CE(StopDelay),
        .D(DecodedStart[2]),
        .Q(oTDC_OBUF[9]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    enable_delay_dff
       (.C(Fall),
        .CE(1'b1),
        .CLR(StopDelay),
        .D(1'b1),
        .Q(StartDelay));
  BUFG iClk_IBUF_BUFG_inst
       (.I(iClk_IBUF),
        .O(iClk_IBUF_BUFG));
  IBUF iClk_IBUF_inst
       (.I(iClk),
        .O(iClk_IBUF));
  IBUF iHit_IBUF_inst
       (.I(iHit),
        .O(iHit_IBUF));
  OBUF \oTDC_OBUF[0]_inst 
       (.I(oTDC_OBUF[0]),
        .O(oTDC[0]));
  OBUF \oTDC_OBUF[10]_inst 
       (.I(oTDC_OBUF[10]),
        .O(oTDC[10]));
  OBUF \oTDC_OBUF[11]_inst 
       (.I(oTDC_OBUF[11]),
        .O(oTDC[11]));
  OBUF \oTDC_OBUF[12]_inst 
       (.I(oTDC_OBUF[12]),
        .O(oTDC[12]));
  OBUF \oTDC_OBUF[13]_inst 
       (.I(oTDC_OBUF[13]),
        .O(oTDC[13]));
  OBUF \oTDC_OBUF[14]_inst 
       (.I(oTDC_OBUF[14]),
        .O(oTDC[14]));
  OBUF \oTDC_OBUF[15]_inst 
       (.I(1'b0),
        .O(oTDC[15]));
  OBUF \oTDC_OBUF[16]_inst 
       (.I(1'b0),
        .O(oTDC[16]));
  OBUF \oTDC_OBUF[17]_inst 
       (.I(1'b0),
        .O(oTDC[17]));
  OBUF \oTDC_OBUF[18]_inst 
       (.I(1'b0),
        .O(oTDC[18]));
  OBUF \oTDC_OBUF[19]_inst 
       (.I(1'b0),
        .O(oTDC[19]));
  OBUF \oTDC_OBUF[1]_inst 
       (.I(oTDC_OBUF[1]),
        .O(oTDC[1]));
  OBUF \oTDC_OBUF[20]_inst 
       (.I(1'b0),
        .O(oTDC[20]));
  OBUF \oTDC_OBUF[21]_inst 
       (.I(1'b0),
        .O(oTDC[21]));
  OBUF \oTDC_OBUF[22]_inst 
       (.I(1'b0),
        .O(oTDC[22]));
  OBUF \oTDC_OBUF[23]_inst 
       (.I(1'b0),
        .O(oTDC[23]));
  OBUF \oTDC_OBUF[2]_inst 
       (.I(oTDC_OBUF[2]),
        .O(oTDC[2]));
  OBUF \oTDC_OBUF[3]_inst 
       (.I(oTDC_OBUF[3]),
        .O(oTDC[3]));
  OBUF \oTDC_OBUF[4]_inst 
       (.I(oTDC_OBUF[4]),
        .O(oTDC[4]));
  OBUF \oTDC_OBUF[5]_inst 
       (.I(oTDC_OBUF[5]),
        .O(oTDC[5]));
  OBUF \oTDC_OBUF[6]_inst 
       (.I(oTDC_OBUF[6]),
        .O(oTDC[6]));
  OBUF \oTDC_OBUF[7]_inst 
       (.I(oTDC_OBUF[7]),
        .O(oTDC[7]));
  OBUF \oTDC_OBUF[8]_inst 
       (.I(oTDC_OBUF[8]),
        .O(oTDC[8]));
  OBUF \oTDC_OBUF[9]_inst 
       (.I(oTDC_OBUF[9]),
        .O(oTDC[9]));
  OBUF \taps_OBUF[0]_inst 
       (.I(taps_OBUF[0]),
        .O(taps[0]));
  OBUF \taps_OBUF[100]_inst 
       (.I(taps_OBUF[100]),
        .O(taps[100]));
  OBUF \taps_OBUF[101]_inst 
       (.I(taps_OBUF[101]),
        .O(taps[101]));
  OBUF \taps_OBUF[102]_inst 
       (.I(taps_OBUF[102]),
        .O(taps[102]));
  OBUF \taps_OBUF[103]_inst 
       (.I(taps_OBUF[103]),
        .O(taps[103]));
  OBUF \taps_OBUF[104]_inst 
       (.I(taps_OBUF[104]),
        .O(taps[104]));
  OBUF \taps_OBUF[105]_inst 
       (.I(taps_OBUF[105]),
        .O(taps[105]));
  OBUF \taps_OBUF[106]_inst 
       (.I(taps_OBUF[106]),
        .O(taps[106]));
  OBUF \taps_OBUF[107]_inst 
       (.I(taps_OBUF[107]),
        .O(taps[107]));
  OBUF \taps_OBUF[108]_inst 
       (.I(taps_OBUF[108]),
        .O(taps[108]));
  OBUF \taps_OBUF[109]_inst 
       (.I(taps_OBUF[109]),
        .O(taps[109]));
  OBUF \taps_OBUF[10]_inst 
       (.I(taps_OBUF[10]),
        .O(taps[10]));
  OBUF \taps_OBUF[110]_inst 
       (.I(taps_OBUF[110]),
        .O(taps[110]));
  OBUF \taps_OBUF[111]_inst 
       (.I(taps_OBUF[111]),
        .O(taps[111]));
  OBUF \taps_OBUF[112]_inst 
       (.I(taps_OBUF[112]),
        .O(taps[112]));
  OBUF \taps_OBUF[113]_inst 
       (.I(taps_OBUF[113]),
        .O(taps[113]));
  OBUF \taps_OBUF[114]_inst 
       (.I(taps_OBUF[114]),
        .O(taps[114]));
  OBUF \taps_OBUF[115]_inst 
       (.I(taps_OBUF[115]),
        .O(taps[115]));
  OBUF \taps_OBUF[116]_inst 
       (.I(taps_OBUF[116]),
        .O(taps[116]));
  OBUF \taps_OBUF[117]_inst 
       (.I(taps_OBUF[117]),
        .O(taps[117]));
  OBUF \taps_OBUF[118]_inst 
       (.I(taps_OBUF[118]),
        .O(taps[118]));
  OBUF \taps_OBUF[119]_inst 
       (.I(taps_OBUF[119]),
        .O(taps[119]));
  OBUF \taps_OBUF[11]_inst 
       (.I(taps_OBUF[11]),
        .O(taps[11]));
  OBUF \taps_OBUF[12]_inst 
       (.I(taps_OBUF[12]),
        .O(taps[12]));
  OBUF \taps_OBUF[13]_inst 
       (.I(taps_OBUF[13]),
        .O(taps[13]));
  OBUF \taps_OBUF[14]_inst 
       (.I(taps_OBUF[14]),
        .O(taps[14]));
  OBUF \taps_OBUF[15]_inst 
       (.I(taps_OBUF[15]),
        .O(taps[15]));
  OBUF \taps_OBUF[16]_inst 
       (.I(taps_OBUF[16]),
        .O(taps[16]));
  OBUF \taps_OBUF[17]_inst 
       (.I(taps_OBUF[17]),
        .O(taps[17]));
  OBUF \taps_OBUF[18]_inst 
       (.I(taps_OBUF[18]),
        .O(taps[18]));
  OBUF \taps_OBUF[19]_inst 
       (.I(taps_OBUF[19]),
        .O(taps[19]));
  OBUF \taps_OBUF[1]_inst 
       (.I(taps_OBUF[1]),
        .O(taps[1]));
  OBUF \taps_OBUF[20]_inst 
       (.I(taps_OBUF[20]),
        .O(taps[20]));
  OBUF \taps_OBUF[21]_inst 
       (.I(taps_OBUF[21]),
        .O(taps[21]));
  OBUF \taps_OBUF[22]_inst 
       (.I(taps_OBUF[22]),
        .O(taps[22]));
  OBUF \taps_OBUF[23]_inst 
       (.I(taps_OBUF[23]),
        .O(taps[23]));
  OBUF \taps_OBUF[24]_inst 
       (.I(taps_OBUF[24]),
        .O(taps[24]));
  OBUF \taps_OBUF[25]_inst 
       (.I(taps_OBUF[25]),
        .O(taps[25]));
  OBUF \taps_OBUF[26]_inst 
       (.I(taps_OBUF[26]),
        .O(taps[26]));
  OBUF \taps_OBUF[27]_inst 
       (.I(taps_OBUF[27]),
        .O(taps[27]));
  OBUF \taps_OBUF[28]_inst 
       (.I(taps_OBUF[28]),
        .O(taps[28]));
  OBUF \taps_OBUF[29]_inst 
       (.I(taps_OBUF[29]),
        .O(taps[29]));
  OBUF \taps_OBUF[2]_inst 
       (.I(taps_OBUF[2]),
        .O(taps[2]));
  OBUF \taps_OBUF[30]_inst 
       (.I(taps_OBUF[30]),
        .O(taps[30]));
  OBUF \taps_OBUF[31]_inst 
       (.I(taps_OBUF[31]),
        .O(taps[31]));
  OBUF \taps_OBUF[32]_inst 
       (.I(taps_OBUF[32]),
        .O(taps[32]));
  OBUF \taps_OBUF[33]_inst 
       (.I(taps_OBUF[33]),
        .O(taps[33]));
  OBUF \taps_OBUF[34]_inst 
       (.I(taps_OBUF[34]),
        .O(taps[34]));
  OBUF \taps_OBUF[35]_inst 
       (.I(taps_OBUF[35]),
        .O(taps[35]));
  OBUF \taps_OBUF[36]_inst 
       (.I(taps_OBUF[36]),
        .O(taps[36]));
  OBUF \taps_OBUF[37]_inst 
       (.I(taps_OBUF[37]),
        .O(taps[37]));
  OBUF \taps_OBUF[38]_inst 
       (.I(taps_OBUF[38]),
        .O(taps[38]));
  OBUF \taps_OBUF[39]_inst 
       (.I(taps_OBUF[39]),
        .O(taps[39]));
  OBUF \taps_OBUF[3]_inst 
       (.I(taps_OBUF[3]),
        .O(taps[3]));
  OBUF \taps_OBUF[40]_inst 
       (.I(taps_OBUF[40]),
        .O(taps[40]));
  OBUF \taps_OBUF[41]_inst 
       (.I(taps_OBUF[41]),
        .O(taps[41]));
  OBUF \taps_OBUF[42]_inst 
       (.I(taps_OBUF[42]),
        .O(taps[42]));
  OBUF \taps_OBUF[43]_inst 
       (.I(taps_OBUF[43]),
        .O(taps[43]));
  OBUF \taps_OBUF[44]_inst 
       (.I(taps_OBUF[44]),
        .O(taps[44]));
  OBUF \taps_OBUF[45]_inst 
       (.I(taps_OBUF[45]),
        .O(taps[45]));
  OBUF \taps_OBUF[46]_inst 
       (.I(taps_OBUF[46]),
        .O(taps[46]));
  OBUF \taps_OBUF[47]_inst 
       (.I(taps_OBUF[47]),
        .O(taps[47]));
  OBUF \taps_OBUF[48]_inst 
       (.I(taps_OBUF[48]),
        .O(taps[48]));
  OBUF \taps_OBUF[49]_inst 
       (.I(taps_OBUF[49]),
        .O(taps[49]));
  OBUF \taps_OBUF[4]_inst 
       (.I(taps_OBUF[4]),
        .O(taps[4]));
  OBUF \taps_OBUF[50]_inst 
       (.I(taps_OBUF[50]),
        .O(taps[50]));
  OBUF \taps_OBUF[51]_inst 
       (.I(taps_OBUF[51]),
        .O(taps[51]));
  OBUF \taps_OBUF[52]_inst 
       (.I(taps_OBUF[52]),
        .O(taps[52]));
  OBUF \taps_OBUF[53]_inst 
       (.I(taps_OBUF[53]),
        .O(taps[53]));
  OBUF \taps_OBUF[54]_inst 
       (.I(taps_OBUF[54]),
        .O(taps[54]));
  OBUF \taps_OBUF[55]_inst 
       (.I(taps_OBUF[55]),
        .O(taps[55]));
  OBUF \taps_OBUF[56]_inst 
       (.I(taps_OBUF[56]),
        .O(taps[56]));
  OBUF \taps_OBUF[57]_inst 
       (.I(taps_OBUF[57]),
        .O(taps[57]));
  OBUF \taps_OBUF[58]_inst 
       (.I(taps_OBUF[58]),
        .O(taps[58]));
  OBUF \taps_OBUF[59]_inst 
       (.I(taps_OBUF[59]),
        .O(taps[59]));
  OBUF \taps_OBUF[5]_inst 
       (.I(taps_OBUF[5]),
        .O(taps[5]));
  OBUF \taps_OBUF[60]_inst 
       (.I(taps_OBUF[60]),
        .O(taps[60]));
  OBUF \taps_OBUF[61]_inst 
       (.I(taps_OBUF[61]),
        .O(taps[61]));
  OBUF \taps_OBUF[62]_inst 
       (.I(taps_OBUF[62]),
        .O(taps[62]));
  OBUF \taps_OBUF[63]_inst 
       (.I(taps_OBUF[63]),
        .O(taps[63]));
  OBUF \taps_OBUF[64]_inst 
       (.I(taps_OBUF[64]),
        .O(taps[64]));
  OBUF \taps_OBUF[65]_inst 
       (.I(taps_OBUF[65]),
        .O(taps[65]));
  OBUF \taps_OBUF[66]_inst 
       (.I(taps_OBUF[66]),
        .O(taps[66]));
  OBUF \taps_OBUF[67]_inst 
       (.I(taps_OBUF[67]),
        .O(taps[67]));
  OBUF \taps_OBUF[68]_inst 
       (.I(taps_OBUF[68]),
        .O(taps[68]));
  OBUF \taps_OBUF[69]_inst 
       (.I(taps_OBUF[69]),
        .O(taps[69]));
  OBUF \taps_OBUF[6]_inst 
       (.I(taps_OBUF[6]),
        .O(taps[6]));
  OBUF \taps_OBUF[70]_inst 
       (.I(taps_OBUF[70]),
        .O(taps[70]));
  OBUF \taps_OBUF[71]_inst 
       (.I(taps_OBUF[71]),
        .O(taps[71]));
  OBUF \taps_OBUF[72]_inst 
       (.I(taps_OBUF[72]),
        .O(taps[72]));
  OBUF \taps_OBUF[73]_inst 
       (.I(taps_OBUF[73]),
        .O(taps[73]));
  OBUF \taps_OBUF[74]_inst 
       (.I(taps_OBUF[74]),
        .O(taps[74]));
  OBUF \taps_OBUF[75]_inst 
       (.I(taps_OBUF[75]),
        .O(taps[75]));
  OBUF \taps_OBUF[76]_inst 
       (.I(taps_OBUF[76]),
        .O(taps[76]));
  OBUF \taps_OBUF[77]_inst 
       (.I(taps_OBUF[77]),
        .O(taps[77]));
  OBUF \taps_OBUF[78]_inst 
       (.I(taps_OBUF[78]),
        .O(taps[78]));
  OBUF \taps_OBUF[79]_inst 
       (.I(taps_OBUF[79]),
        .O(taps[79]));
  OBUF \taps_OBUF[7]_inst 
       (.I(taps_OBUF[7]),
        .O(taps[7]));
  OBUF \taps_OBUF[80]_inst 
       (.I(taps_OBUF[80]),
        .O(taps[80]));
  OBUF \taps_OBUF[81]_inst 
       (.I(taps_OBUF[81]),
        .O(taps[81]));
  OBUF \taps_OBUF[82]_inst 
       (.I(taps_OBUF[82]),
        .O(taps[82]));
  OBUF \taps_OBUF[83]_inst 
       (.I(taps_OBUF[83]),
        .O(taps[83]));
  OBUF \taps_OBUF[84]_inst 
       (.I(taps_OBUF[84]),
        .O(taps[84]));
  OBUF \taps_OBUF[85]_inst 
       (.I(taps_OBUF[85]),
        .O(taps[85]));
  OBUF \taps_OBUF[86]_inst 
       (.I(taps_OBUF[86]),
        .O(taps[86]));
  OBUF \taps_OBUF[87]_inst 
       (.I(taps_OBUF[87]),
        .O(taps[87]));
  OBUF \taps_OBUF[88]_inst 
       (.I(taps_OBUF[88]),
        .O(taps[88]));
  OBUF \taps_OBUF[89]_inst 
       (.I(taps_OBUF[89]),
        .O(taps[89]));
  OBUF \taps_OBUF[8]_inst 
       (.I(taps_OBUF[8]),
        .O(taps[8]));
  OBUF \taps_OBUF[90]_inst 
       (.I(taps_OBUF[90]),
        .O(taps[90]));
  OBUF \taps_OBUF[91]_inst 
       (.I(taps_OBUF[91]),
        .O(taps[91]));
  OBUF \taps_OBUF[92]_inst 
       (.I(taps_OBUF[92]),
        .O(taps[92]));
  OBUF \taps_OBUF[93]_inst 
       (.I(taps_OBUF[93]),
        .O(taps[93]));
  OBUF \taps_OBUF[94]_inst 
       (.I(taps_OBUF[94]),
        .O(taps[94]));
  OBUF \taps_OBUF[95]_inst 
       (.I(taps_OBUF[95]),
        .O(taps[95]));
  OBUF \taps_OBUF[96]_inst 
       (.I(taps_OBUF[96]),
        .O(taps[96]));
  OBUF \taps_OBUF[97]_inst 
       (.I(taps_OBUF[97]),
        .O(taps[97]));
  OBUF \taps_OBUF[98]_inst 
       (.I(taps_OBUF[98]),
        .O(taps[98]));
  OBUF \taps_OBUF[99]_inst 
       (.I(taps_OBUF[99]),
        .O(taps[99]));
  OBUF \taps_OBUF[9]_inst 
       (.I(taps_OBUF[9]),
        .O(taps[9]));
  Coarse u_Coarse
       (.E(Fall),
        .iClk_IBUF_BUFG(iClk_IBUF_BUFG),
        .iHit(iHit_IBUF),
        .out(CoarseStamp));
  Edge u_EdgeDetector
       (.E(Fall),
        .iClk_IBUF_BUFG(iClk_IBUF_BUFG),
        .iHit(iHit_IBUF),
        .iStartEnable(Rise));
  (* KEEP_HIERARCHY = "true" *) 
  (* NUM = "120" *) 
  Fine u_FineDelay
       (.clk(iClk_IBUF_BUFG),
        .iHit(iHit_IBUF),
        .iRst(1'b0),
        .iStartEnable(Rise),
        .iStopEnable(Fall),
        .oFFStart(FFStart_OBUF),
        .oFFStop(FFStop_OBUF),
        .outFF(NLW_u_FineDelay_outFF_UNCONNECTED[119:0]),
        .outTaps(taps_OBUF));
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
