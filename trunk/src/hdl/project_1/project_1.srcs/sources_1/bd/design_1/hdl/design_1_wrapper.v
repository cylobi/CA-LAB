//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Apr 15 13:38:50 2025
//Host        : parsa running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (MEM_out1_0,
    MEM_out2_0,
    clk_0,
    if_instruction,
    if_instruction_original,
    if_pc,
    if_pc_original,
    instructionmemout,
    pcpipe_0,
    rst_0);
  output [31:0]MEM_out1_0;
  output [31:0]MEM_out2_0;
  input clk_0;
  output [31:0]if_instruction;
  output [31:0]if_instruction_original;
  output [31:0]if_pc;
  output [31:0]if_pc_original;
  output [31:0]instructionmemout;
  output [31:0]pcpipe_0;
  input rst_0;

  wire [31:0]MEM_out1_0;
  wire [31:0]MEM_out2_0;
  wire clk_0;
  wire [31:0]if_instruction;
  wire [31:0]if_instruction_original;
  wire [31:0]if_pc;
  wire [31:0]if_pc_original;
  wire [31:0]instructionmemout;
  wire [31:0]pcpipe_0;
  wire rst_0;

  design_1 design_1_i
       (.MEM_out1_0(MEM_out1_0),
        .MEM_out2_0(MEM_out2_0),
        .clk_0(clk_0),
        .if_instruction(if_instruction),
        .if_instruction_original(if_instruction_original),
        .if_pc(if_pc),
        .if_pc_original(if_pc_original),
        .instructionmemout(instructionmemout),
        .pcpipe_0(pcpipe_0),
        .rst_0(rst_0));
endmodule
