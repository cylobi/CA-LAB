-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 15 13:39:38 2025
-- Host        : parsa running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_IF_stage_0_1/design_1_IF_stage_0_1_stub.vhdl
-- Design      : design_1_IF_stage_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_IF_stage_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    branchTaken : in STD_LOGIC;
    freeze : in STD_LOGIC;
    instructionin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branchAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpipe : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_IF_stage_0_1;

architecture stub of design_1_IF_stage_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,branchTaken,freeze,instructionin[31:0],branchAddress[31:0],pc[31:0],instruction[31:0],pcpipe[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "IF_stage,Vivado 2018.3";
begin
end;
