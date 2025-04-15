-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  8 15:00:37 2025
-- Host        : parsa running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_IF_stage_reg_0_8/design_1_IF_stage_reg_0_8_stub.vhdl
-- Design      : design_1_IF_stage_reg_0_8
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_IF_stage_reg_0_8 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC;
    branchAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instructionin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_IF_stage_reg_0_8;

architecture stub of design_1_IF_stage_reg_0_8 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,freeze,branchAddress[31:0],pcin[31:0],instructionin[31:0],pc[31:0],instruction[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "IF_stage_reg,Vivado 2018.3";
begin
end;
