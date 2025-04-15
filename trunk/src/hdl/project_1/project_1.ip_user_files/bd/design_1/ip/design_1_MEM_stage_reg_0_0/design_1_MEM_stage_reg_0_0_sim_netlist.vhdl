-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  8 15:00:13 2025
-- Host        : parsa running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_MEM_stage_reg_0_0/design_1_MEM_stage_reg_0_0_sim_netlist.vhdl
-- Design      : design_1_MEM_stage_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MEM_stage_reg_0_0_Register is
  port (
    MEM_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    MEM_out2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    MEM_in1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    MEM_in2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MEM_stage_reg_0_0_Register : entity is "Register";
end design_1_MEM_stage_reg_0_0_Register;

architecture STRUCTURE of design_1_MEM_stage_reg_0_0_Register is
  signal \out1[0]_i_1_n_0\ : STD_LOGIC;
begin
\out1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freeze,
      O => \out1[0]_i_1_n_0\
    );
\out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[0]_i_1_n_0\,
      CLR => rst,
      D => MEM_in1(0),
      Q => MEM_out1(0)
    );
\out2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[0]_i_1_n_0\,
      CLR => rst,
      D => MEM_in2(0),
      Q => MEM_out2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MEM_stage_reg_0_0_MEM_stage_reg is
  port (
    MEM_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    MEM_out2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    MEM_in1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    MEM_in2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MEM_stage_reg_0_0_MEM_stage_reg : entity is "MEM_stage_reg";
end design_1_MEM_stage_reg_0_0_MEM_stage_reg;

architecture STRUCTURE of design_1_MEM_stage_reg_0_0_MEM_stage_reg is
begin
EXEReg: entity work.design_1_MEM_stage_reg_0_0_Register
     port map (
      MEM_in1(0) => MEM_in1(0),
      MEM_in2(0) => MEM_in2(0),
      MEM_out1(0) => MEM_out1(0),
      MEM_out2(0) => MEM_out2(0),
      clk => clk,
      freeze => freeze,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MEM_stage_reg_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC;
    MEM_in1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_in2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_out1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_out2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MEM_stage_reg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MEM_stage_reg_0_0 : entity is "design_1_MEM_stage_reg_0_0,MEM_stage_reg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MEM_stage_reg_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_MEM_stage_reg_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_MEM_stage_reg_0_0 : entity is "MEM_stage_reg,Vivado 2018.3";
end design_1_MEM_stage_reg_0_0;

architecture STRUCTURE of design_1_MEM_stage_reg_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^mem_out1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mem_out2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  MEM_out1(31) <= \<const0>\;
  MEM_out1(30) <= \<const0>\;
  MEM_out1(29) <= \<const0>\;
  MEM_out1(28) <= \<const0>\;
  MEM_out1(27) <= \<const0>\;
  MEM_out1(26) <= \<const0>\;
  MEM_out1(25) <= \<const0>\;
  MEM_out1(24) <= \<const0>\;
  MEM_out1(23) <= \<const0>\;
  MEM_out1(22) <= \<const0>\;
  MEM_out1(21) <= \<const0>\;
  MEM_out1(20) <= \<const0>\;
  MEM_out1(19) <= \<const0>\;
  MEM_out1(18) <= \<const0>\;
  MEM_out1(17) <= \<const0>\;
  MEM_out1(16) <= \<const0>\;
  MEM_out1(15) <= \<const0>\;
  MEM_out1(14) <= \<const0>\;
  MEM_out1(13) <= \<const0>\;
  MEM_out1(12) <= \<const0>\;
  MEM_out1(11) <= \<const0>\;
  MEM_out1(10) <= \<const0>\;
  MEM_out1(9) <= \<const0>\;
  MEM_out1(8) <= \<const0>\;
  MEM_out1(7) <= \<const0>\;
  MEM_out1(6) <= \<const0>\;
  MEM_out1(5) <= \<const0>\;
  MEM_out1(4) <= \<const0>\;
  MEM_out1(3) <= \<const0>\;
  MEM_out1(2) <= \<const0>\;
  MEM_out1(1) <= \<const0>\;
  MEM_out1(0) <= \^mem_out1\(0);
  MEM_out2(31) <= \<const0>\;
  MEM_out2(30) <= \<const0>\;
  MEM_out2(29) <= \<const0>\;
  MEM_out2(28) <= \<const0>\;
  MEM_out2(27) <= \<const0>\;
  MEM_out2(26) <= \<const0>\;
  MEM_out2(25) <= \<const0>\;
  MEM_out2(24) <= \<const0>\;
  MEM_out2(23) <= \<const0>\;
  MEM_out2(22) <= \<const0>\;
  MEM_out2(21) <= \<const0>\;
  MEM_out2(20) <= \<const0>\;
  MEM_out2(19) <= \<const0>\;
  MEM_out2(18) <= \<const0>\;
  MEM_out2(17) <= \<const0>\;
  MEM_out2(16) <= \<const0>\;
  MEM_out2(15) <= \<const0>\;
  MEM_out2(14) <= \<const0>\;
  MEM_out2(13) <= \<const0>\;
  MEM_out2(12) <= \<const0>\;
  MEM_out2(11) <= \<const0>\;
  MEM_out2(10) <= \<const0>\;
  MEM_out2(9) <= \<const0>\;
  MEM_out2(8) <= \<const0>\;
  MEM_out2(7) <= \<const0>\;
  MEM_out2(6) <= \<const0>\;
  MEM_out2(5) <= \<const0>\;
  MEM_out2(4) <= \<const0>\;
  MEM_out2(3) <= \<const0>\;
  MEM_out2(2) <= \<const0>\;
  MEM_out2(1) <= \<const0>\;
  MEM_out2(0) <= \^mem_out2\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_MEM_stage_reg_0_0_MEM_stage_reg
     port map (
      MEM_in1(0) => MEM_in1(0),
      MEM_in2(0) => MEM_in2(0),
      MEM_out1(0) => \^mem_out1\(0),
      MEM_out2(0) => \^mem_out2\(0),
      clk => clk,
      freeze => freeze,
      rst => rst
    );
end STRUCTURE;
