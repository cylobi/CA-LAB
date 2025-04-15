-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 15 14:15:08 2025
-- Host        : parsa running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ID_stage_reg_0_0_sim_netlist.vhdl
-- Design      : design_1_ID_stage_reg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register is
  port (
    ID_out1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_out2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_in1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ID_in2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register is
begin
\out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(0),
      Q => ID_out1(0)
    );
\out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(10),
      Q => ID_out1(10)
    );
\out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(11),
      Q => ID_out1(11)
    );
\out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(12),
      Q => ID_out1(12)
    );
\out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(13),
      Q => ID_out1(13)
    );
\out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(14),
      Q => ID_out1(14)
    );
\out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(15),
      Q => ID_out1(15)
    );
\out1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(16),
      Q => ID_out1(16)
    );
\out1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(17),
      Q => ID_out1(17)
    );
\out1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(18),
      Q => ID_out1(18)
    );
\out1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(19),
      Q => ID_out1(19)
    );
\out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(1),
      Q => ID_out1(1)
    );
\out1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(20),
      Q => ID_out1(20)
    );
\out1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(21),
      Q => ID_out1(21)
    );
\out1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(22),
      Q => ID_out1(22)
    );
\out1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(23),
      Q => ID_out1(23)
    );
\out1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(24),
      Q => ID_out1(24)
    );
\out1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(25),
      Q => ID_out1(25)
    );
\out1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(26),
      Q => ID_out1(26)
    );
\out1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(27),
      Q => ID_out1(27)
    );
\out1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(28),
      Q => ID_out1(28)
    );
\out1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(29),
      Q => ID_out1(29)
    );
\out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(2),
      Q => ID_out1(2)
    );
\out1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(30),
      Q => ID_out1(30)
    );
\out1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(31),
      Q => ID_out1(31)
    );
\out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(3),
      Q => ID_out1(3)
    );
\out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(4),
      Q => ID_out1(4)
    );
\out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(5),
      Q => ID_out1(5)
    );
\out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(6),
      Q => ID_out1(6)
    );
\out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(7),
      Q => ID_out1(7)
    );
\out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(8),
      Q => ID_out1(8)
    );
\out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in1(9),
      Q => ID_out1(9)
    );
\out2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(0),
      Q => ID_out2(0)
    );
\out2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(10),
      Q => ID_out2(10)
    );
\out2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(11),
      Q => ID_out2(11)
    );
\out2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(12),
      Q => ID_out2(12)
    );
\out2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(13),
      Q => ID_out2(13)
    );
\out2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(14),
      Q => ID_out2(14)
    );
\out2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(15),
      Q => ID_out2(15)
    );
\out2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(16),
      Q => ID_out2(16)
    );
\out2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(17),
      Q => ID_out2(17)
    );
\out2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(18),
      Q => ID_out2(18)
    );
\out2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(19),
      Q => ID_out2(19)
    );
\out2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(1),
      Q => ID_out2(1)
    );
\out2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(20),
      Q => ID_out2(20)
    );
\out2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(21),
      Q => ID_out2(21)
    );
\out2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(22),
      Q => ID_out2(22)
    );
\out2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(23),
      Q => ID_out2(23)
    );
\out2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(24),
      Q => ID_out2(24)
    );
\out2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(25),
      Q => ID_out2(25)
    );
\out2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(26),
      Q => ID_out2(26)
    );
\out2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(27),
      Q => ID_out2(27)
    );
\out2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(28),
      Q => ID_out2(28)
    );
\out2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(29),
      Q => ID_out2(29)
    );
\out2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(2),
      Q => ID_out2(2)
    );
\out2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(30),
      Q => ID_out2(30)
    );
\out2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(31),
      Q => ID_out2(31)
    );
\out2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(3),
      Q => ID_out2(3)
    );
\out2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(4),
      Q => ID_out2(4)
    );
\out2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(5),
      Q => ID_out2(5)
    );
\out2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(6),
      Q => ID_out2(6)
    );
\out2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(7),
      Q => ID_out2(7)
    );
\out2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(8),
      Q => ID_out2(8)
    );
\out2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ID_in2(9),
      Q => ID_out2(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ID_stage_reg is
  port (
    ID_out1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_out2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_in1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ID_in2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ID_stage_reg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ID_stage_reg is
begin
IDReg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register
     port map (
      ID_in1(31 downto 0) => ID_in1(31 downto 0),
      ID_in2(31 downto 0) => ID_in2(31 downto 0),
      ID_out1(31 downto 0) => ID_out1(31 downto 0),
      ID_out2(31 downto 0) => ID_out2(31 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ID_in1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_in2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_out1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ID_out2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ID_stage_reg_0_0,ID_stage_reg,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ID_stage_reg,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ID_stage_reg
     port map (
      ID_in1(31 downto 0) => ID_in1(31 downto 0),
      ID_in2(31 downto 0) => ID_in2(31 downto 0),
      ID_out1(31 downto 0) => ID_out1(31 downto 0),
      ID_out2(31 downto 0) => ID_out2(31 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
