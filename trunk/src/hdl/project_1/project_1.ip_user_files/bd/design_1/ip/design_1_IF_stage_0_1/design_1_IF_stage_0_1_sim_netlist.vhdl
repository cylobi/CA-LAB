-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 15 13:39:38 2025
-- Host        : parsa running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/univrsity/CAlab/CA-LAB/trunk/src/hdl/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_IF_stage_0_1/design_1_IF_stage_0_1_sim_netlist.vhdl
-- Design      : design_1_IF_stage_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_0_1_Adder is
  port (
    pcpipe : out STD_LOGIC_VECTOR ( 30 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IF_stage_0_1_Adder : entity is "Adder";
end design_1_IF_stage_0_1_Adder;

architecture STRUCTURE of design_1_IF_stage_0_1_Adder is
  signal \out_carry__0_n_0\ : STD_LOGIC;
  signal \out_carry__0_n_1\ : STD_LOGIC;
  signal \out_carry__0_n_2\ : STD_LOGIC;
  signal \out_carry__0_n_3\ : STD_LOGIC;
  signal \out_carry__1_n_0\ : STD_LOGIC;
  signal \out_carry__1_n_1\ : STD_LOGIC;
  signal \out_carry__1_n_2\ : STD_LOGIC;
  signal \out_carry__1_n_3\ : STD_LOGIC;
  signal \out_carry__2_n_0\ : STD_LOGIC;
  signal \out_carry__2_n_1\ : STD_LOGIC;
  signal \out_carry__2_n_2\ : STD_LOGIC;
  signal \out_carry__2_n_3\ : STD_LOGIC;
  signal \out_carry__3_n_0\ : STD_LOGIC;
  signal \out_carry__3_n_1\ : STD_LOGIC;
  signal \out_carry__3_n_2\ : STD_LOGIC;
  signal \out_carry__3_n_3\ : STD_LOGIC;
  signal \out_carry__4_n_0\ : STD_LOGIC;
  signal \out_carry__4_n_1\ : STD_LOGIC;
  signal \out_carry__4_n_2\ : STD_LOGIC;
  signal \out_carry__4_n_3\ : STD_LOGIC;
  signal \out_carry__5_n_0\ : STD_LOGIC;
  signal \out_carry__5_n_1\ : STD_LOGIC;
  signal \out_carry__5_n_2\ : STD_LOGIC;
  signal \out_carry__5_n_3\ : STD_LOGIC;
  signal \out_carry__6_n_2\ : STD_LOGIC;
  signal \out_carry__6_n_3\ : STD_LOGIC;
  signal out_carry_n_0 : STD_LOGIC;
  signal out_carry_n_1 : STD_LOGIC;
  signal out_carry_n_2 : STD_LOGIC;
  signal out_carry_n_3 : STD_LOGIC;
  signal \NLW_out_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_out_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => out_carry_n_0,
      CO(2) => out_carry_n_1,
      CO(1) => out_carry_n_2,
      CO(0) => out_carry_n_3,
      CYINIT => pc(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(3 downto 0),
      S(3 downto 0) => pc(4 downto 1)
    );
\out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => out_carry_n_0,
      CO(3) => \out_carry__0_n_0\,
      CO(2) => \out_carry__0_n_1\,
      CO(1) => \out_carry__0_n_2\,
      CO(0) => \out_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(7 downto 4),
      S(3 downto 0) => pc(8 downto 5)
    );
\out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__0_n_0\,
      CO(3) => \out_carry__1_n_0\,
      CO(2) => \out_carry__1_n_1\,
      CO(1) => \out_carry__1_n_2\,
      CO(0) => \out_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(11 downto 8),
      S(3 downto 0) => pc(12 downto 9)
    );
\out_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__1_n_0\,
      CO(3) => \out_carry__2_n_0\,
      CO(2) => \out_carry__2_n_1\,
      CO(1) => \out_carry__2_n_2\,
      CO(0) => \out_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(15 downto 12),
      S(3 downto 0) => pc(16 downto 13)
    );
