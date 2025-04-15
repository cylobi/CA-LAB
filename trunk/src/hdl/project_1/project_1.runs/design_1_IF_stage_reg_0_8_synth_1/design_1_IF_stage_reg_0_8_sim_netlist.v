// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  8 15:00:37 2025
// Host        : parsa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_IF_stage_reg_0_8_sim_netlist.v
// Design      : design_1_IF_stage_reg_0_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IF_stage_reg
   (pc,
    instruction,
    pcin,
    clk,
    rst,
    instructionin,
    freeze);
  output [31:0]pc;
  output [31:0]instruction;
  input [31:0]pcin;
  input clk;
  input rst;
  input [31:0]instructionin;
  input freeze;

  wire clk;
  wire freeze;
  wire [31:0]instruction;
  wire [31:0]instructionin;
  wire [31:0]pc;
  wire [31:0]pcin;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register IFReg
       (.clk(clk),
        .freeze(freeze),
        .instruction(instruction),
        .instructionin(instructionin),
        .pc(pc),
        .pcin(pcin),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register
   (pc,
    instruction,
    pcin,
    clk,
    rst,
    instructionin,
    freeze);
  output [31:0]pc;
  output [31:0]instruction;
  input [31:0]pcin;
  input clk;
  input rst;
  input [31:0]instructionin;
  input freeze;

  wire clk;
  wire freeze;
  wire [31:0]instruction;
  wire [31:0]instructionin;
  wire \out1[31]_i_1_n_0 ;
  wire [31:0]pc;
  wire [31:0]pcin;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \out1[31]_i_1 
       (.I0(freeze),
        .O(\out1[31]_i_1_n_0 ));
  FDCE \out1_reg[0] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[0]),
        .Q(pc[0]));
  FDCE \out1_reg[10] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[10]),
        .Q(pc[10]));
  FDCE \out1_reg[11] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[11]),
        .Q(pc[11]));
  FDCE \out1_reg[12] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[12]),
        .Q(pc[12]));
  FDCE \out1_reg[13] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[13]),
        .Q(pc[13]));
  FDCE \out1_reg[14] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[14]),
        .Q(pc[14]));
  FDCE \out1_reg[15] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[15]),
        .Q(pc[15]));
  FDCE \out1_reg[16] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[16]),
        .Q(pc[16]));
  FDCE \out1_reg[17] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[17]),
        .Q(pc[17]));
  FDCE \out1_reg[18] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[18]),
        .Q(pc[18]));
  FDCE \out1_reg[19] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[19]),
        .Q(pc[19]));
  FDCE \out1_reg[1] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[1]),
        .Q(pc[1]));
  FDCE \out1_reg[20] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[20]),
        .Q(pc[20]));
  FDCE \out1_reg[21] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[21]),
        .Q(pc[21]));
  FDCE \out1_reg[22] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[22]),
        .Q(pc[22]));
  FDCE \out1_reg[23] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[23]),
        .Q(pc[23]));
  FDCE \out1_reg[24] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[24]),
        .Q(pc[24]));
  FDCE \out1_reg[25] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[25]),
        .Q(pc[25]));
  FDCE \out1_reg[26] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[26]),
        .Q(pc[26]));
  FDCE \out1_reg[27] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[27]),
        .Q(pc[27]));
  FDCE \out1_reg[28] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[28]),
        .Q(pc[28]));
  FDCE \out1_reg[29] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[29]),
        .Q(pc[29]));
  FDCE \out1_reg[2] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[2]),
        .Q(pc[2]));
  FDCE \out1_reg[30] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[30]),
        .Q(pc[30]));
  FDCE \out1_reg[31] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[31]),
        .Q(pc[31]));
  FDCE \out1_reg[3] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[3]),
        .Q(pc[3]));
  FDCE \out1_reg[4] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[4]),
        .Q(pc[4]));
  FDCE \out1_reg[5] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[5]),
        .Q(pc[5]));
  FDCE \out1_reg[6] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[6]),
        .Q(pc[6]));
  FDCE \out1_reg[7] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[7]),
        .Q(pc[7]));
  FDCE \out1_reg[8] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[8]),
        .Q(pc[8]));
  FDCE \out1_reg[9] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(pcin[9]),
        .Q(pc[9]));
  FDCE \out2_reg[0] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[0]),
        .Q(instruction[0]));
  FDCE \out2_reg[10] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[10]),
        .Q(instruction[10]));
  FDCE \out2_reg[11] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[11]),
        .Q(instruction[11]));
  FDCE \out2_reg[12] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[12]),
        .Q(instruction[12]));
  FDCE \out2_reg[13] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[13]),
        .Q(instruction[13]));
  FDCE \out2_reg[14] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[14]),
        .Q(instruction[14]));
  FDCE \out2_reg[15] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[15]),
        .Q(instruction[15]));
  FDCE \out2_reg[16] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[16]),
        .Q(instruction[16]));
  FDCE \out2_reg[17] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[17]),
        .Q(instruction[17]));
  FDCE \out2_reg[18] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[18]),
        .Q(instruction[18]));
  FDCE \out2_reg[19] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[19]),
        .Q(instruction[19]));
  FDCE \out2_reg[1] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[1]),
        .Q(instruction[1]));
  FDCE \out2_reg[20] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[20]),
        .Q(instruction[20]));
  FDCE \out2_reg[21] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[21]),
        .Q(instruction[21]));
  FDCE \out2_reg[22] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[22]),
        .Q(instruction[22]));
  FDCE \out2_reg[23] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[23]),
        .Q(instruction[23]));
  FDCE \out2_reg[24] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[24]),
        .Q(instruction[24]));
  FDCE \out2_reg[25] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[25]),
        .Q(instruction[25]));
  FDCE \out2_reg[26] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[26]),
        .Q(instruction[26]));
  FDCE \out2_reg[27] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[27]),
        .Q(instruction[27]));
  FDCE \out2_reg[28] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[28]),
        .Q(instruction[28]));
  FDCE \out2_reg[29] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[29]),
        .Q(instruction[29]));
  FDCE \out2_reg[2] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[2]),
        .Q(instruction[2]));
  FDCE \out2_reg[30] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[30]),
        .Q(instruction[30]));
  FDCE \out2_reg[31] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[31]),
        .Q(instruction[31]));
  FDCE \out2_reg[3] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[3]),
        .Q(instruction[3]));
  FDCE \out2_reg[4] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[4]),
        .Q(instruction[4]));
  FDCE \out2_reg[5] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[5]),
        .Q(instruction[5]));
  FDCE \out2_reg[6] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[6]),
        .Q(instruction[6]));
  FDCE \out2_reg[7] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[7]),
        .Q(instruction[7]));
  FDCE \out2_reg[8] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[8]),
        .Q(instruction[8]));
  FDCE \out2_reg[9] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(instructionin[9]),
        .Q(instruction[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_IF_stage_reg_0_8,IF_stage_reg,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "IF_stage_reg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    freeze,
    branchAddress,
    pcin,
    instructionin,
    pc,
    instruction);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input freeze;
  input [31:0]branchAddress;
  input [31:0]pcin;
  input [31:0]instructionin;
  output [31:0]pc;
  output [31:0]instruction;

  wire clk;
  wire freeze;
  wire [31:0]instruction;
  wire [31:0]instructionin;
  wire [31:0]pc;
  wire [31:0]pcin;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_IF_stage_reg inst
       (.clk(clk),
        .freeze(freeze),
        .instruction(instruction),
        .instructionin(instructionin),
        .pc(pc),
        .pcin(pcin),
        .rst(rst));
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
