// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr 15 14:52:19 2025
// Host        : parsa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_debouncer_0_0/design_1_debouncer_0_0_stub.v
// Design      : design_1_debouncer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "debouncer,Vivado 2018.3" *)
module design_1_debouncer_0_0(SIGNAL_I, CLK_I, SIGNAL_O)
/* synthesis syn_black_box black_box_pad_pin="SIGNAL_I[0:0],CLK_I,SIGNAL_O[0:0]" */;
  input [0:0]SIGNAL_I;
  input CLK_I;
  output [0:0]SIGNAL_O;
endmodule