\out_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__2_n_0\,
      CO(3) => \out_carry__3_n_0\,
      CO(2) => \out_carry__3_n_1\,
      CO(1) => \out_carry__3_n_2\,
      CO(0) => \out_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(19 downto 16),
      S(3 downto 0) => pc(20 downto 17)
    );
\out_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__3_n_0\,
      CO(3) => \out_carry__4_n_0\,
      CO(2) => \out_carry__4_n_1\,
      CO(1) => \out_carry__4_n_2\,
      CO(0) => \out_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(23 downto 20),
      S(3 downto 0) => pc(24 downto 21)
    );
\out_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__4_n_0\,
      CO(3) => \out_carry__5_n_0\,
      CO(2) => \out_carry__5_n_1\,
      CO(1) => \out_carry__5_n_2\,
      CO(0) => \out_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pcpipe(27 downto 24),
      S(3 downto 0) => pc(28 downto 25)
    );
\out_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_carry__5_n_0\,
      CO(3 downto 2) => \NLW_out_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \out_carry__6_n_2\,
      CO(0) => \out_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_out_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => pcpipe(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => pc(31 downto 29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_0_1_Register is
  port (
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpipe : out STD_LOGIC_VECTOR ( 0 to 0 );
    branchAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branchTaken : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IF_stage_0_1_Register : entity is "Register";
end design_1_IF_stage_0_1_Register;

architecture STRUCTURE of design_1_IF_stage_0_1_Register is
  signal \out1[11]_i_2_n_0\ : STD_LOGIC;
  signal \out1[11]_i_3_n_0\ : STD_LOGIC;
  signal \out1[11]_i_4_n_0\ : STD_LOGIC;
  signal \out1[11]_i_5_n_0\ : STD_LOGIC;
  signal \out1[15]_i_2_n_0\ : STD_LOGIC;
  signal \out1[15]_i_3_n_0\ : STD_LOGIC;
  signal \out1[15]_i_4_n_0\ : STD_LOGIC;
  signal \out1[15]_i_5_n_0\ : STD_LOGIC;
  signal \out1[19]_i_2_n_0\ : STD_LOGIC;
  signal \out1[19]_i_3_n_0\ : STD_LOGIC;
  signal \out1[19]_i_4_n_0\ : STD_LOGIC;
  signal \out1[19]_i_5_n_0\ : STD_LOGIC;
  signal \out1[23]_i_2_n_0\ : STD_LOGIC;
  signal \out1[23]_i_3_n_0\ : STD_LOGIC;
  signal \out1[23]_i_4_n_0\ : STD_LOGIC;
  signal \out1[23]_i_5_n_0\ : STD_LOGIC;
  signal \out1[27]_i_2_n_0\ : STD_LOGIC;
  signal \out1[27]_i_3_n_0\ : STD_LOGIC;
  signal \out1[27]_i_4_n_0\ : STD_LOGIC;
  signal \out1[27]_i_5_n_0\ : STD_LOGIC;
  signal \out1[31]_i_1_n_0\ : STD_LOGIC;
  signal \out1[31]_i_3_n_0\ : STD_LOGIC;
  signal \out1[31]_i_4_n_0\ : STD_LOGIC;
  signal \out1[31]_i_5_n_0\ : STD_LOGIC;
  signal \out1[31]_i_6_n_0\ : STD_LOGIC;
  signal \out1[3]_i_2_n_0\ : STD_LOGIC;
  signal \out1[3]_i_3_n_0\ : STD_LOGIC;
  signal \out1[3]_i_4_n_0\ : STD_LOGIC;
  signal \out1[3]_i_5_n_0\ : STD_LOGIC;
  signal \out1[3]_i_6_n_0\ : STD_LOGIC;
  signal \out1[7]_i_2_n_0\ : STD_LOGIC;
  signal \out1[7]_i_3_n_0\ : STD_LOGIC;
  signal \out1[7]_i_4_n_0\ : STD_LOGIC;
  signal \out1[7]_i_5_n_0\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \out1_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \out1_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^pc\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_out1_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  pc(31 downto 0) <= \^pc\(31 downto 0);
\out1[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(11),
      I1 => branchTaken,
      I2 => \^pc\(11),
      O => \out1[11]_i_2_n_0\
    );
\out1[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(10),
      I1 => branchTaken,
      I2 => \^pc\(10),
      O => \out1[11]_i_3_n_0\
    );
\out1[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(9),
      I1 => branchTaken,
      I2 => \^pc\(9),
      O => \out1[11]_i_4_n_0\
    );
\out1[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(8),
      I1 => branchTaken,
      I2 => \^pc\(8),
      O => \out1[11]_i_5_n_0\
    );
\out1[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(15),
      I1 => branchTaken,
      I2 => \^pc\(15),
      O => \out1[15]_i_2_n_0\
    );
\out1[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(14),
      I1 => branchTaken,
      I2 => \^pc\(14),
      O => \out1[15]_i_3_n_0\
    );
\out1[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(13),
      I1 => branchTaken,
      I2 => \^pc\(13),
      O => \out1[15]_i_4_n_0\
    );
\out1[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(12),
      I1 => branchTaken,
      I2 => \^pc\(12),
      O => \out1[15]_i_5_n_0\
    );
\out1[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(19),
      I1 => branchTaken,
      I2 => \^pc\(19),
      O => \out1[19]_i_2_n_0\
    );
\out1[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(18),
      I1 => branchTaken,
      I2 => \^pc\(18),
      O => \out1[19]_i_3_n_0\
    );
\out1[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(17),
      I1 => branchTaken,
      I2 => \^pc\(17),
      O => \out1[19]_i_4_n_0\
    );
\out1[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(16),
      I1 => branchTaken,
      I2 => \^pc\(16),
      O => \out1[19]_i_5_n_0\
    );
\out1[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(23),
      I1 => branchTaken,
      I2 => \^pc\(23),
      O => \out1[23]_i_2_n_0\
    );
\out1[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(22),
      I1 => branchTaken,
      I2 => \^pc\(22),
      O => \out1[23]_i_3_n_0\
    );
\out1[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(21),
      I1 => branchTaken,
      I2 => \^pc\(21),
      O => \out1[23]_i_4_n_0\
    );
\out1[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(20),
      I1 => branchTaken,
      I2 => \^pc\(20),
      O => \out1[23]_i_5_n_0\
    );
\out1[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(27),
      I1 => branchTaken,
      I2 => \^pc\(27),
      O => \out1[27]_i_2_n_0\
    );
\out1[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(26),
      I1 => branchTaken,
      I2 => \^pc\(26),
      O => \out1[27]_i_3_n_0\
    );
\out1[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(25),
      I1 => branchTaken,
      I2 => \^pc\(25),
      O => \out1[27]_i_4_n_0\
    );
\out1[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(24),
      I1 => branchTaken,
      I2 => \^pc\(24),
      O => \out1[27]_i_5_n_0\
    );
\out1[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => freeze,
      O => \out1[31]_i_1_n_0\
    );
\out1[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(31),
      I1 => branchTaken,
      I2 => \^pc\(31),
      O => \out1[31]_i_3_n_0\
    );
\out1[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(30),
      I1 => branchTaken,
      I2 => \^pc\(30),
      O => \out1[31]_i_4_n_0\
    );
\out1[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(29),
      I1 => branchTaken,
      I2 => \^pc\(29),
      O => \out1[31]_i_5_n_0\
    );
\out1[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(28),
      I1 => branchTaken,
      I2 => \^pc\(28),
      O => \out1[31]_i_6_n_0\
    );
\out1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(0),
      I1 => branchTaken,
      I2 => \^pc\(0),
      O => \out1[3]_i_2_n_0\
    );
\out1[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(3),
      I1 => branchTaken,
      I2 => \^pc\(3),
      O => \out1[3]_i_3_n_0\
    );
\out1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(2),
      I1 => branchTaken,
      I2 => \^pc\(2),
      O => \out1[3]_i_4_n_0\
    );
\out1[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(1),
      I1 => branchTaken,
      I2 => \^pc\(1),
      O => \out1[3]_i_5_n_0\
    );
\out1[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^pc\(0),
      I1 => branchAddress(0),
      I2 => branchTaken,
      O => \out1[3]_i_6_n_0\
    );
\out1[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(7),
      I1 => branchTaken,
      I2 => \^pc\(7),
      O => \out1[7]_i_2_n_0\
    );
\out1[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(6),
      I1 => branchTaken,
      I2 => \^pc\(6),
      O => \out1[7]_i_3_n_0\
    );
\out1[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(5),
      I1 => branchTaken,
      I2 => \^pc\(5),
      O => \out1[7]_i_4_n_0\
    );
\out1[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => branchAddress(4),
      I1 => branchTaken,
      I2 => \^pc\(4),
      O => \out1[7]_i_5_n_0\
    );
\out1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[3]_i_1_n_7\,
      Q => \^pc\(0)
    );
