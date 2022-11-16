----------------------------------------------------------------------------------
-- Company:         GENITEK
-- Engineer:        Louis Defauw
-- 
-- Project Name:    4620ICTBRD FPGA
-- Target Devices:  
-- Tool Versions:   VIVADO 2020.1
-- SVN info:        $Id: bob.vhd 367 2018-08-03 07:35:19Z ldf@genitek.be $
-- Description:     Clock divider
--                  
-- Dependencies: 
--
----------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rstn"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"s
--      device pins:                            "*_pin"
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


entity clk_div is
    generic(
        C_DIV       : integer range 0 to 255 := 20
    );
    port( 
       -- rstn        : in    std_logic;
        clk_in      : in    std_logic;
        clk_out     : out   std_logic
    );
end clk_div;

architecture Behavioral of clk_div is

signal cnt          : integer range 0 to 255 := 0;
signal clk_out_i    : std_logic := '0';

begin
process(clk_in)
begin
    if rising_edge(clk_in) then
--        if rstn = '0' then
--            cnt <= 0;
--            clk_out_i <= '0';
        --else
            if cnt = C_DIV -1  then
                cnt <= 0;
                clk_out_i <= not clk_out_i;
            else
                cnt <= cnt + 1;
                clk_out_i <= clk_out_i;
            end if;
        end if;
   -- end if;
end process;
clk_out <= clk_out_i;

end Behavioral;
