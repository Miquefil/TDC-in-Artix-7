-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sat May  4 21:16:14 2024
-- Host        : MikeHP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top block_clock_clk_wiz_0_0 -prefix
--               block_clock_clk_wiz_0_0_ block_clock_clk_wiz_0_0_stub.vhdl
-- Design      : block_clock_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity block_clock_clk_wiz_0_0 is
  Port ( 
    clk_out : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end block_clock_clk_wiz_0_0;

architecture stub of block_clock_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out,clk_out2,clk_in1_p,clk_in1_n";
begin
end;
