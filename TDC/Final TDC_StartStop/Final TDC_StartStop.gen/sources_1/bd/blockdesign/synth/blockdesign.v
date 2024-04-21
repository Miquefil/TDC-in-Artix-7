//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sun Apr 21 19:02:13 2024
//Host        : MikeHP running 64-bit major release  (build 9200)
//Command     : generate_target blockdesign.bd
//Design      : blockdesign
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "blockdesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=blockdesign,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "blockdesign.hwdef" *) 
module blockdesign
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
    SPI_0_0_io0_i,
    SPI_0_0_io0_o,
    SPI_0_0_io0_t,
    SPI_0_0_io1_i,
    SPI_0_0_io1_o,
    SPI_0_0_io1_t,
    SPI_0_0_io2_i,
    SPI_0_0_io2_o,
    SPI_0_0_io2_t,
    SPI_0_0_io3_i,
    SPI_0_0_io3_o,
    SPI_0_0_io3_t,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_0, ADDR_WIDTH 7, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN blockdesign_s_axi_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]AXI_LITE_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 ARREADY" *) output AXI_LITE_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 ARVALID" *) input AXI_LITE_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 AWADDR" *) input [6:0]AXI_LITE_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 AWREADY" *) output AXI_LITE_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 AWVALID" *) input AXI_LITE_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 BREADY" *) input AXI_LITE_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 BRESP" *) output [1:0]AXI_LITE_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 BVALID" *) output AXI_LITE_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 RDATA" *) output [31:0]AXI_LITE_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 RREADY" *) input AXI_LITE_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 RRESP" *) output [1:0]AXI_LITE_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 RVALID" *) output AXI_LITE_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 WDATA" *) input [31:0]AXI_LITE_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 WREADY" *) output AXI_LITE_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 WSTRB" *) input [3:0]AXI_LITE_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_0 WVALID" *) input AXI_LITE_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_I" *) input SPI_0_0_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_O" *) output SPI_0_0_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO0_T" *) output SPI_0_0_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_I" *) input SPI_0_0_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_O" *) output SPI_0_0_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO1_T" *) output SPI_0_0_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO2_I" *) input SPI_0_0_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO2_O" *) output SPI_0_0_io2_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO2_T" *) output SPI_0_0_io2_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO3_I" *) input SPI_0_0_io3_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO3_O" *) output SPI_0_0_io3_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 IO3_T" *) output SPI_0_0_io3_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_I" *) input SPI_0_0_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_O" *) output SPI_0_0_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_0_0 SS_T" *) output SPI_0_0_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 cfgclk" *) output STARTUP_IO_0_cfgclk;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 cfgmclk" *) output STARTUP_IO_0_cfgmclk;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 eos" *) output STARTUP_IO_0_eos;
  (* X_INTERFACE_INFO = "xilinx.com:display_startup_io:startup_io:1.0 STARTUP_IO_0 preq" *) output STARTUP_IO_0_preq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.EXT_SPI_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.EXT_SPI_CLK_0, CLK_DOMAIN blockdesign_ext_spi_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ext_spi_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IP2INTC_IRPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IP2INTC_IRPT_0, PortWidth 1, SENSITIVITY EDGE_RISING" *) output ip2intc_irpt_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK_0, ASSOCIATED_BUSIF AXI_LITE_0, ASSOCIATED_RESET s_axi_aresetn_0, CLK_DOMAIN blockdesign_s_axi_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input s_axi_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input s_axi_aresetn_0;

  wire [6:0]AXI_LITE_0_1_ARADDR;
  wire AXI_LITE_0_1_ARREADY;
  wire AXI_LITE_0_1_ARVALID;
  wire [6:0]AXI_LITE_0_1_AWADDR;
  wire AXI_LITE_0_1_AWREADY;
  wire AXI_LITE_0_1_AWVALID;
  wire AXI_LITE_0_1_BREADY;
  wire [1:0]AXI_LITE_0_1_BRESP;
  wire AXI_LITE_0_1_BVALID;
  wire [31:0]AXI_LITE_0_1_RDATA;
  wire AXI_LITE_0_1_RREADY;
  wire [1:0]AXI_LITE_0_1_RRESP;
  wire AXI_LITE_0_1_RVALID;
  wire [31:0]AXI_LITE_0_1_WDATA;
  wire AXI_LITE_0_1_WREADY;
  wire [3:0]AXI_LITE_0_1_WSTRB;
  wire AXI_LITE_0_1_WVALID;
  wire axi_quad_spi_0_SPI_0_IO0_I;
  wire axi_quad_spi_0_SPI_0_IO0_O;
  wire axi_quad_spi_0_SPI_0_IO0_T;
  wire axi_quad_spi_0_SPI_0_IO1_I;
  wire axi_quad_spi_0_SPI_0_IO1_O;
  wire axi_quad_spi_0_SPI_0_IO1_T;
  wire axi_quad_spi_0_SPI_0_IO2_I;
  wire axi_quad_spi_0_SPI_0_IO2_O;
  wire axi_quad_spi_0_SPI_0_IO2_T;
  wire axi_quad_spi_0_SPI_0_IO3_I;
  wire axi_quad_spi_0_SPI_0_IO3_O;
  wire axi_quad_spi_0_SPI_0_IO3_T;
  wire axi_quad_spi_0_SPI_0_SS_I;
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

  assign AXI_LITE_0_1_ARADDR = AXI_LITE_0_araddr[6:0];
  assign AXI_LITE_0_1_ARVALID = AXI_LITE_0_arvalid;
  assign AXI_LITE_0_1_AWADDR = AXI_LITE_0_awaddr[6:0];
  assign AXI_LITE_0_1_AWVALID = AXI_LITE_0_awvalid;
  assign AXI_LITE_0_1_BREADY = AXI_LITE_0_bready;
  assign AXI_LITE_0_1_RREADY = AXI_LITE_0_rready;
  assign AXI_LITE_0_1_WDATA = AXI_LITE_0_wdata[31:0];
  assign AXI_LITE_0_1_WSTRB = AXI_LITE_0_wstrb[3:0];
  assign AXI_LITE_0_1_WVALID = AXI_LITE_0_wvalid;
  assign AXI_LITE_0_arready = AXI_LITE_0_1_ARREADY;
  assign AXI_LITE_0_awready = AXI_LITE_0_1_AWREADY;
  assign AXI_LITE_0_bresp[1:0] = AXI_LITE_0_1_BRESP;
  assign AXI_LITE_0_bvalid = AXI_LITE_0_1_BVALID;
  assign AXI_LITE_0_rdata[31:0] = AXI_LITE_0_1_RDATA;
  assign AXI_LITE_0_rresp[1:0] = AXI_LITE_0_1_RRESP;
  assign AXI_LITE_0_rvalid = AXI_LITE_0_1_RVALID;
  assign AXI_LITE_0_wready = AXI_LITE_0_1_WREADY;
  assign SPI_0_0_io0_o = axi_quad_spi_0_SPI_0_IO0_O;
  assign SPI_0_0_io0_t = axi_quad_spi_0_SPI_0_IO0_T;
  assign SPI_0_0_io1_o = axi_quad_spi_0_SPI_0_IO1_O;
  assign SPI_0_0_io1_t = axi_quad_spi_0_SPI_0_IO1_T;
  assign SPI_0_0_io2_o = axi_quad_spi_0_SPI_0_IO2_O;
  assign SPI_0_0_io2_t = axi_quad_spi_0_SPI_0_IO2_T;
  assign SPI_0_0_io3_o = axi_quad_spi_0_SPI_0_IO3_O;
  assign SPI_0_0_io3_t = axi_quad_spi_0_SPI_0_IO3_T;
  assign SPI_0_0_ss_o = axi_quad_spi_0_SPI_0_SS_O;
  assign SPI_0_0_ss_t = axi_quad_spi_0_SPI_0_SS_T;
  assign STARTUP_IO_0_cfgclk = axi_quad_spi_0_STARTUP_IO_cfgclk;
  assign STARTUP_IO_0_cfgmclk = axi_quad_spi_0_STARTUP_IO_cfgmclk;
  assign STARTUP_IO_0_eos = axi_quad_spi_0_STARTUP_IO_eos;
  assign STARTUP_IO_0_preq = axi_quad_spi_0_STARTUP_IO_preq;
  assign axi_quad_spi_0_SPI_0_IO0_I = SPI_0_0_io0_i;
  assign axi_quad_spi_0_SPI_0_IO1_I = SPI_0_0_io1_i;
  assign axi_quad_spi_0_SPI_0_IO2_I = SPI_0_0_io2_i;
  assign axi_quad_spi_0_SPI_0_IO3_I = SPI_0_0_io3_i;
  assign axi_quad_spi_0_SPI_0_SS_I = SPI_0_0_ss_i;
  assign ext_spi_clk_0_1 = ext_spi_clk_0;
  assign ip2intc_irpt_0 = axi_quad_spi_0_ip2intc_irpt;
  assign s_axi_aclk_0_1 = s_axi_aclk_0;
  assign s_axi_aresetn_0_1 = s_axi_aresetn_0;
  blockdesign_axi_quad_spi_0_0 axi_quad_spi_0
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
        .io2_i(axi_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .preq(axi_quad_spi_0_STARTUP_IO_preq),
        .s_axi_aclk(s_axi_aclk_0_1),
        .s_axi_araddr(AXI_LITE_0_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_0_1),
        .s_axi_arready(AXI_LITE_0_1_ARREADY),
        .s_axi_arvalid(AXI_LITE_0_1_ARVALID),
        .s_axi_awaddr(AXI_LITE_0_1_AWADDR),
        .s_axi_awready(AXI_LITE_0_1_AWREADY),
        .s_axi_awvalid(AXI_LITE_0_1_AWVALID),
        .s_axi_bready(AXI_LITE_0_1_BREADY),
        .s_axi_bresp(AXI_LITE_0_1_BRESP),
        .s_axi_bvalid(AXI_LITE_0_1_BVALID),
        .s_axi_rdata(AXI_LITE_0_1_RDATA),
        .s_axi_rready(AXI_LITE_0_1_RREADY),
        .s_axi_rresp(AXI_LITE_0_1_RRESP),
        .s_axi_rvalid(AXI_LITE_0_1_RVALID),
        .s_axi_wdata(AXI_LITE_0_1_WDATA),
        .s_axi_wready(AXI_LITE_0_1_WREADY),
        .s_axi_wstrb(AXI_LITE_0_1_WSTRB),
        .s_axi_wvalid(AXI_LITE_0_1_WVALID),
        .ss_i(axi_quad_spi_0_SPI_0_SS_I),
        .ss_o(axi_quad_spi_0_SPI_0_SS_O),
        .ss_t(axi_quad_spi_0_SPI_0_SS_T));
endmodule
