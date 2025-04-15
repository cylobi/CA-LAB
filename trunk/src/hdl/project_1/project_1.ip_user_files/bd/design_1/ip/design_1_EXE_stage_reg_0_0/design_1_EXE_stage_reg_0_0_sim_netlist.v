// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  8 15:00:12 2025
// Host        : parsa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_EXE_stage_reg_0_0/design_1_EXE_stage_reg_0_0_sim_netlist.v
// Design      : design_1_EXE_stage_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_EXE_stage_reg_0_0,EXE_stage_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "EXE_stage_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_EXE_stage_reg_0_0
   (clk,
    rst,
    freeze,
    EXE_in1,
    EXE_in2,
    EXE_out1,
    EXE_out2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input freeze;
  input [32:0]EXE_in1;
  input [32:0]EXE_in2;
  output [31:0]EXE_out1;
  output [31:0]EXE_out2;

  wire \<const0> ;
  wire [32:0]EXE_in1;
  wire [32:0]EXE_in2;
  wire [0:0]\^EXE_out1 ;
  wire [0:0]\^EXE_out2 ;
  wire clk;
  wire freeze;
  wire rst;

  assign EXE_out1[31] = \<const0> ;
  assign EXE_out1[30] = \<const0> ;
  assign EXE_out1[29] = \<const0> ;
  assign EXE_out1[28] = \<const0> ;
  assign EXE_out1[27] = \<const0> ;
  assign EXE_out1[26] = \<const0> ;
  assign EXE_out1[25] = \<const0> ;
  assign EXE_out1[24] = \<const0> ;
  assign EXE_out1[23] = \<const0> ;
  assign EXE_out1[22] = \<const0> ;
  assign EXE_out1[21] = \<const0> ;
  assign EXE_out1[20] = \<const0> ;
  assign EXE_out1[19] = \<const0> ;
  assign EXE_out1[18] = \<const0> ;
  assign EXE_out1[17] = \<const0> ;
  assign EXE_out1[16] = \<const0> ;
  assign EXE_out1[15] = \<const0> ;
  assign EXE_out1[14] = \<const0> ;
  assign EXE_out1[13] = \<const0> ;
  assign EXE_out1[12] = \<const0> ;
  assign EXE_out1[11] = \<const0> ;
  assign EXE_out1[10] = \<const0> ;
  assign EXE_out1[9] = \<const0> ;
  assign EXE_out1[8] = \<const0> ;
  assign EXE_out1[7] = \<const0> ;
  assign EXE_out1[6] = \<const0> ;
  assign EXE_out1[5] = \<const0> ;
  assign EXE_out1[4] = \<const0> ;
  assign EXE_out1[3] = \<const0> ;
  assign EXE_out1[2] = \<const0> ;
  assign EXE_out1[1] = \<const0> ;
  assign EXE_out1[0] = \^EXE_out1 [0];
  assign EXE_out2[31] = \<const0> ;
  assign EXE_out2[30] = \<const0> ;
  assign EXE_out2[29] = \<const0> ;
  assign EXE_out2[28] = \<const0> ;
  assign EXE_out2[27] = \<const0> ;
  assign EXE_out2[26] = \<const0> ;
  assign EXE_out2[25] = \<const0> ;
  assign EXE_out2[24] = \<const0> ;
  assign EXE_out2[23] = \<const0> ;
  assign EXE_out2[22] = \<const0> ;
  assign EXE_out2[21] = \<const0> ;
  assign EXE_out2[20] = \<const0> ;
  assign EXE_out2[19] = \<const0> ;
  assign EXE_out2[18] = \<const0> ;
  assign EXE_out2[17] = \<const0> ;
  assign EXE_out2[16] = \<const0> ;
  assign EXE_out2[15] = \<const0> ;
  assign EXE_out2[14] = \<const0> ;
  assign EXE_out2[13] = \<const0> ;
  assign EXE_out2[12] = \<const0> ;
  assign EXE_out2[11] = \<const0> ;
  assign EXE_out2[10] = \<const0> ;
  assign EXE_out2[9] = \<const0> ;
  assign EXE_out2[8] = \<const0> ;
  assign EXE_out2[7] = \<const0> ;
  assign EXE_out2[6] = \<const0> ;
  assign EXE_out2[5] = \<const0> ;
  assign EXE_out2[4] = \<const0> ;
  assign EXE_out2[3] = \<const0> ;
  assign EXE_out2[2] = \<const0> ;
  assign EXE_out2[1] = \<const0> ;
  assign EXE_out2[0] = \^EXE_out2 [0];
  GND GND
       (.G(\<const0> ));
  design_1_EXE_stage_reg_0_0_EXE_stage_reg inst
       (.EXE_in1(EXE_in1[0]),
        .EXE_in2(EXE_in2[0]),
        .EXE_out1(\^EXE_out1 ),
        .EXE_out2(\^EXE_out2 ),
        .clk(clk),
        .freeze(freeze),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "EXE_stage_reg" *) 
module design_1_EXE_stage_reg_0_0_EXE_stage_reg
   (EXE_out1,
    EXE_out2,
    EXE_in1,
    clk,
    rst,
    EXE_in2,
    freeze);
  output [0:0]EXE_out1;
  output [0:0]EXE_out2;
  input [0:0]EXE_in1;
  input clk;
  input rst;
  input [0:0]EXE_in2;
  input freeze;

  wire [0:0]EXE_in1;
  wire [0:0]EXE_in2;
  wire [0:0]EXE_out1;
  wire [0:0]EXE_out2;
  wire clk;
  wire freeze;
  wire rst;

  design_1_EXE_stage_reg_0_0_Register EXEReg
       (.EXE_in1(EXE_in1),
        .EXE_in2(EXE_in2),
        .EXE_out1(EXE_out1),
        .EXE_out2(EXE_out2),
        .clk(clk),
        .freeze(freeze),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Register" *) 
module design_1_EXE_stage_reg_0_0_Register
   (EXE_out1,
    EXE_out2,
    EXE_in1,
    clk,
    rst,
    EXE_in2,
    freeze);
  output [0:0]EXE_out1;
  output [0:0]EXE_out2;
  input [0:0]EXE_in1;
  input clk;
  input rst;
  input [0:0]EXE_in2;
  input freeze;

  wire [0:0]EXE_in1;
  wire [0:0]EXE_in2;
  wire [0:0]EXE_out1;
  wire [0:0]EXE_out2;
  wire clk;
  wire freeze;
  wire \out1[0]_i_1_n_0 ;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \out1[0]_i_1 
       (.I0(freeze),
        .O(\out1[0]_i_1_n_0 ));
  FDCE \out1_reg[0] 
       (.C(clk),
        .CE(\out1[0]_i_1_n_0 ),
        .CLR(rst),
        .D(EXE_in1),
        .Q(EXE_out1));
  FDCE \out2_reg[0] 
       (.C(clk),
        .CE(\out1[0]_i_1_n_0 ),
        .CLR(rst),
        .D(EXE_in2),
        .Q(EXE_out2));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
