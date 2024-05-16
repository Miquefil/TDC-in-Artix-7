//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Apr 21 20:13:22 2024
//Host        : MikeHP running 64-bit major release  (build 9200)
//Command     : generate_target block_spi.bd
//Design      : block_spi
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "block_spi,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=block_spi,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "block_spi.hwdef" *) 
module block_spi
   (SPI_0_0_io0_i,
    SPI_0_0_io0_o,
    SPI_0_0_io0_t,
    SPI_0_0_io1_i,
    SPI_0_0_io1_o,
    SPI_0_0_io1_t,
    SPI_0_0_ss_i,
    SPI_0_0_ss_o,
    SPI_0_0_ss_t,
    STARTUP_IO_0_cfgclk,
    STARTUP_IO_0_cfgmclk,
    STARTUP_IO_0_eos,
    STARTUP_IO_0_preq,
    ext_spi_clk_0,
    ip2intc_irpt_0,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I" *) input SPI_0_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O" *) output SPI_0_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T" *) output SPI_0_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I" *) input SPI_0_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O" *) output SPI_0_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T" *) output SPI_0_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I" *) input [0:0]SPI_0_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O" *) output [0:0]SPI_0_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T" *) output SPI_0_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 cfgclk" *) output STARTUP_IO_0_cfgclk;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 cfgmclk" *) output STARTUP_IO_0_cfgmclk;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 eos" *) output STARTUP_IO_0_eos;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 preq" *) output STARTUP_IO_0_preq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.EXT_SPI_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.EXT_SPI_CLK_0, CLK_DOMAIN block_spi_ext_spi_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ext_spi_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output ip2intc_irpt_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN block_spi_s_axi_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_I;
  wire [0:0]axi_quad_spi_0_SPI_0_SS_O;
  wire axi_quad_spi_0_SPI_0_SS_T;
  wire axi_quad_spi_0_STARTUP_IO_cfgclk;
  wire axi_quad_spi_0_STARTUP_IO_cfgmclk;
  wire axi_quad_spi_0_STARTUP_IO_eos;
  wire axi_quad_spi_0_STARTUP_IO_preq;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire ext_spi_clk_0_1;
  wire s_axi_aclk_0_1;
  wire s_axi_aresetn_0_1;

  assign SPI_0_0_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign SPI_0_0_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign SPI_0_0_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign SPI_0_0_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign SPI_0_0_ss_o[0] = axi_quad_spi_0_SPI_0_SS_O;
  assign SPI_0_0_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign STARTUP_IO_0_cfgclk = axi_quad_spi_0_STARTUP_IO_cfgclk;
  assign STARTUP_IO_0_cfgmclk = axi_quad_spi_0_STARTUP_IO_cfgmclk;
  assign STARTUP_IO_0_eos = axi_quad_spi_0_STARTUP_IO_eos;
  assign STARTUP_IO_0_preq = axi_quad_spi_0_STARTUP_IO_preq;
  assign axi_quad_spi_0_SPI_0_IO0_I = SPI_0_0_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = SPI_0_0_io1_i;
  assign axi_quad_spi_0_SPI_0_SS_I = SPI_0_0_ss_i[0];
  assign ext_spi_clk_0_1 = ext_spi_clk_0;
  assign ip2intc_irpt_0 = axi_quad_spi_0_ip2intc_irpt;
  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  block_spi_axi_quad_spi_0_0 axi_quad_spi_0
       (.cfgclk(axi_quad_spi_0_STARTUP_IO_cfgclk),
        .cfgmclk(axi_quad_spi_0_STARTUP_IO_cfgmclk),
        .eos(axi_quad_spi_0_STARTUP_IO_eos),
        .ext_spi_clk(ext_spi_clk_0_1),
        .io0_i(axi_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_0_SPI_0_IO1_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .preq(axi_quad_spi_0_STARTUP_IO_preq),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(1'b0),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
endmodule
