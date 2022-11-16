----------------------------------------------------------------------------------
-- Company:         GENITEK
-- Engineer:        Deniz
-- 
-- Project Name:    4620ICTBRD FPGA
-- Target Devices:  
-- Tool Versions:   VIVADO 2020.1
-- SVN info:        $Id: bob.vhd 367 2018-08-03 07:35:19Z ldf@genitek.be $
-- Description:     IO expanders Controller
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

entity ctrl_io_exp is
    generic(
    
        
        C_SLAVE_ADDR       : std_logic_vector(7 downto 0) := x"42";
        C_LENGTH_DATA      : integer range 0 to 255  := 16;
        C_LENGTH_ADDR      : integer range 0 to 255 := 8
        
    );
    port( 
        rstn            : in std_logic;
        clk             : in std_logic;
        
        --start_btnn      : in    std_logic;
        
        --sequencer - controller communication
        leds_state : in std_logic_vector(C_LENGTH_DATA-1 downto 0);


        ---------Axi lite protocol, master ---------
        --simplified version of the Axi lite protocol
        --Data and adress are written/read on the same register
        --only 6 signals are necessary
        
        w_valid         : out    std_logic := '0'; 
        w_ready         : in   std_logic;
        r_ready         : out   std_logic := '0';
        r_valid         : in   std_logic ; 
        r_data          : in   std_logic_vector(C_LENGTH_DATA+C_LENGTH_ADDR+C_LENGTH_ADDR - 1 downto 0); 
        w_data          : out    std_logic_vector(C_LENGTH_DATA+C_LENGTH_ADDR+C_LENGTH_ADDR - 1 downto 0) := (others => '0')
        
        
        

    
    );
end ctrl_io_exp;

architecture Behavioral of ctrl_io_exp is

type state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_IDLE,
    S_INIT,
    S_SEND
    );

signal state            : state_type := S_IDLE;
signal next_state       : state_type := S_IDLE;

signal init_done        : std_logic := '0';
signal r_data_b0        : std_logic_vector(C_LENGTH_DATA+C_LENGTH_ADDR+C_LENGTH_ADDR - 1 downto 0) := (others => '0');
signal leds_state_b0    : std_logic_vector(15 downto 0) := (others => '0');


begin



------------------------------------------------------------------
-- FSM CONTROLLER
------------------------------------------------------------------
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            state <= S_INIT;
        else 
            state <= next_state;
        end if;
    end if;
end process;



process(state, w_ready, init_done)
begin
    case state is 
        when S_IDLE =>
            if w_ready = '1' then 
                if init_done = '0' then
                    next_state <= S_INIT;
                else
                    next_state <= S_SEND;
                end if;
            else
                next_state <= S_IDLE;
            end if;
            
        when S_INIT =>
            next_state <= S_IDLE;
            
        when S_SEND => 
            next_state <= S_IDLE;
            
        when others =>
            next_state <= S_IDLE;
     end case;          
end process;

-- 0) Init
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            init_done <= '0';
            
        else
            case state is 
                when S_INIT =>
                    init_done <= '1';
                when others =>
                    init_done <= init_done;      
             end case;
         end if;          
     end if;
end process;

-- 1) Data output
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            r_ready <= '0';
            
            w_valid <= '0';
            w_data <= (others => '0');
            
        else
            case state is 
                when S_IDLE =>
                    r_ready <= '1';
                    
                    w_valid <= '0';
                    --en_led1 <= '1';
                    w_data <= (others => '0');
        
                when S_INIT => 
                    r_ready <= '1';
                    
                    w_data <= C_SLAVE_ADDR & x"000000";
                    w_valid <= '1';  
                    
                when S_SEND => 
                    r_ready <= '1';
                    
                    w_data <= C_SLAVE_ADDR & x"14" & leds_state_b0;     
                    w_valid <= '1';
                     
                when others =>
                    null;      
             end case;
         end if;          
     end if;
end process;

-- 2) Sync slave interface
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            leds_state_b0 <= (others => '0');
            
        else
            case state is 
                when S_IDLE =>
                    leds_state_b0 <= leds_state;
                when others =>
                    leds_state_b0 <= leds_state_b0;    
             end case;
         end if;          
     end if;
end process;

-- 3) Received data
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            r_data_b0 <= (others => '0');
        else
            if r_valid = '1' then
                r_data_b0 <= r_data;
            else
                r_data_b0 <= r_data_b0;      
            end if;
         end if;          
     end if;
end process; 

end Behavioral;
