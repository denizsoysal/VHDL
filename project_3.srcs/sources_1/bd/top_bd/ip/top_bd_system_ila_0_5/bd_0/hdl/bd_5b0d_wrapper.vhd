--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_5b0d_wrapper.bd
--Design : bd_5b0d_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_5b0d_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 64 downto 0 )
  );
end bd_5b0d_wrapper;

architecture STRUCTURE of bd_5b0d_wrapper is
  component bd_5b0d is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe10 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 64 downto 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_5b0d;
begin
bd_5b0d_i: component bd_5b0d
     port map (
      clk => clk,
      probe0(0) => probe0(0),
      probe1(0) => probe1(0),
      probe10(64 downto 0) => probe10(64 downto 0),
      probe11(64 downto 0) => probe11(64 downto 0),
      probe12(64 downto 0) => probe12(64 downto 0),
      probe13(64 downto 0) => probe13(64 downto 0),
      probe14(0) => probe14(0),
      probe15(0) => probe15(0),
      probe16(0) => probe16(0),
      probe17(0) => probe17(0),
      probe18(0) => probe18(0),
      probe19(0) => probe19(0),
      probe2(0) => probe2(0),
      probe20(0) => probe20(0),
      probe21(0) => probe21(0),
      probe22(0) => probe22(0),
      probe23(0) => probe23(0),
      probe24(0) => probe24(0),
      probe25(64 downto 0) => probe25(64 downto 0),
      probe26(0) => probe26(0),
      probe27(0) => probe27(0),
      probe3(0) => probe3(0),
      probe4(0) => probe4(0),
      probe5(0) => probe5(0),
      probe6(64 downto 0) => probe6(64 downto 0),
      probe7(64 downto 0) => probe7(64 downto 0),
      probe8(64 downto 0) => probe8(64 downto 0),
      probe9(64 downto 0) => probe9(64 downto 0)
    );
end STRUCTURE;
