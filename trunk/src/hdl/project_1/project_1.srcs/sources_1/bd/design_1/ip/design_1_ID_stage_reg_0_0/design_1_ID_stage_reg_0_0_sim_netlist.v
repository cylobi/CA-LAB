// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  8 15:00:12 2025
// Host        : parsa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_ID_stage_reg_0_0/design_1_ID_stage_reg_0_0_sim_netlist.v
// Design      : design_1_ID_stage_reg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ID_stage_reg_0_0,ID_stage_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ID_stage_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_ID_stage_reg_0_0
   (clk,
    rst,
    ID_in1,
    ID_in2,
    ID_out1,
    ID_out2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]ID_in1;
  input [31:0]ID_in2;
  output [31:0]ID_out1;
  output [31:0]ID_out2;

  wire [31:0]ID_in1;
  wire [31:0]ID_in2;
  wire [31:0]ID_out1;
  wire [31:0]ID_out2;
  wire clk;
  wire rst;

  design_1_ID_stage_reg_0_0_ID_stage_reg inst
       (.ID_in1(ID_in1),
        .ID_in2(ID_in2),
        .ID_out1(ID_out1),
        .ID_out2(ID_out2),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "ID_stage_reg" *) 
module design_1_ID_stage_reg_0_0_ID_stage_reg
   (ID_out1,
    ID_out2,
    ID_in1,
    clk,
    rst,
    ID_in2);
  output [31:0]ID_out1;
  output [31:0]ID_out2;
  input [31:0]ID_in1;
  input clk;
  input rst;
  input [31:0]ID_in2;

  wire [31:0]ID_in1;
  wire [31:0]ID_in2;
  wire [31:0]ID_out1;
  wire [31:0]ID_out2;
  wire clk;
  wire rst;

  design_1_ID_stage_reg_0_0_Register IDReg
       (.ID_in1(ID_in1),
        .ID_in2(ID_in2),
        .ID_out1(ID_out1),
        .ID_out2(ID_out2),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Register" *) 
module design_1_ID_stage_reg_0_0_Register
   (ID_out1,
    ID_out2,
    ID_in1,
    clk,
    rst,
    ID_in2);
  output [31:0]ID_out1;
  output [31:0]ID_out2;
  input [31:0]ID_in1;
  input clk;
  input rst;
  input [31:0]ID_in2;

  wire [31:0]ID_in1;
  wire [31:0]ID_in2;
  wire [31:0]ID_out1;
  wire [31:0]ID_out2;
  wire clk;
  wire rst;

  FDCE \out1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[0]),
        .Q(ID_out1[0]));
  FDCE \out1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[10]),
        .Q(ID_out1[10]));
  FDCE \out1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[11]),
        .Q(ID_out1[11]));
  FDCE \out1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[12]),
        .Q(ID_out1[12]));
  FDCE \out1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[13]),
        .Q(ID_out1[13]));
  FDCE \out1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[14]),
        .Q(ID_out1[14]));
  FDCE \out1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[15]),
        .Q(ID_out1[15]));
  FDCE \out1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[16]),
        .Q(ID_out1[16]));
  FDCE \out1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[17]),
        .Q(ID_out1[17]));
  FDCE \out1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[18]),
        .Q(ID_out1[18]));
  FDCE \out1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[19]),
        .Q(ID_out1[19]));
  FDCE \out1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[1]),
        .Q(ID_out1[1]));
  FDCE \out1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[20]),
        .Q(ID_out1[20]));
  FDCE \out1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[21]),
        .Q(ID_out1[21]));
  FDCE \out1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[22]),
        .Q(ID_out1[22]));
  FDCE \out1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[23]),
        .Q(ID_out1[23]));
  FDCE \out1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[24]),
        .Q(ID_out1[24]));
  FDCE \out1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[25]),
        .Q(ID_out1[25]));
  FDCE \out1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[26]),
        .Q(ID_out1[26]));
  FDCE \out1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[27]),
        .Q(ID_out1[27]));
  FDCE \out1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[28]),
        .Q(ID_out1[28]));
  FDCE \out1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[29]),
        .Q(ID_out1[29]));
  FDCE \out1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[2]),
        .Q(ID_out1[2]));
  FDCE \out1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[30]),
        .Q(ID_out1[30]));
  FDCE \out1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[31]),
        .Q(ID_out1[31]));
  FDCE \out1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[3]),
        .Q(ID_out1[3]));
  FDCE \out1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[4]),
        .Q(ID_out1[4]));
  FDCE \out1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[5]),
        .Q(ID_out1[5]));
  FDCE \out1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[6]),
        .Q(ID_out1[6]));
  FDCE \out1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[7]),
        .Q(ID_out1[7]));
  FDCE \out1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[8]),
        .Q(ID_out1[8]));
  FDCE \out1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in1[9]),
        .Q(ID_out1[9]));
  FDCE \out2_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[0]),
        .Q(ID_out2[0]));
  FDCE \out2_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[10]),
        .Q(ID_out2[10]));
  FDCE \out2_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[11]),
        .Q(ID_out2[11]));
  FDCE \out2_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[12]),
        .Q(ID_out2[12]));
  FDCE \out2_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[13]),
        .Q(ID_out2[13]));
  FDCE \out2_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[14]),
        .Q(ID_out2[14]));
  FDCE \out2_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[15]),
        .Q(ID_out2[15]));
  FDCE \out2_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[16]),
        .Q(ID_out2[16]));
  FDCE \out2_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[17]),
        .Q(ID_out2[17]));
  FDCE \out2_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[18]),
        .Q(ID_out2[18]));
  FDCE \out2_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[19]),
        .Q(ID_out2[19]));
  FDCE \out2_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[1]),
        .Q(ID_out2[1]));
  FDCE \out2_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[20]),
        .Q(ID_out2[20]));
  FDCE \out2_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[21]),
        .Q(ID_out2[21]));
  FDCE \out2_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[22]),
        .Q(ID_out2[22]));
  FDCE \out2_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[23]),
        .Q(ID_out2[23]));
  FDCE \out2_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[24]),
        .Q(ID_out2[24]));
  FDCE \out2_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[25]),
        .Q(ID_out2[25]));
  FDCE \out2_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[26]),
        .Q(ID_out2[26]));
  FDCE \out2_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[27]),
        .Q(ID_out2[27]));
  FDCE \out2_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[28]),
        .Q(ID_out2[28]));
  FDCE \out2_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[29]),
        .Q(ID_out2[29]));
  FDCE \out2_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[2]),
        .Q(ID_out2[2]));
  FDCE \out2_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[30]),
        .Q(ID_out2[30]));
  FDCE \out2_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[31]),
        .Q(ID_out2[31]));
  FDCE \out2_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[3]),
        .Q(ID_out2[3]));
  FDCE \out2_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[4]),
        .Q(ID_out2[4]));
  FDCE \out2_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[5]),
        .Q(ID_out2[5]));
  FDCE \out2_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[6]),
        .Q(ID_out2[6]));
  FDCE \out2_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[7]),
        .Q(ID_out2[7]));
  FDCE \out2_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[8]),
        .Q(ID_out2[8]));
  FDCE \out2_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ID_in2[9]),
        .Q(ID_out2[9]));
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
