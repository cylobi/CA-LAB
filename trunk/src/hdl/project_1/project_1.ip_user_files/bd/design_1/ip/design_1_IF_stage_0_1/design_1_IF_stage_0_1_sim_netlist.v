// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 15 13:39:38 2025
// Host        : parsa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_IF_stage_0_1/design_1_IF_stage_0_1_sim_netlist.v
// Design      : design_1_IF_stage_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_IF_stage_0_1,IF_stage,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "IF_stage,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_IF_stage_0_1
   (clk,
    rst,
    branchTaken,
    freeze,
    instructionin,
    branchAddress,
    pc,
    instruction,
    pcpipe);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input branchTaken;
  input freeze;
  input [31:0]instructionin;
  input [31:0]branchAddress;
  output [31:0]pc;
  output [31:0]instruction;
  output [31:0]pcpipe;

  wire [31:0]branchAddress;
  wire branchTaken;
  wire clk;
  wire freeze;
  wire [31:0]instructionin;
  wire [31:0]pc;
  wire [31:0]pcpipe;
  wire rst;

  assign instruction[31:0] = instructionin;
  design_1_IF_stage_0_1_IF_stage inst
       (.branchAddress(branchAddress),
        .branchTaken(branchTaken),
        .clk(clk),
        .freeze(freeze),
        .pc(pc),
        .pcpipe(pcpipe),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Adder" *) 
module design_1_IF_stage_0_1_Adder
   (pcpipe,
    pc);
  output [30:0]pcpipe;
  input [31:0]pc;

  wire out_carry__0_n_0;
  wire out_carry__0_n_1;
  wire out_carry__0_n_2;
  wire out_carry__0_n_3;
  wire out_carry__1_n_0;
  wire out_carry__1_n_1;
  wire out_carry__1_n_2;
  wire out_carry__1_n_3;
  wire out_carry__2_n_0;
  wire out_carry__2_n_1;
  wire out_carry__2_n_2;
  wire out_carry__2_n_3;
  wire out_carry__3_n_0;
  wire out_carry__3_n_1;
  wire out_carry__3_n_2;
  wire out_carry__3_n_3;
  wire out_carry__4_n_0;
  wire out_carry__4_n_1;
  wire out_carry__4_n_2;
  wire out_carry__4_n_3;
  wire out_carry__5_n_0;
  wire out_carry__5_n_1;
  wire out_carry__5_n_2;
  wire out_carry__5_n_3;
  wire out_carry__6_n_2;
  wire out_carry__6_n_3;
  wire out_carry_n_0;
  wire out_carry_n_1;
  wire out_carry_n_2;
  wire out_carry_n_3;
  wire [31:0]pc;
  wire [30:0]pcpipe;
  wire [3:2]NLW_out_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_out_carry__6_O_UNCONNECTED;

  CARRY4 out_carry
       (.CI(1'b0),
        .CO({out_carry_n_0,out_carry_n_1,out_carry_n_2,out_carry_n_3}),
        .CYINIT(pc[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[3:0]),
        .S(pc[4:1]));
  CARRY4 out_carry__0
       (.CI(out_carry_n_0),
        .CO({out_carry__0_n_0,out_carry__0_n_1,out_carry__0_n_2,out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[7:4]),
        .S(pc[8:5]));
  CARRY4 out_carry__1
       (.CI(out_carry__0_n_0),
        .CO({out_carry__1_n_0,out_carry__1_n_1,out_carry__1_n_2,out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[11:8]),
        .S(pc[12:9]));
  CARRY4 out_carry__2
       (.CI(out_carry__1_n_0),
        .CO({out_carry__2_n_0,out_carry__2_n_1,out_carry__2_n_2,out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[15:12]),
        .S(pc[16:13]));
  CARRY4 out_carry__3
       (.CI(out_carry__2_n_0),
        .CO({out_carry__3_n_0,out_carry__3_n_1,out_carry__3_n_2,out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[19:16]),
        .S(pc[20:17]));
  CARRY4 out_carry__4
       (.CI(out_carry__3_n_0),
        .CO({out_carry__4_n_0,out_carry__4_n_1,out_carry__4_n_2,out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[23:20]),
        .S(pc[24:21]));
  CARRY4 out_carry__5
       (.CI(out_carry__4_n_0),
        .CO({out_carry__5_n_0,out_carry__5_n_1,out_carry__5_n_2,out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pcpipe[27:24]),
        .S(pc[28:25]));
  CARRY4 out_carry__6
       (.CI(out_carry__5_n_0),
        .CO({NLW_out_carry__6_CO_UNCONNECTED[3:2],out_carry__6_n_2,out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_out_carry__6_O_UNCONNECTED[3],pcpipe[30:28]}),
        .S({1'b0,pc[31:29]}));
endmodule

(* ORIG_REF_NAME = "IF_stage" *) 
module design_1_IF_stage_0_1_IF_stage
   (pc,
    pcpipe,
    branchAddress,
    branchTaken,
    clk,
    rst,
    freeze);
  output [31:0]pc;
  output [31:0]pcpipe;
  input [31:0]branchAddress;
  input branchTaken;
  input clk;
  input rst;
  input freeze;

  wire [31:0]branchAddress;
  wire branchTaken;
  wire clk;
  wire freeze;
  wire [31:0]pc;
  wire [31:0]pcpipe;
  wire rst;

  design_1_IF_stage_0_1_Adder PCAdder
       (.pc(pc),
        .pcpipe(pcpipe[31:1]));
  design_1_IF_stage_0_1_Register PCReg
       (.branchAddress(branchAddress),
        .branchTaken(branchTaken),
        .clk(clk),
        .freeze(freeze),
        .pc(pc),
        .pcpipe(pcpipe[0]),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Register" *) 
module design_1_IF_stage_0_1_Register
   (pc,
    pcpipe,
    branchAddress,
    branchTaken,
    clk,
    rst,
    freeze);
  output [31:0]pc;
  output [0:0]pcpipe;
  input [31:0]branchAddress;
  input branchTaken;
  input clk;
  input rst;
  input freeze;

  wire [31:0]branchAddress;
  wire branchTaken;
  wire clk;
  wire freeze;
  wire \out1[11]_i_2_n_0 ;
  wire \out1[11]_i_3_n_0 ;
  wire \out1[11]_i_4_n_0 ;
  wire \out1[11]_i_5_n_0 ;
  wire \out1[15]_i_2_n_0 ;
  wire \out1[15]_i_3_n_0 ;
  wire \out1[15]_i_4_n_0 ;
  wire \out1[15]_i_5_n_0 ;
  wire \out1[19]_i_2_n_0 ;
  wire \out1[19]_i_3_n_0 ;
  wire \out1[19]_i_4_n_0 ;
  wire \out1[19]_i_5_n_0 ;
  wire \out1[23]_i_2_n_0 ;
  wire \out1[23]_i_3_n_0 ;
  wire \out1[23]_i_4_n_0 ;
  wire \out1[23]_i_5_n_0 ;
  wire \out1[27]_i_2_n_0 ;
  wire \out1[27]_i_3_n_0 ;
  wire \out1[27]_i_4_n_0 ;
  wire \out1[27]_i_5_n_0 ;
  wire \out1[31]_i_1_n_0 ;
  wire \out1[31]_i_3_n_0 ;
  wire \out1[31]_i_4_n_0 ;
  wire \out1[31]_i_5_n_0 ;
  wire \out1[31]_i_6_n_0 ;
  wire \out1[3]_i_2_n_0 ;
  wire \out1[3]_i_3_n_0 ;
  wire \out1[3]_i_4_n_0 ;
  wire \out1[3]_i_5_n_0 ;
  wire \out1[3]_i_6_n_0 ;
  wire \out1[7]_i_2_n_0 ;
  wire \out1[7]_i_3_n_0 ;
  wire \out1[7]_i_4_n_0 ;
  wire \out1[7]_i_5_n_0 ;
  wire \out1_reg[11]_i_1_n_0 ;
  wire \out1_reg[11]_i_1_n_1 ;
  wire \out1_reg[11]_i_1_n_2 ;
  wire \out1_reg[11]_i_1_n_3 ;
  wire \out1_reg[11]_i_1_n_4 ;
  wire \out1_reg[11]_i_1_n_5 ;
  wire \out1_reg[11]_i_1_n_6 ;
  wire \out1_reg[11]_i_1_n_7 ;
  wire \out1_reg[15]_i_1_n_0 ;
  wire \out1_reg[15]_i_1_n_1 ;
  wire \out1_reg[15]_i_1_n_2 ;
  wire \out1_reg[15]_i_1_n_3 ;
  wire \out1_reg[15]_i_1_n_4 ;
  wire \out1_reg[15]_i_1_n_5 ;
  wire \out1_reg[15]_i_1_n_6 ;
  wire \out1_reg[15]_i_1_n_7 ;
  wire \out1_reg[19]_i_1_n_0 ;
  wire \out1_reg[19]_i_1_n_1 ;
  wire \out1_reg[19]_i_1_n_2 ;
  wire \out1_reg[19]_i_1_n_3 ;
  wire \out1_reg[19]_i_1_n_4 ;
  wire \out1_reg[19]_i_1_n_5 ;
  wire \out1_reg[19]_i_1_n_6 ;
  wire \out1_reg[19]_i_1_n_7 ;
  wire \out1_reg[23]_i_1_n_0 ;
  wire \out1_reg[23]_i_1_n_1 ;
  wire \out1_reg[23]_i_1_n_2 ;
  wire \out1_reg[23]_i_1_n_3 ;
  wire \out1_reg[23]_i_1_n_4 ;
  wire \out1_reg[23]_i_1_n_5 ;
  wire \out1_reg[23]_i_1_n_6 ;
  wire \out1_reg[23]_i_1_n_7 ;
  wire \out1_reg[27]_i_1_n_0 ;
  wire \out1_reg[27]_i_1_n_1 ;
  wire \out1_reg[27]_i_1_n_2 ;
  wire \out1_reg[27]_i_1_n_3 ;
  wire \out1_reg[27]_i_1_n_4 ;
  wire \out1_reg[27]_i_1_n_5 ;
  wire \out1_reg[27]_i_1_n_6 ;
  wire \out1_reg[27]_i_1_n_7 ;
  wire \out1_reg[31]_i_2_n_1 ;
  wire \out1_reg[31]_i_2_n_2 ;
  wire \out1_reg[31]_i_2_n_3 ;
  wire \out1_reg[31]_i_2_n_4 ;
  wire \out1_reg[31]_i_2_n_5 ;
  wire \out1_reg[31]_i_2_n_6 ;
  wire \out1_reg[31]_i_2_n_7 ;
  wire \out1_reg[3]_i_1_n_0 ;
  wire \out1_reg[3]_i_1_n_1 ;
  wire \out1_reg[3]_i_1_n_2 ;
  wire \out1_reg[3]_i_1_n_3 ;
  wire \out1_reg[3]_i_1_n_4 ;
  wire \out1_reg[3]_i_1_n_5 ;
  wire \out1_reg[3]_i_1_n_6 ;
  wire \out1_reg[3]_i_1_n_7 ;
  wire \out1_reg[7]_i_1_n_0 ;
  wire \out1_reg[7]_i_1_n_1 ;
  wire \out1_reg[7]_i_1_n_2 ;
  wire \out1_reg[7]_i_1_n_3 ;
  wire \out1_reg[7]_i_1_n_4 ;
  wire \out1_reg[7]_i_1_n_5 ;
  wire \out1_reg[7]_i_1_n_6 ;
  wire \out1_reg[7]_i_1_n_7 ;
  wire [31:0]pc;
  wire [0:0]pcpipe;
  wire rst;
  wire [3:3]\NLW_out1_reg[31]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \out1[11]_i_2 
       (.I0(branchAddress[11]),
        .I1(branchTaken),
        .I2(pc[11]),
        .O(\out1[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[11]_i_3 
       (.I0(branchAddress[10]),
        .I1(branchTaken),
        .I2(pc[10]),
        .O(\out1[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[11]_i_4 
       (.I0(branchAddress[9]),
        .I1(branchTaken),
        .I2(pc[9]),
        .O(\out1[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[11]_i_5 
       (.I0(branchAddress[8]),
        .I1(branchTaken),
        .I2(pc[8]),
        .O(\out1[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[15]_i_2 
       (.I0(branchAddress[15]),
        .I1(branchTaken),
        .I2(pc[15]),
        .O(\out1[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[15]_i_3 
       (.I0(branchAddress[14]),
        .I1(branchTaken),
        .I2(pc[14]),
        .O(\out1[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[15]_i_4 
       (.I0(branchAddress[13]),
        .I1(branchTaken),
        .I2(pc[13]),
        .O(\out1[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[15]_i_5 
       (.I0(branchAddress[12]),
        .I1(branchTaken),
        .I2(pc[12]),
        .O(\out1[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[19]_i_2 
       (.I0(branchAddress[19]),
        .I1(branchTaken),
        .I2(pc[19]),
        .O(\out1[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[19]_i_3 
       (.I0(branchAddress[18]),
        .I1(branchTaken),
        .I2(pc[18]),
        .O(\out1[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[19]_i_4 
       (.I0(branchAddress[17]),
        .I1(branchTaken),
        .I2(pc[17]),
        .O(\out1[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[19]_i_5 
       (.I0(branchAddress[16]),
        .I1(branchTaken),
        .I2(pc[16]),
        .O(\out1[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[23]_i_2 
       (.I0(branchAddress[23]),
        .I1(branchTaken),
        .I2(pc[23]),
        .O(\out1[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[23]_i_3 
       (.I0(branchAddress[22]),
        .I1(branchTaken),
        .I2(pc[22]),
        .O(\out1[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[23]_i_4 
       (.I0(branchAddress[21]),
        .I1(branchTaken),
        .I2(pc[21]),
        .O(\out1[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[23]_i_5 
       (.I0(branchAddress[20]),
        .I1(branchTaken),
        .I2(pc[20]),
        .O(\out1[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[27]_i_2 
       (.I0(branchAddress[27]),
        .I1(branchTaken),
        .I2(pc[27]),
        .O(\out1[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[27]_i_3 
       (.I0(branchAddress[26]),
        .I1(branchTaken),
        .I2(pc[26]),
        .O(\out1[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[27]_i_4 
       (.I0(branchAddress[25]),
        .I1(branchTaken),
        .I2(pc[25]),
        .O(\out1[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[27]_i_5 
       (.I0(branchAddress[24]),
        .I1(branchTaken),
        .I2(pc[24]),
        .O(\out1[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out1[31]_i_1 
       (.I0(freeze),
        .O(\out1[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[31]_i_3 
       (.I0(branchAddress[31]),
        .I1(branchTaken),
        .I2(pc[31]),
        .O(\out1[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[31]_i_4 
       (.I0(branchAddress[30]),
        .I1(branchTaken),
        .I2(pc[30]),
        .O(\out1[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[31]_i_5 
       (.I0(branchAddress[29]),
        .I1(branchTaken),
        .I2(pc[29]),
        .O(\out1[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[31]_i_6 
       (.I0(branchAddress[28]),
        .I1(branchTaken),
        .I2(pc[28]),
        .O(\out1[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[3]_i_2 
       (.I0(branchAddress[0]),
        .I1(branchTaken),
        .I2(pc[0]),
        .O(\out1[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[3]_i_3 
       (.I0(branchAddress[3]),
        .I1(branchTaken),
        .I2(pc[3]),
        .O(\out1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[3]_i_4 
       (.I0(branchAddress[2]),
        .I1(branchTaken),
        .I2(pc[2]),
        .O(\out1[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[3]_i_5 
       (.I0(branchAddress[1]),
        .I1(branchTaken),
        .I2(pc[1]),
        .O(\out1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \out1[3]_i_6 
       (.I0(pc[0]),
        .I1(branchAddress[0]),
        .I2(branchTaken),
        .O(\out1[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[7]_i_2 
       (.I0(branchAddress[7]),
        .I1(branchTaken),
        .I2(pc[7]),
        .O(\out1[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[7]_i_3 
       (.I0(branchAddress[6]),
        .I1(branchTaken),
        .I2(pc[6]),
        .O(\out1[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[7]_i_4 
       (.I0(branchAddress[5]),
        .I1(branchTaken),
        .I2(pc[5]),
        .O(\out1[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \out1[7]_i_5 
       (.I0(branchAddress[4]),
        .I1(branchTaken),
        .I2(pc[4]),
        .O(\out1[7]_i_5_n_0 ));
  FDCE \out1_reg[0] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[3]_i_1_n_7 ),
        .Q(pc[0]));
  FDCE \out1_reg[10] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[11]_i_1_n_5 ),
        .Q(pc[10]));
  FDCE \out1_reg[11] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[11]_i_1_n_4 ),
        .Q(pc[11]));
  CARRY4 \out1_reg[11]_i_1 
       (.CI(\out1_reg[7]_i_1_n_0 ),
        .CO({\out1_reg[11]_i_1_n_0 ,\out1_reg[11]_i_1_n_1 ,\out1_reg[11]_i_1_n_2 ,\out1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[11]_i_1_n_4 ,\out1_reg[11]_i_1_n_5 ,\out1_reg[11]_i_1_n_6 ,\out1_reg[11]_i_1_n_7 }),
        .S({\out1[11]_i_2_n_0 ,\out1[11]_i_3_n_0 ,\out1[11]_i_4_n_0 ,\out1[11]_i_5_n_0 }));
  FDCE \out1_reg[12] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[15]_i_1_n_7 ),
        .Q(pc[12]));
  FDCE \out1_reg[13] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[15]_i_1_n_6 ),
        .Q(pc[13]));
  FDCE \out1_reg[14] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[15]_i_1_n_5 ),
        .Q(pc[14]));
  FDCE \out1_reg[15] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[15]_i_1_n_4 ),
        .Q(pc[15]));
  CARRY4 \out1_reg[15]_i_1 
       (.CI(\out1_reg[11]_i_1_n_0 ),
        .CO({\out1_reg[15]_i_1_n_0 ,\out1_reg[15]_i_1_n_1 ,\out1_reg[15]_i_1_n_2 ,\out1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[15]_i_1_n_4 ,\out1_reg[15]_i_1_n_5 ,\out1_reg[15]_i_1_n_6 ,\out1_reg[15]_i_1_n_7 }),
        .S({\out1[15]_i_2_n_0 ,\out1[15]_i_3_n_0 ,\out1[15]_i_4_n_0 ,\out1[15]_i_5_n_0 }));
  FDCE \out1_reg[16] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[19]_i_1_n_7 ),
        .Q(pc[16]));
  FDCE \out1_reg[17] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[19]_i_1_n_6 ),
        .Q(pc[17]));
  FDCE \out1_reg[18] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[19]_i_1_n_5 ),
        .Q(pc[18]));
  FDCE \out1_reg[19] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[19]_i_1_n_4 ),
        .Q(pc[19]));
  CARRY4 \out1_reg[19]_i_1 
       (.CI(\out1_reg[15]_i_1_n_0 ),
        .CO({\out1_reg[19]_i_1_n_0 ,\out1_reg[19]_i_1_n_1 ,\out1_reg[19]_i_1_n_2 ,\out1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[19]_i_1_n_4 ,\out1_reg[19]_i_1_n_5 ,\out1_reg[19]_i_1_n_6 ,\out1_reg[19]_i_1_n_7 }),
        .S({\out1[19]_i_2_n_0 ,\out1[19]_i_3_n_0 ,\out1[19]_i_4_n_0 ,\out1[19]_i_5_n_0 }));
  FDCE \out1_reg[1] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[3]_i_1_n_6 ),
        .Q(pc[1]));
  FDCE \out1_reg[20] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[23]_i_1_n_7 ),
        .Q(pc[20]));
  FDCE \out1_reg[21] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[23]_i_1_n_6 ),
        .Q(pc[21]));
  FDCE \out1_reg[22] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[23]_i_1_n_5 ),
        .Q(pc[22]));
  FDCE \out1_reg[23] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[23]_i_1_n_4 ),
        .Q(pc[23]));
  CARRY4 \out1_reg[23]_i_1 
       (.CI(\out1_reg[19]_i_1_n_0 ),
        .CO({\out1_reg[23]_i_1_n_0 ,\out1_reg[23]_i_1_n_1 ,\out1_reg[23]_i_1_n_2 ,\out1_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[23]_i_1_n_4 ,\out1_reg[23]_i_1_n_5 ,\out1_reg[23]_i_1_n_6 ,\out1_reg[23]_i_1_n_7 }),
        .S({\out1[23]_i_2_n_0 ,\out1[23]_i_3_n_0 ,\out1[23]_i_4_n_0 ,\out1[23]_i_5_n_0 }));
  FDCE \out1_reg[24] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[27]_i_1_n_7 ),
        .Q(pc[24]));
  FDCE \out1_reg[25] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[27]_i_1_n_6 ),
        .Q(pc[25]));
  FDCE \out1_reg[26] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[27]_i_1_n_5 ),
        .Q(pc[26]));
  FDCE \out1_reg[27] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[27]_i_1_n_4 ),
        .Q(pc[27]));
  CARRY4 \out1_reg[27]_i_1 
       (.CI(\out1_reg[23]_i_1_n_0 ),
        .CO({\out1_reg[27]_i_1_n_0 ,\out1_reg[27]_i_1_n_1 ,\out1_reg[27]_i_1_n_2 ,\out1_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[27]_i_1_n_4 ,\out1_reg[27]_i_1_n_5 ,\out1_reg[27]_i_1_n_6 ,\out1_reg[27]_i_1_n_7 }),
        .S({\out1[27]_i_2_n_0 ,\out1[27]_i_3_n_0 ,\out1[27]_i_4_n_0 ,\out1[27]_i_5_n_0 }));
  FDCE \out1_reg[28] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[31]_i_2_n_7 ),
        .Q(pc[28]));
  FDCE \out1_reg[29] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[31]_i_2_n_6 ),
        .Q(pc[29]));
  FDCE \out1_reg[2] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[3]_i_1_n_5 ),
        .Q(pc[2]));
  FDCE \out1_reg[30] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[31]_i_2_n_5 ),
        .Q(pc[30]));
  FDCE \out1_reg[31] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[31]_i_2_n_4 ),
        .Q(pc[31]));
  CARRY4 \out1_reg[31]_i_2 
       (.CI(\out1_reg[27]_i_1_n_0 ),
        .CO({\NLW_out1_reg[31]_i_2_CO_UNCONNECTED [3],\out1_reg[31]_i_2_n_1 ,\out1_reg[31]_i_2_n_2 ,\out1_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[31]_i_2_n_4 ,\out1_reg[31]_i_2_n_5 ,\out1_reg[31]_i_2_n_6 ,\out1_reg[31]_i_2_n_7 }),
        .S({\out1[31]_i_3_n_0 ,\out1[31]_i_4_n_0 ,\out1[31]_i_5_n_0 ,\out1[31]_i_6_n_0 }));
  FDCE \out1_reg[3] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[3]_i_1_n_4 ),
        .Q(pc[3]));
  CARRY4 \out1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\out1_reg[3]_i_1_n_0 ,\out1_reg[3]_i_1_n_1 ,\out1_reg[3]_i_1_n_2 ,\out1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\out1[3]_i_2_n_0 }),
        .O({\out1_reg[3]_i_1_n_4 ,\out1_reg[3]_i_1_n_5 ,\out1_reg[3]_i_1_n_6 ,\out1_reg[3]_i_1_n_7 }),
        .S({\out1[3]_i_3_n_0 ,\out1[3]_i_4_n_0 ,\out1[3]_i_5_n_0 ,\out1[3]_i_6_n_0 }));
  FDCE \out1_reg[4] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[7]_i_1_n_7 ),
        .Q(pc[4]));
  FDCE \out1_reg[5] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[7]_i_1_n_6 ),
        .Q(pc[5]));
  FDCE \out1_reg[6] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[7]_i_1_n_5 ),
        .Q(pc[6]));
  FDCE \out1_reg[7] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[7]_i_1_n_4 ),
        .Q(pc[7]));
  CARRY4 \out1_reg[7]_i_1 
       (.CI(\out1_reg[3]_i_1_n_0 ),
        .CO({\out1_reg[7]_i_1_n_0 ,\out1_reg[7]_i_1_n_1 ,\out1_reg[7]_i_1_n_2 ,\out1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\out1_reg[7]_i_1_n_4 ,\out1_reg[7]_i_1_n_5 ,\out1_reg[7]_i_1_n_6 ,\out1_reg[7]_i_1_n_7 }),
        .S({\out1[7]_i_2_n_0 ,\out1[7]_i_3_n_0 ,\out1[7]_i_4_n_0 ,\out1[7]_i_5_n_0 }));
  FDCE \out1_reg[8] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[11]_i_1_n_7 ),
        .Q(pc[8]));
  FDCE \out1_reg[9] 
       (.C(clk),
        .CE(\out1[31]_i_1_n_0 ),
        .CLR(rst),
        .D(\out1_reg[11]_i_1_n_6 ),
        .Q(pc[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \pcpipe[0]_INST_0 
       (.I0(pc[0]),
        .O(pcpipe));
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