\out1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[11]_i_1_n_5\,
      Q => \^pc\(10)
    );
\out1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[11]_i_1_n_4\,
      Q => \^pc\(11)
    );
\out1_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[7]_i_1_n_0\,
      CO(3) => \out1_reg[11]_i_1_n_0\,
      CO(2) => \out1_reg[11]_i_1_n_1\,
      CO(1) => \out1_reg[11]_i_1_n_2\,
      CO(0) => \out1_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[11]_i_1_n_4\,
      O(2) => \out1_reg[11]_i_1_n_5\,
      O(1) => \out1_reg[11]_i_1_n_6\,
      O(0) => \out1_reg[11]_i_1_n_7\,
      S(3) => \out1[11]_i_2_n_0\,
      S(2) => \out1[11]_i_3_n_0\,
      S(1) => \out1[11]_i_4_n_0\,
      S(0) => \out1[11]_i_5_n_0\
    );
\out1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[15]_i_1_n_7\,
      Q => \^pc\(12)
    );
\out1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[15]_i_1_n_6\,
      Q => \^pc\(13)
    );
\out1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[15]_i_1_n_5\,
      Q => \^pc\(14)
    );
\out1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[15]_i_1_n_4\,
      Q => \^pc\(15)
    );
\out1_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[11]_i_1_n_0\,
      CO(3) => \out1_reg[15]_i_1_n_0\,
      CO(2) => \out1_reg[15]_i_1_n_1\,
      CO(1) => \out1_reg[15]_i_1_n_2\,
      CO(0) => \out1_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[15]_i_1_n_4\,
      O(2) => \out1_reg[15]_i_1_n_5\,
      O(1) => \out1_reg[15]_i_1_n_6\,
      O(0) => \out1_reg[15]_i_1_n_7\,
      S(3) => \out1[15]_i_2_n_0\,
      S(2) => \out1[15]_i_3_n_0\,
      S(1) => \out1[15]_i_4_n_0\,
      S(0) => \out1[15]_i_5_n_0\
    );
