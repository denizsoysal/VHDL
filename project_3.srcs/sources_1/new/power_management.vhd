----------------------------------------------------------------------------------
-- Company:         GENITEK
-- Engineer:        Deniz
-- 
-- Project Name:    4620ICTBRD FPGA
-- Target Devices:  
-- Tool Versions:   VIVADO 2020.1
-- SVN info:        $Id: bob.vhd 367 2018-08-03 07:35:19Z ldf@genitek.be $
-- Description:     ADC Controller
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
-- IEEE.STD_LOGIC_ARITH.ALL;
--USE IEEE.numeric_std.ALL;


entity power_management is
  generic (
  
  C_LENGTH           : integer range 0 to 255 := 12;
  C_5V_MIN_POWER_ON : std_logic_vector(11 downto 0) := x"BCB"; --the power supply sequence begin when 5V > 4V53
  C_I_VMECPU_MAX     : std_logic_vector(11 downto 0) := x"FFF" --max current drawn : A DEFINIR !!!
  );
  
  Port ( 
  
  rstn            : in std_logic;
  clk             : in std_logic; 
  value_5V : in std_logic_vector(C_LENGTH - 1 downto 0);
  value_I_VMECPU : in std_logic_vector(C_LENGTH - 1 downto 0);
  IOV_VMECPU  : in std_logic; --IOV_VMECPU is '1' when the current drawn by DUT exceed the limit
  
  board_started : out std_logic := '0';
  PG_PWR_5V       : in std_logic;
  EN_PWR_5V : out std_logic; --enable of power of DUT
  start_btnn      : in    std_logic;
  
  testing_bit : out std_logic := '0';
  ready_bit : out std_logic := '0';
  shut_down : out std_logic := '0'
  
 
  
  
  
  );
end power_management;

architecture Behavioral of power_management is

type seq_state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_IDLE,
    S_START_DUT, 
    S_DUT_POWERED,
    S_DUT_POWER_OFF 

    );

signal state            : seq_state_type := S_IDLE;
signal next_state       : seq_state_type := S_IDLE;

signal reg_value_5V     : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');

--signals for debounce of start btnn
signal start_btn        : std_logic_vector(15 downto 0) := (others => '0');
signal start_btn_com    : std_logic := '0';
signal start_btn_com_b0 : std_logic := '0';

begin




-- Start button debounce
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            start_btn <= (others => '0');
        else
            start_btn(0) <= not start_btnn;
            start_btn(start_btn'left downto 1) <= start_btn(start_btn'left-1 downto 0);
        end if;
    end if;
end process;

-- Start button buffer
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            start_btn_com_b0 <= '0';
        else
            if start_btn = (start_btn'range => '1') then
                start_btn_com <= '1';
            else
                start_btn_com <= '0';
            end if;
            start_btn_com_b0 <= start_btn_com;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            state <= S_IDLE;
        else 
            state <= next_state;
        end if;
    end if;
end process;

process (clk)
begin
if rising_edge(clk) then
    if rstn = '0' then
        reg_value_5V <= (others => '0');
    else
        reg_value_5V <= value_5V;
    
    end if;
    
end if;
end process;

process(state, start_btn_com, start_btn_com_b0, value_I_VMECPU, value_5V, IOV_VMECPU, PG_PWR_5V )
begin
    case state is 
        when S_IDLE =>
            if start_btn_com_b0 = '1' and start_btn_com = '0' then
                next_state <= S_START_DUT;
            else
                next_state <= S_IDLE;
            end if;
        when S_START_DUT =>
            if value_5V > C_5V_MIN_POWER_ON and PG_PWR_5V = '1' then
                next_state <= S_DUT_POWERED;
            else
                next_state <= S_START_DUT;
            end if;
        when S_DUT_POWERED =>
            if IOV_VMECPU = '1' then 
                next_state <= S_DUT_POWER_OFF;
            else
                next_state <= S_DUT_POWERED;
            end if;
        when S_DUT_POWER_OFF =>
                next_state <= S_DUT_POWER_OFF; --a reset of the TB is needed to relaunch the tests
        when others => 
                null;
                
        
    end case;
end process;

-- 1) Data output
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            board_started <= '0';
            EN_PWR_5V <= '0'; 
        else
            case state is 
                when S_IDLE =>
                    board_started <= '0';
                    EN_PWR_5V <= '0';
                    ready_bit <= '1';
                    shut_down <= '0';
                when S_START_DUT =>
                    EN_PWR_5V <= '1';
                    ready_bit <= '1';
                    board_started <= '0';
                    shut_down <= '0';
                when S_DUT_POWERED =>
                    EN_PWR_5V <= '1';
                    board_started <= '1';
                    ready_bit <= '0';
                    testing_bit <= '1';
                    shut_down <= '0';
                when S_DUT_POWER_OFF =>
                    board_started <= '0';
                    EN_PWR_5V <= '0';
                    ready_bit <= '0';
                    testing_bit <= '0';  
                    shut_down <= '1';                  
                when others =>
                    null;
            end case;
        end if;
        
    end if;
end process;

end Behavioral;
