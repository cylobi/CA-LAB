//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Apr 15 14:58:31 2025
//Host        : parsa running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module IF_Stage_imp_V4PB19
   (branchAddress,
    clk_0,
    freeze,
    instruction,
    pc,
    pcpipe_0,
    rst_0);
  input [31:0]branchAddress;
  input clk_0;
  input freeze;
  output [31:0]instruction;
  output [31:0]pc;
  output [31:0]pcpipe_0;
  input rst_0;

  wire [31:0]IF_stage_0_instruction;
  wire [31:0]IF_stage_0_pc;
  wire [31:0]IF_stage_0_pcpipe;
  wire [31:0]blk_mem_gen_0_douta;
  wire clk_0_1;
  wire rst_0_1;
  wire xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;
  wire [12:0]xlslice_0_Dout;

  assign clk_0_1 = clk_0;
  assign instruction[31:0] = IF_stage_0_instruction;
  assign pc[31:0] = IF_stage_0_pc;
  assign pcpipe_0[31:0] = IF_stage_0_pcpipe;
  assign rst_0_1 = rst_0;
  assign xlconstant_0_dout = freeze;
  assign xlconstant_1_dout = branchAddress[31:0];
  design_1_IF_stage_0_1 IF_stage_0
       (.branchAddress(xlconstant_1_dout),
        .branchTaken(xlconstant_0_dout),
        .clk(clk_0_1),
        .freeze(xlconstant_0_dout),
        .instruction(IF_stage_0_instruction),
        .instructionin(blk_mem_gen_0_douta),
        .pc(IF_stage_0_pc),
        .pcpipe(IF_stage_0_pcpipe),
        .rst(rst_0_1));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(xlslice_0_Dout),
        .clka(clk_0_1),
        .douta(blk_mem_gen_0_douta));
  design_1_xlslice_0_0 xlslice_0
       (.Din(IF_stage_0_pc),
        .Dout(xlslice_0_Dout));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [31:0]EXE_stage_reg_0_EXE_out1;
  wire [31:0]EXE_stage_reg_0_EXE_out2;
  wire [31:0]ID_stage_reg_0_ID_out1;
  wire [31:0]ID_stage_reg_0_ID_out2;
  wire [31:0]IF_Stage_pcpipe_0;
  wire [31:0]IF_stage_0_instruction;
  wire [31:0]IF_stage_0_pc;
  wire [31:0]IF_stage_reg_0_instruction;
  wire [31:0]IF_stage_reg_0_pc;
  wire [31:0]MEM_stage_reg_0_MEM_out1;
  wire [31:0]MEM_stage_reg_0_MEM_out2;
  wire clk_0_1;
  wire [0:0]rst_0_1;
  wire rst_0_2;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign clk_0_1 = clk_0;
  assign rst_0_2 = rst_0;
  design_1_EXE_stage_reg_0_0 EXE_stage_reg_0
       (.EXE_in1(ID_stage_reg_0_ID_out1),
        .EXE_in2(ID_stage_reg_0_ID_out2),
        .EXE_out1(EXE_stage_reg_0_EXE_out1),
        .EXE_out2(EXE_stage_reg_0_EXE_out2),
        .clk(clk_0_1),
        .freeze(xlconstant_0_dout),
        .rst(rst_0_1));
  design_1_ID_stage_reg_0_0 ID_stage_reg_0
       (.ID_in1(IF_stage_reg_0_pc),
        .ID_in2(IF_stage_reg_0_instruction),
        .ID_out1(ID_stage_reg_0_ID_out1),
        .ID_out2(ID_stage_reg_0_ID_out2),
        .clk(clk_0_1),
        .rst(rst_0_1));
  IF_Stage_imp_V4PB19 IF_Stage
       (.branchAddress(xlconstant_1_dout),
        .clk_0(clk_0_1),
        .freeze(xlconstant_0_dout),
        .instruction(IF_stage_0_instruction),
        .pc(IF_stage_0_pc),
        .pcpipe_0(IF_Stage_pcpipe_0),
        .rst_0(rst_0_1));
  design_1_IF_stage_reg_0_8 IF_stage_reg_0
       (.branchAddress(xlconstant_1_dout),
        .clk(clk_0_1),
        .freeze(xlconstant_0_dout),
        .instruction(IF_stage_reg_0_instruction),
        .instructionin(IF_stage_0_instruction),
        .pc(IF_stage_reg_0_pc),
        .pcin(IF_Stage_pcpipe_0),
        .rst(rst_0_1));
  design_1_MEM_stage_reg_0_0 MEM_stage_reg_0
       (.MEM_in1(EXE_stage_reg_0_EXE_out1),
        .MEM_in2(EXE_stage_reg_0_EXE_out2),
        .MEM_out1(MEM_stage_reg_0_MEM_out1),
        .MEM_out2(MEM_stage_reg_0_MEM_out2),
        .clk(clk_0_1),
        .freeze(xlconstant_0_dout),
        .rst(rst_0_1));
  design_1_debouncer_0_0 debouncer_0
       (.CLK_I(clk_0_1),
        .SIGNAL_I(rst_0_2),
        .SIGNAL_O(rst_0_1));
  design_1_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(MEM_stage_reg_0_MEM_out1),
        .probe1(MEM_stage_reg_0_MEM_out2),
        .probe2(IF_stage_0_instruction),
        .probe3(IF_Stage_pcpipe_0),
        .probe4(IF_stage_0_pc),
        .probe5(rst_0_1));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