\out1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[19]_i_1_n_7\,
      Q => \^pc\(16)
    );
\out1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[19]_i_1_n_6\,
      Q => \^pc\(17)
    );
\out1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[19]_i_1_n_5\,
      Q => \^pc\(18)
    );
\out1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[19]_i_1_n_4\,
      Q => \^pc\(19)
    );
\out1_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[15]_i_1_n_0\,
      CO(3) => \out1_reg[19]_i_1_n_0\,
      CO(2) => \out1_reg[19]_i_1_n_1\,
      CO(1) => \out1_reg[19]_i_1_n_2\,
      CO(0) => \out1_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[19]_i_1_n_4\,
      O(2) => \out1_reg[19]_i_1_n_5\,
      O(1) => \out1_reg[19]_i_1_n_6\,
      O(0) => \out1_reg[19]_i_1_n_7\,
      S(3) => \out1[19]_i_2_n_0\,
      S(2) => \out1[19]_i_3_n_0\,
      S(1) => \out1[19]_i_4_n_0\,
      S(0) => \out1[19]_i_5_n_0\
    );
\out1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[3]_i_1_n_6\,
      Q => \^pc\(1)
    );
\out1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[23]_i_1_n_7\,
      Q => \^pc\(20)
    );
\out1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[23]_i_1_n_6\,
      Q => \^pc\(21)
    );
