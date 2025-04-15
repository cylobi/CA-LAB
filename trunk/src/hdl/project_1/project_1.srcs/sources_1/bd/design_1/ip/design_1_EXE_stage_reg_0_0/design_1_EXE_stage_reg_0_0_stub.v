// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 15 14:32:51 2025
// Host        : parsa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_EXE_stage_reg_0_0/design_1_EXE_stage_reg_0_0_stub.v
// Design      : design_1_EXE_stage_reg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "EXE_stage_reg,Vivado 2018.3" *)
module design_1_EXE_stage_reg_0_0(clk, rst, freeze, EXE_in1, EXE_in2, EXE_out1, 
  EXE_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,freeze,EXE_in1[32:0],EXE_in2[32:0],EXE_out1[31:0],EXE_out2[31:0]" */;
  input clk;
  input rst;
  input freeze;
  input [32:0]EXE_in1;
  input [32:0]EXE_in2;
  output [31:0]EXE_out1;
  output [31:0]EXE_out2;
endmodule
