//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu May 16 17:24:48 2024
//Host        : MikeHP running 64-bit major release  (build 9200)
//Command     : generate_target block_clock_wrapper.bd
//Design      : block_clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module block_clock_wrapper
   (CLK_IN1_D_0_clk_n,
    CLK_IN1_D_0_clk_p,
    clk_out2_0,
    clk_out3_0,
    clk_out4_0,
    clk_out_0,
    locked_0,
    reset_0);
  input CLK_IN1_D_0_clk_n;
  input CLK_IN1_D_0_clk_p;
  output clk_out2_0;
  output clk_out3_0;
  output clk_out4_0;
  output clk_out_0;
  output locked_0;
  input reset_0;

  wire CLK_IN1_D_0_clk_n;
  wire CLK_IN1_D_0_clk_p;
  wire clk_out2_0;
  wire clk_out3_0;
  wire clk_out4_0;
  wire clk_out_0;
  wire locked_0;
  wire reset_0;

  block_clock block_clock_i
       (.CLK_IN1_D_0_clk_n(CLK_IN1_D_0_clk_n),
        .CLK_IN1_D_0_clk_p(CLK_IN1_D_0_clk_p),
        .clk_out2_0(clk_out2_0),
        .clk_out3_0(clk_out3_0),
        .clk_out4_0(clk_out4_0),
        .clk_out_0(clk_out_0),
        .locked_0(locked_0),
        .reset_0(reset_0));
endmodule