\out1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[23]_i_1_n_5\,
      Q => \^pc\(22)
    );
\out1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[23]_i_1_n_4\,
      Q => \^pc\(23)
    );
\out1_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[19]_i_1_n_0\,
      CO(3) => \out1_reg[23]_i_1_n_0\,
      CO(2) => \out1_reg[23]_i_1_n_1\,
      CO(1) => \out1_reg[23]_i_1_n_2\,
      CO(0) => \out1_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[23]_i_1_n_4\,
      O(2) => \out1_reg[23]_i_1_n_5\,
      O(1) => \out1_reg[23]_i_1_n_6\,
      O(0) => \out1_reg[23]_i_1_n_7\,
      S(3) => \out1[23]_i_2_n_0\,
      S(2) => \out1[23]_i_3_n_0\,
      S(1) => \out1[23]_i_4_n_0\,
      S(0) => \out1[23]_i_5_n_0\
    );
\out1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[27]_i_1_n_7\,
      Q => \^pc\(24)
    );
\out1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[27]_i_1_n_6\,
      Q => \^pc\(25)
    );
\out1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[27]_i_1_n_5\,
      Q => \^pc\(26)
    );
\out1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[27]_i_1_n_4\,
      Q => \^pc\(27)
    );
\out1_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[23]_i_1_n_0\,
      CO(3) => \out1_reg[27]_i_1_n_0\,
      CO(2) => \out1_reg[27]_i_1_n_1\,
      CO(1) => \out1_reg[27]_i_1_n_2\,
      CO(0) => \out1_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[27]_i_1_n_4\,
      O(2) => \out1_reg[27]_i_1_n_5\,
      O(1) => \out1_reg[27]_i_1_n_6\,
      O(0) => \out1_reg[27]_i_1_n_7\,
      S(3) => \out1[27]_i_2_n_0\,
      S(2) => \out1[27]_i_3_n_0\,
      S(1) => \out1[27]_i_4_n_0\,
      S(0) => \out1[27]_i_5_n_0\
    );
\out1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[31]_i_2_n_7\,
      Q => \^pc\(28)
    );
\out1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[31]_i_2_n_6\,
      Q => \^pc\(29)
    );
\out1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[3]_i_1_n_5\,
      Q => \^pc\(2)
    );
\out1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[31]_i_2_n_5\,
      Q => \^pc\(30)
    );
\out1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[31]_i_2_n_4\,
      Q => \^pc\(31)
    );
\out1_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[27]_i_1_n_0\,
      CO(3) => \NLW_out1_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \out1_reg[31]_i_2_n_1\,
      CO(1) => \out1_reg[31]_i_2_n_2\,
      CO(0) => \out1_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[31]_i_2_n_4\,
      O(2) => \out1_reg[31]_i_2_n_5\,
      O(1) => \out1_reg[31]_i_2_n_6\,
      O(0) => \out1_reg[31]_i_2_n_7\,
      S(3) => \out1[31]_i_3_n_0\,
      S(2) => \out1[31]_i_4_n_0\,
      S(1) => \out1[31]_i_5_n_0\,
      S(0) => \out1[31]_i_6_n_0\
    );
\out1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[3]_i_1_n_4\,
      Q => \^pc\(3)
    );
