//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Apr 21 19:02:13 2024
//Host        : MikeHP running 64-bit major release  (build 9200)
//Command     : generate_target blockdesign_wrapper.bd
//Design      : blockdesign_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module blockdesign_wrapper
   (AXI_LITE_0_araddr,
    AXI_LITE_0_arready,
    AXI_LITE_0_arvalid,
    AXI_LITE_0_awaddr,
    AXI_LITE_0_awready,
    AXI_LITE_0_awvalid,
    AXI_LITE_0_bready,
    AXI_LITE_0_bresp,
    AXI_LITE_0_bvalid,
    AXI_LITE_0_rdata,
    AXI_LITE_0_rready,
    AXI_LITE_0_rresp,
    AXI_LITE_0_rvalid,
    AXI_LITE_0_wdata,
    AXI_LITE_0_wready,
    AXI_LITE_0_wstrb,
    AXI_LITE_0_wvalid,
    SPI_0_0_io0_io,
    SPI_0_0_io1_io,
    SPI_0_0_io2_io,
    SPI_0_0_io3_io,
    SPI_0_0_ss_io,
    STARTUP_IO_0_cfgclk,
    STARTUP_IO_0_cfgmclk,
    STARTUP_IO_0_eos,
    STARTUP_IO_0_preq,
    ext_spi_clk_0,
    ip2intc_irpt_0,
    s_axi_aclk_0,
    s_axi_aresetn_0);
  input [6:0]AXI_LITE_0_araddr;
  output AXI_LITE_0_arready;
  input AXI_LITE_0_arvalid;
  input [6:0]AXI_LITE_0_awaddr;
  output AXI_LITE_0_awready;
  input AXI_LITE_0_awvalid;
  input AXI_LITE_0_bready;
  output [1:0]AXI_LITE_0_bresp;
  output AXI_LITE_0_bvalid;
  output [31:0]AXI_LITE_0_rdata;
  input AXI_LITE_0_rready;
  output [1:0]AXI_LITE_0_rresp;
  output AXI_LITE_0_rvalid;
  input [31:0]AXI_LITE_0_wdata;
  output AXI_LITE_0_wready;
  input [3:0]AXI_LITE_0_wstrb;
  input AXI_LITE_0_wvalid;
  inout SPI_0_0_io0_io;
  inout SPI_0_0_io1_io;
  inout SPI_0_0_io2_io;
  inout SPI_0_0_io3_io;
  inout SPI_0_0_ss_io;
  output STARTUP_IO_0_cfgclk;
  output STARTUP_IO_0_cfgmclk;
  output STARTUP_IO_0_eos;
  output STARTUP_IO_0_preq;
  input ext_spi_clk_0;
  output ip2intc_irpt_0;
  input s_axi_aclk_0;
  input s_axi_aresetn_0;

  wire [6:0]AXI_LITE_0_araddr;
  wire AXI_LITE_0_arready;
  wire AXI_LITE_0_arvalid;
  wire [6:0]AXI_LITE_0_awaddr;
  wire AXI_LITE_0_awready;
  wire AXI_LITE_0_awvalid;
  wire AXI_LITE_0_bready;
  wire [1:0]AXI_LITE_0_bresp;
  wire AXI_LITE_0_bvalid;
  wire [31:0]AXI_LITE_0_rdata;
  wire AXI_LITE_0_rready;
  wire [1:0]AXI_LITE_0_rresp;
  wire AXI_LITE_0_rvalid;
  wire [31:0]AXI_LITE_0_wdata;
  wire AXI_LITE_0_wready;
  wire [3:0]AXI_LITE_0_wstrb;
  wire AXI_LITE_0_wvalid;
  wire SPI_0_0_io0_i;
  wire SPI_0_0_io0_io;
  wire SPI_0_0_io0_o;
  wire SPI_0_0_io0_t;
  wire SPI_0_0_io1_i;
  wire SPI_0_0_io1_io;
  wire SPI_0_0_io1_o;
  wire SPI_0_0_io1_t;
  wire SPI_0_0_io2_i;
  wire SPI_0_0_io2_io;
  wire SPI_0_0_io2_o;
  wire SPI_0_0_io2_t;
  wire SPI_0_0_io3_i;
  wire SPI_0_0_io3_io;
  wire SPI_0_0_io3_o;
  wire SPI_0_0_io3_t;
  wire SPI_0_0_ss_i;
  wire SPI_0_0_ss_io;
  wire SPI_0_0_ss_o;
  wire SPI_0_0_ss_t;
  wire STARTUP_IO_0_cfgclk;
  wire STARTUP_IO_0_cfgmclk;
  wire STARTUP_IO_0_eos;
  wire STARTUP_IO_0_preq;
  wire ext_spi_clk_0;
  wire ip2intc_irpt_0;
  wire s_axi_aclk_0;
  wire s_axi_aresetn_0;

  IOBUF SPI_0_0_io0_iobuf
       (.I(SPI_0_0_io0_o),
        .IO(SPI_0_0_io0_io),
        .O(SPI_0_0_io0_i),
        .T(SPI_0_0_io0_t));
  IOBUF SPI_0_0_io1_iobuf
       (.I(SPI_0_0_io1_o),
        .IO(SPI_0_0_io1_io),
        .O(SPI_0_0_io1_i),
        .T(SPI_0_0_io1_t));
  IOBUF SPI_0_0_io2_iobuf
       (.I(SPI_0_0_io2_o),
        .IO(SPI_0_0_io2_io),
        .O(SPI_0_0_io2_i),
        .T(SPI_0_0_io2_t));
  IOBUF SPI_0_0_io3_iobuf
       (.I(SPI_0_0_io3_o),
        .IO(SPI_0_0_io3_io),
        .O(SPI_0_0_io3_i),
        .T(SPI_0_0_io3_t));
  IOBUF SPI_0_0_ss_iobuf
       (.I(SPI_0_0_ss_o),
        .IO(SPI_0_0_ss_io),
        .O(SPI_0_0_ss_i),
        .T(SPI_0_0_ss_t));
  blockdesign blockdesign_i
       (.AXI_LITE_0_araddr(AXI_LITE_0_araddr),
        .AXI_LITE_0_arready(AXI_LITE_0_arready),
        .AXI_LITE_0_arvalid(AXI_LITE_0_arvalid),
        .AXI_LITE_0_awaddr(AXI_LITE_0_awaddr),
        .AXI_LITE_0_awready(AXI_LITE_0_awready),
        .AXI_LITE_0_awvalid(AXI_LITE_0_awvalid),
        .AXI_LITE_0_bready(AXI_LITE_0_bready),
        .AXI_LITE_0_bresp(AXI_LITE_0_bresp),
        .AXI_LITE_0_bvalid(AXI_LITE_0_bvalid),
        .AXI_LITE_0_rdata(AXI_LITE_0_rdata),
        .AXI_LITE_0_rready(AXI_LITE_0_rready),
        .AXI_LITE_0_rresp(AXI_LITE_0_rresp),
        .AXI_LITE_0_rvalid(AXI_LITE_0_rvalid),
        .AXI_LITE_0_wdata(AXI_LITE_0_wdata),
        .AXI_LITE_0_wready(AXI_LITE_0_wready),
        .AXI_LITE_0_wstrb(AXI_LITE_0_wstrb),
        .AXI_LITE_0_wvalid(AXI_LITE_0_wvalid),
        .SPI_0_0_io0_i(SPI_0_0_io0_i),
        .SPI_0_0_io0_o(SPI_0_0_io0_o),
        .SPI_0_0_io0_t(SPI_0_0_io0_t),
        .SPI_0_0_io1_i(SPI_0_0_io1_i),
        .SPI_0_0_io1_o(SPI_0_0_io1_o),
        .SPI_0_0_io1_t(SPI_0_0_io1_t),
        .SPI_0_0_io2_i(SPI_0_0_io2_i),
        .SPI_0_0_io2_o(SPI_0_0_io2_o),
        .SPI_0_0_io2_t(SPI_0_0_io2_t),
        .SPI_0_0_io3_i(SPI_0_0_io3_i),
        .SPI_0_0_io3_o(SPI_0_0_io3_o),
        .SPI_0_0_io3_t(SPI_0_0_io3_t),
        .SPI_0_0_ss_i(SPI_0_0_ss_i),
        .SPI_0_0_ss_o(SPI_0_0_ss_o),
        .SPI_0_0_ss_t(SPI_0_0_ss_t),
        .STARTUP_IO_0_cfgclk(STARTUP_IO_0_cfgclk),
        .STARTUP_IO_0_cfgmclk(STARTUP_IO_0_cfgmclk),
        .STARTUP_IO_0_eos(STARTUP_IO_0_eos),
        .STARTUP_IO_0_preq(STARTUP_IO_0_preq),
        .ext_spi_clk_0(ext_spi_clk_0),
        .ip2intc_irpt_0(ip2intc_irpt_0),
        .s_axi_aclk_0(s_axi_aclk_0),
        .s_axi_aresetn_0(s_axi_aresetn_0));
endmodule
