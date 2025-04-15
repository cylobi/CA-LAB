-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr  8 15:00:37 2025
-- Host        : parsa running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_IF_stage_reg_0_8/design_1_IF_stage_reg_0_8_sim_netlist.vhdl
-- Design      : design_1_IF_stage_reg_0_8
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_reg_0_8_Register is
  port (
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    instructionin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IF_stage_reg_0_8_Register : entity is "Register";
end design_1_IF_stage_reg_0_8_Register;

architecture STRUCTURE of design_1_IF_stage_reg_0_8_Register is
  signal \out1[31]_i_1_n_0\ : STD_LOGIC;
begin
\out1[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freeze,
      O => \out1[31]_i_1_n_0\
    );
\out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(0),
      Q => pc(0)
    );
\out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(10),
      Q => pc(10)
    );
\out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(11),
      Q => pc(11)
    );
\out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(12),
      Q => pc(12)
    );
\out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(13),
      Q => pc(13)
    );
\out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(14),
      Q => pc(14)
    );
\out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(15),
      Q => pc(15)
    );
\out1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(16),
      Q => pc(16)
    );
\out1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(17),
      Q => pc(17)
    );
\out1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(18),
      Q => pc(18)
    );
\out1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(19),
      Q => pc(19)
    );
\out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(1),
      Q => pc(1)
    );
\out1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(20),
      Q => pc(20)
    );
\out1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(21),
      Q => pc(21)
    );
\out1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(22),
      Q => pc(22)
    );
\out1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(23),
      Q => pc(23)
    );
\out1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(24),
      Q => pc(24)
    );
\out1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(25),
      Q => pc(25)
    );
\out1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(26),
      Q => pc(26)
    );
\out1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(27),
      Q => pc(27)
    );
\out1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(28),
      Q => pc(28)
    );
\out1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(29),
      Q => pc(29)
    );
\out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(2),
      Q => pc(2)
    );
\out1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(30),
      Q => pc(30)
    );
\out1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(31),
      Q => pc(31)
    );
\out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(3),
      Q => pc(3)
    );
\out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(4),
      Q => pc(4)
    );
\out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(5),
      Q => pc(5)
    );
\out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(6),
      Q => pc(6)
    );
\out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(7),
      Q => pc(7)
    );
\out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(8),
      Q => pc(8)
    );
\out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => pcin(9),
      Q => pc(9)
    );
\out2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(0),
      Q => instruction(0)
    );
\out2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(10),
      Q => instruction(10)
    );
\out2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(11),
      Q => instruction(11)
    );
\out2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(12),
      Q => instruction(12)
    );
\out2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(13),
      Q => instruction(13)
    );
\out2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(14),
      Q => instruction(14)
    );
\out2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(15),
      Q => instruction(15)
    );
\out2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(16),
      Q => instruction(16)
    );
\out2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(17),
      Q => instruction(17)
    );
\out2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(18),
      Q => instruction(18)
    );
\out2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(19),
      Q => instruction(19)
    );
\out2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(1),
      Q => instruction(1)
    );
\out2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(20),
      Q => instruction(20)
    );
\out2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(21),
      Q => instruction(21)
    );
\out2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(22),
      Q => instruction(22)
    );
\out2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(23),
      Q => instruction(23)
    );
\out2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(24),
      Q => instruction(24)
    );
\out2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(25),
      Q => instruction(25)
    );
\out2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(26),
      Q => instruction(26)
    );
\out2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(27),
      Q => instruction(27)
    );
\out2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(28),
      Q => instruction(28)
    );
\out2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(29),
      Q => instruction(29)
    );
\out2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(2),
      Q => instruction(2)
    );
\out2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(30),
      Q => instruction(30)
    );
\out2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(31),
      Q => instruction(31)
    );
\out2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(3),
      Q => instruction(3)
    );
\out2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(4),
      Q => instruction(4)
    );
\out2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(5),
      Q => instruction(5)
    );
\out2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(6),
      Q => instruction(6)
    );
\out2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(7),
      Q => instruction(7)
    );
\out2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(8),
      Q => instruction(8)
    );
\out2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => instructionin(9),
      Q => instruction(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_reg_0_8_IF_stage_reg is
  port (
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    instructionin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IF_stage_reg_0_8_IF_stage_reg : entity is "IF_stage_reg";
end design_1_IF_stage_reg_0_8_IF_stage_reg;

architecture STRUCTURE of design_1_IF_stage_reg_0_8_IF_stage_reg is
begin
IFReg: entity work.design_1_IF_stage_reg_0_8_Register
     port map (
      clk => clk,
      freeze => freeze,
      instruction(31 downto 0) => instruction(31 downto 0),
      instructionin(31 downto 0) => instructionin(31 downto 0),
      pc(31 downto 0) => pc(31 downto 0),
      pcin(31 downto 0) => pcin(31 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_reg_0_8 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC;
    branchAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instructionin : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_IF_stage_reg_0_8 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_IF_stage_reg_0_8 : entity is "design_1_IF_stage_reg_0_8,IF_stage_reg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_IF_stage_reg_0_8 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_IF_stage_reg_0_8 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_IF_stage_reg_0_8 : entity is "IF_stage_reg,Vivado 2018.3";
end design_1_IF_stage_reg_0_8;

architecture STRUCTURE of design_1_IF_stage_reg_0_8 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_IF_stage_reg_0_8_IF_stage_reg
     port map (
      clk => clk,
      freeze => freeze,
      instruction(31 downto 0) => instruction(31 downto 0),
      instructionin(31 downto 0) => instructionin(31 downto 0),
      pc(31 downto 0) => pc(31 downto 0),
      pcin(31 downto 0) => pcin(31 downto 0),
      rst => rst
    );
end STRUCTURE;