\out1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out1_reg[3]_i_1_n_0\,
      CO(2) => \out1_reg[3]_i_1_n_1\,
      CO(1) => \out1_reg[3]_i_1_n_2\,
      CO(0) => \out1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \out1[3]_i_2_n_0\,
      O(3) => \out1_reg[3]_i_1_n_4\,
      O(2) => \out1_reg[3]_i_1_n_5\,
      O(1) => \out1_reg[3]_i_1_n_6\,
      O(0) => \out1_reg[3]_i_1_n_7\,
      S(3) => \out1[3]_i_3_n_0\,
      S(2) => \out1[3]_i_4_n_0\,
      S(1) => \out1[3]_i_5_n_0\,
      S(0) => \out1[3]_i_6_n_0\
    );
\out1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[7]_i_1_n_7\,
      Q => \^pc\(4)
    );
\out1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[7]_i_1_n_6\,
      Q => \^pc\(5)
    );
\out1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[7]_i_1_n_5\,
      Q => \^pc\(6)
    );
\out1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[7]_i_1_n_4\,
      Q => \^pc\(7)
    );
\out1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out1_reg[3]_i_1_n_0\,
      CO(3) => \out1_reg[7]_i_1_n_0\,
      CO(2) => \out1_reg[7]_i_1_n_1\,
      CO(1) => \out1_reg[7]_i_1_n_2\,
      CO(0) => \out1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \out1_reg[7]_i_1_n_4\,
      O(2) => \out1_reg[7]_i_1_n_5\,
      O(1) => \out1_reg[7]_i_1_n_6\,
      O(0) => \out1_reg[7]_i_1_n_7\,
      S(3) => \out1[7]_i_2_n_0\,
      S(2) => \out1[7]_i_3_n_0\,
      S(1) => \out1[7]_i_4_n_0\,
      S(0) => \out1[7]_i_5_n_0\
    );
\out1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[11]_i_1_n_7\,
      Q => \^pc\(8)
    );
\out1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \out1[31]_i_1_n_0\,
      CLR => rst,
      D => \out1_reg[11]_i_1_n_6\,
      Q => \^pc\(9)
    );
\pcpipe[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc\(0),
      O => pcpipe(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_0_1_IF_stage is
  port (
    pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcpipe : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branchAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branchTaken : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    freeze : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IF_stage_0_1_IF_stage : entity is "IF_stage";
end design_1_IF_stage_0_1_IF_stage;

architecture STRUCTURE of design_1_IF_stage_0_1_IF_stage is
  signal \^pc\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  pc(31 downto 0) <= \^pc\(31 downto 0);
PCAdder: entity work.design_1_IF_stage_0_1_Adder
     port map (
      pc(31 downto 0) => \^pc\(31 downto 0),
      pcpipe(30 downto 0) => pcpipe(31 downto 1)
    );
PCReg: entity work.design_1_IF_stage_0_1_Register
     port map (
      branchAddress(31 downto 0) => branchAddress(31 downto 0),
      branchTaken => branchTaken,
      clk => clk,
      freeze => freeze,
      pc(31 downto 0) => \^pc\(31 downto 0),
      pcpipe(0) => pcpipe(0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IF_stage_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_IF_stage_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_IF_stage_0_1 : entity is "design_1_IF_stage_0_1,IF_stage,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_IF_stage_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_IF_stage_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_IF_stage_0_1 : entity is "IF_stage,Vivado 2018.3";
end design_1_IF_stage_0_1;

architecture STRUCTURE of design_1_IF_stage_0_1 is
  signal \^instructionin\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^instructionin\(31 downto 0) <= instructionin(31 downto 0);
  instruction(31 downto 0) <= \^instructionin\(31 downto 0);
inst: entity work.design_1_IF_stage_0_1_IF_stage
     port map (
      branchAddress(31 downto 0) => branchAddress(31 downto 0),
      branchTaken => branchTaken,
      clk => clk,
      freeze => freeze,
      pc(31 downto 0) => pc(31 downto 0),
      pcpipe(31 downto 0) => pcpipe(31 downto 0),
      rst => rst
    );
end STRUCTURE;
