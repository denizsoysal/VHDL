----------------------------------------------------------------------------------
-- Company:         GENITEK
-- Engineer:        Deniz
-- 
-- Project Name:    4620ICTBRD FPGA
-- Target Devices:  
-- Tool Versions:   VIVADO 2020.1
-- SVN info:        $Id: bob.vhd 367 2018-08-03 07:35:19Z ldf@genitek.be $
-- Description:     LEDs display
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity leds_display is
  Port ( 
  
  rstn            : in std_logic;
  clk             : in std_logic;
    
  test_done : in std_logic_vector(24 downto 0);
  test_results : in std_logic_vector(24 downto 0);
 
  clk_slow      : in std_logic;
  
  io_exp_0 : out std_logic_vector(15 downto 0);
  io_exp_1 : out std_logic_vector(15 downto 0);
  

  
  board_started : in std_logic := '0';
  
  sw_not_programmed : in std_logic := '0';
  
  shut_down : in std_logic
  
  
  );
end leds_display;

architecture Behavioral of leds_display is
signal reg_test_done : std_logic_vector(24 downto 0 ) := (others => '0');
    alias done_5V_bit  : std_logic_vector (0 downto 0) is reg_test_done(0 downto 0);
    alias done_1V0_bit  : std_logic_vector (0 downto 0) is reg_test_done(1 downto 1);
    alias done_3V3_bit : std_logic_vector (0 downto 0) is reg_test_done(2 downto 2);
    alias done_1V8_bit : std_logic_vector (0 downto 0) is reg_test_done(3 downto 3);
    alias done_1V2_bit : std_logic_vector (0 downto 0) is reg_test_done(4 downto 4);
    alias done_VCORE_bit : std_logic_vector (0 downto 0) is reg_test_done(5 downto 5);
    alias done_VDIMM_bit : std_logic_vector (0 downto 0) is reg_test_done(6 downto 6);
    alias done_VDIMM_VTT_bit : std_logic_vector (0 downto 0) is reg_test_done(7 downto 7);
    alias done_VBAT_bit : std_logic_vector (0 downto 0) is reg_test_done(8 downto 8);
    
    alias done_TESTING_bit : std_logic_vector (0 downto 0) is reg_test_done(9 downto 9);
    alias done_READY_bit : std_logic_vector (0 downto 0) is reg_test_done(10 downto 10);
    
    alias done_CXC_16M_bit : std_logic_vector (0 downto 0) is reg_test_done(11 downto 11);
    alias done_FPGA_100M_bit : std_logic_vector (0 downto 0) is reg_test_done(12 downto 12);
    alias done_CLK100_XTAL_bit : std_logic_vector (0 downto 0) is reg_test_done(13 downto 13);
    alias done_PHY1_XTAL_bit : std_logic_vector (0 downto 0) is reg_test_done(14 downto 14);
    alias done_PHY2_XTAL_bit : std_logic_vector (0 downto 0) is reg_test_done(15 downto 15);   
    alias done_RTC_BAT_32K_bit : std_logic_vector (0 downto 0) is reg_test_done(16 downto 16);
    
    alias done_LED_RST_bit : std_logic_vector (0 downto 0) is reg_test_done(17 downto 17);
    alias done_LED_USR_bit : std_logic_vector (0 downto 0) is reg_test_done(18 downto 18);
    alias done_LED_WTD_bit : std_logic_vector (0 downto 0) is reg_test_done(19 downto 19);
    alias done_BTN_RST_bit : std_logic_vector (0 downto 0) is reg_test_done(20 downto 20);
    alias done_HRESET_bit : std_logic_vector (0 downto 0) is reg_test_done(21 downto 21);
    
    alias done_RST_SEQ_bit : std_logic_vector (0 downto 0) is reg_test_done(22 downto 22);
    alias done_PWR_SEQ_bit  : std_logic_vector (0 downto 0) is reg_test_done(23 downto 23);
    alias done_I_VMECPU_bit  : std_logic_vector (0 downto 0) is reg_test_done(24 downto 24);
signal reg_test_results : std_logic_vector(24 downto 0):= (others => '0');
    alias result_5V_bit  : std_logic_vector (0 downto 0) is reg_test_results(0 downto 0);
    alias result_1V0_bit  : std_logic_vector (0 downto 0) is reg_test_results(1 downto 1);
    alias result_3V3_bit : std_logic_vector (0 downto 0) is reg_test_results(2 downto 2);
    alias result_1V8_bit : std_logic_vector (0 downto 0) is reg_test_results(3 downto 3);
    alias result_1V2_bit : std_logic_vector (0 downto 0) is reg_test_results(4 downto 4);
    alias result_VCORE_bit : std_logic_vector (0 downto 0) is reg_test_results(5 downto 5);
    alias result_VDIMM_bit : std_logic_vector (0 downto 0) is reg_test_results(6 downto 6);
    alias result_VDIMM_VTT_bit : std_logic_vector (0 downto 0) is reg_test_results(7 downto 7);
    alias result_VBAT_bit : std_logic_vector (0 downto 0) is reg_test_results(8 downto 8);
    
    alias result_TESTING_bit : std_logic_vector (0 downto 0) is reg_test_results(9 downto 9);
    alias result_READY_bit : std_logic_vector (0 downto 0) is reg_test_results(10 downto 10);
    
    alias result_CXC_16M_bit : std_logic_vector (0 downto 0) is reg_test_results(11 downto 11);
    alias result_FPGA_100M_bit : std_logic_vector (0 downto 0) is reg_test_results(12 downto 12);
    alias result_CLK100_XTAL_bit : std_logic_vector (0 downto 0) is reg_test_results(13 downto 13);
    alias result_PHY1_XTAL_bit : std_logic_vector (0 downto 0) is reg_test_results(14 downto 14);
    alias result_PHY2_XTAL_bit : std_logic_vector (0 downto 0) is reg_test_results(15 downto 15);   
    alias result_RTC_BAT_32K_bit : std_logic_vector (0 downto 0) is reg_test_results(16 downto 16);
    
    alias result_LED_RST_bit : std_logic_vector (0 downto 0) is reg_test_results(17 downto 17);
    alias result_LED_USR_bit : std_logic_vector (0 downto 0) is reg_test_results(18 downto 18);
    alias result_LED_WTD_bit : std_logic_vector (0 downto 0) is reg_test_results(19 downto 19);
    alias result_BTN_RST_bit : std_logic_vector (0 downto 0) is reg_test_results(20 downto 20);
    alias result_HRESET_bit : std_logic_vector (0 downto 0) is reg_test_results(21 downto 21);
    
    alias result_RST_SEQ_bit : std_logic_vector (0 downto 0) is reg_test_results(22 downto 22);
    alias result_PWR_SEQ_bit  : std_logic_vector (0 downto 0) is reg_test_results(23 downto 23);
    alias result_I_VMECPU_bit  : std_logic_vector (0 downto 0) is reg_test_results(24 downto 24);
signal reg_leds : std_logic_vector(24 downto 0):= (others => '0');
    alias led_5V_bit  : std_logic_vector (0 downto 0) is reg_leds(0 downto 0);
    alias led_1V0_bit  : std_logic_vector (0 downto 0) is reg_leds(1 downto 1);
    alias led_3V3_bit : std_logic_vector (0 downto 0) is reg_leds(2 downto 2);
    alias led_1V8_bit : std_logic_vector (0 downto 0) is reg_leds(3 downto 3);
    alias led_1V2_bit : std_logic_vector (0 downto 0) is reg_leds(4 downto 4);
    alias led_VCORE_bit : std_logic_vector (0 downto 0) is reg_leds(5 downto 5);
    alias led_VDIMM_bit : std_logic_vector (0 downto 0) is reg_leds(6 downto 6);
    alias led_VDIMM_VTT_bit : std_logic_vector (0 downto 0) is reg_leds(7 downto 7);
    alias led_VBAT_bit : std_logic_vector (0 downto 0) is reg_leds(8 downto 8);
    
    alias led_TESTING_bit : std_logic_vector (0 downto 0) is reg_leds(9 downto 9);
    alias led_READY_bit : std_logic_vector (0 downto 0) is reg_leds(10 downto 10);
    
    alias led_CXC_16M_bit : std_logic_vector (0 downto 0) is reg_leds(11 downto 11);
    alias led_FPGA_100M_bit : std_logic_vector (0 downto 0) is reg_leds(12 downto 12);
    alias led_CLK100_XTAL_bit : std_logic_vector (0 downto 0) is reg_leds(13 downto 13);
    alias led_PHY1_XTAL_bit : std_logic_vector (0 downto 0) is reg_leds(14 downto 14);
    alias led_PHY2_XTAL_bit : std_logic_vector (0 downto 0) is reg_leds(15 downto 15);   
    alias led_RTC_BAT_32K_bit : std_logic_vector (0 downto 0) is reg_leds(16 downto 16);
    
    alias led_LED_RST_bit : std_logic_vector (0 downto 0) is reg_leds(17 downto 17);
    alias led_LED_USR_bit : std_logic_vector (0 downto 0) is reg_leds(18 downto 18);
    alias led_LED_WTD_bit : std_logic_vector (0 downto 0) is reg_leds(19 downto 19);
    alias led_BTN_RST_bit : std_logic_vector (0 downto 0) is reg_leds(20 downto 20);
    alias led_HRESET_bit : std_logic_vector (0 downto 0) is reg_leds(21 downto 21);
    
    alias led_RST_SEQ_bit : std_logic_vector (0 downto 0) is reg_leds(22 downto 22);
    alias led_PWR_SEQ_bit  : std_logic_vector (0 downto 0) is reg_leds(23 downto 23);
    alias led_I_VMECPU_bit  : std_logic_vector (0 downto 0) is reg_leds(24 downto 24);
    

       
begin

-- process to Sync the internal registers
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            reg_test_done <= (others => '0');
            reg_test_results <= (others => '0');
                       
        else
            reg_test_done <= test_done;
            reg_test_results <= test_results;
        end if;  
    end if;        
end process;

--process to sync to a slow clock (500ms) to blink the leds
--as long as we don't have valid results
process(clk_slow)
begin
if rising_edge(clk_slow) then
    if shut_down = '1' then
        io_exp_0(0 downto 0)<= "0";
        io_exp_0(1 downto 1)<= "0";
        io_exp_0(2 downto 2)<= "0";
        io_exp_0(3 downto 3)<= "0";
        io_exp_0(4 downto 4)<= "0";
        io_exp_0(5 downto 5)<= "0";
        io_exp_0(8 downto 8)<= "0";
        io_exp_0(9 downto 9)<= "0";
        io_exp_0(10 downto 10)<= "0";
        io_exp_0(11 downto 11)<= "0";
        io_exp_0(12 downto 12)<= "0";
        io_exp_0(13 downto 13)<= "0";
        io_exp_0(14 downto 14)<= "0";
        io_exp_0(15 downto 15)<= "0";
        
        io_exp_1(0 downto 0)<= "0";
        io_exp_1(1 downto 1)<= "0";
        io_exp_1(2 downto 2)<= "0";
        io_exp_1(3 downto 3)<= "0";
        io_exp_1(4 downto 4)<= "0";
        io_exp_1(5 downto 5)<= "0";
        io_exp_1(6 downto 6)<= "0";
        io_exp_1(8 downto 8)<= "0";
        io_exp_1(9 downto 9)<= "0";
        io_exp_1(10 downto 10)<= "0";
        io_exp_1(11 downto 11)<= "0";
        io_exp_1(12 downto 12)<= "0";
        io_exp_1(13 downto 13)<= "0";
        io_exp_1(14 downto 14)<= "0";
        io_exp_1(15 downto 15)<= "0";
    else 
        if rstn = '0' then
            reg_leds <= (others => '0');
            io_exp_0<= (others => '0');
            io_exp_1<= (others => '0');
        else
            led_READY_bit <= result_READY_bit;
            if board_started = '1' then
                if (done_TESTING_bit = "1") then
                    led_TESTING_bit <= result_TESTING_bit;
                else
                    led_TESTING_bit <= not led_TESTING_bit;
                end if;
                if (done_5V_bit = "1") then
                    led_5V_bit <= result_5V_bit;
                else
                    led_5V_bit <= not led_5V_bit;
                end if;
                
                if (done_1V0_bit = "1") then
                    led_1V0_bit <= result_1V0_bit;
                else
                    led_1V0_bit <= not led_1V0_bit;
                end if;
                
                if (done_1V8_bit = "1") then
                    led_1V8_bit <= result_1V8_bit;
                else
                    led_1V8_bit <= not led_1V8_bit;
                end if;
                
                if (done_3V3_bit = "1") then
                    led_3V3_bit <= result_3V3_bit;
                else
                    led_3V3_bit <= not led_3V3_bit;
                end if;
                
    
                if (done_1V2_bit = "1") then
                    led_1V2_bit <= result_1V2_bit;
                else
                    led_1V2_bit <= not led_1V2_bit;
                end if;
                
                if (done_VCORE_bit = "1") then
                    led_VCORE_bit <= result_VCORE_bit;
                else
                    led_VCORE_bit <= not led_VCORE_bit;
                end if;
                
                if (done_VDIMM_bit = "1") then
                    led_VDIMM_bit <= result_VDIMM_bit;
                else
                    led_VDIMM_bit <= not led_VDIMM_bit;
                end if;
                
                if (done_VDIMM_VTT_bit = "1") then
                    led_VDIMM_VTT_bit <= result_VDIMM_VTT_bit;
                else
                    led_VDIMM_VTT_bit <= not led_VDIMM_VTT_bit;
                end if;
                
                if (done_VBAT_bit = "1") then
                    led_VBAT_bit <= result_VBAT_bit;
                else
                    led_VBAT_bit <= not led_VBAT_bit;
                end if;       
        
                if (done_CXC_16M_bit = "1") then
                    led_CXC_16M_bit <= result_CXC_16M_bit;
                else
                    led_CXC_16M_bit <= not led_CXC_16M_bit;
                end if;
                
                if (done_FPGA_100M_bit = "1") then
                    led_FPGA_100M_bit <= result_FPGA_100M_bit;
                else
                    led_FPGA_100M_bit <= not led_FPGA_100M_bit;
                end if;
                
                if (done_CLK100_XTAL_bit = "1") then
                    led_CLK100_XTAL_bit <= result_CLK100_XTAL_bit;
                else
                    led_CLK100_XTAL_bit <= not led_CLK100_XTAL_bit;
                end if;
                
                if (done_PHY1_XTAL_bit = "1") then
                    led_PHY1_XTAL_bit <= result_PHY1_XTAL_bit;
                else
                    led_PHY1_XTAL_bit <= not led_PHY1_XTAL_bit;
                end if;
                
                if (done_PHY2_XTAL_bit = "1") then
                    led_PHY2_XTAL_bit <= result_PHY2_XTAL_bit;
                else
                    led_PHY2_XTAL_bit <= not led_PHY2_XTAL_bit;
                end if;
    
                
                if (done_RTC_BAT_32K_bit = "1") then
                    led_RTC_BAT_32K_bit <= result_RTC_BAT_32K_bit;
                else
                    led_RTC_BAT_32K_bit <= not led_RTC_BAT_32K_bit;
                end if;
                
                if (done_PWR_SEQ_bit = "1") then
                    led_PWR_SEQ_bit <= result_PWR_SEQ_bit;
                else
                    led_PWR_SEQ_bit <= not led_PWR_SEQ_bit;
                end if;
                
                if (done_I_VMECPU_bit = "1") then
                    led_I_VMECPU_bit <= result_I_VMECPU_bit;
                else
                    led_I_VMECPU_bit <= not led_I_VMECPU_bit;
                end if;
                
                --RESET TEST result :
                
                if sw_not_programmed = '1' then
                    led_LED_RST_bit <= "0";
                    led_LED_USR_bit <= "0";
                    led_LED_WTD_bit <= "0";
                    led_BTN_RST_bit <= "0";
                    led_HRESET_bit <= "0";
                    led_RST_SEQ_bit <= "0";
                elsif sw_not_programmed = '0' then
                    if (done_LED_RST_bit = "1") then
                        led_LED_RST_bit <= result_LED_RST_bit;
                    else
                        led_LED_RST_bit <= not led_LED_RST_bit;
                    end if;
                    
                    if (done_LED_USR_bit = "1") then
                        led_LED_USR_bit <= result_LED_USR_bit;
                    else
                        led_LED_USR_bit <= not led_LED_USR_bit;
                    end if;
                    
                    if (done_LED_WTD_bit = "1") then
                        led_LED_WTD_bit <= result_LED_WTD_bit;
                    else
                        led_LED_WTD_bit <= not led_LED_WTD_bit;
                    end if;
                    
                    if (done_BTN_RST_bit = "1") then
                        led_BTN_RST_bit <= result_BTN_RST_bit;
                    else
                        led_BTN_RST_bit <= not led_BTN_RST_bit;
                    end if;
                    
                    if (done_HRESET_bit = "1") then
                        led_HRESET_bit <= result_HRESET_bit;
                    else
                        led_HRESET_bit <= not led_HRESET_bit;
                    end if;
                    
                    if (done_RST_SEQ_bit = "1") then
                        led_RST_SEQ_bit <= result_RST_SEQ_bit;
                    else
                        led_RST_SEQ_bit <= not led_RST_SEQ_bit;
                    end if;   
                end if ; 
                io_exp_0(0 downto 0)<= led_VBAT_bit;
                io_exp_0(1 downto 1)<= led_CXC_16M_bit;
                io_exp_0(2 downto 2)<= led_VDIMM_VTT_bit;
                io_exp_0(3 downto 3)<= led_3V3_bit;
                io_exp_0(4 downto 4)<= led_VCORE_bit;
                io_exp_0(5 downto 5)<= led_5V_bit;
                io_exp_0(8 downto 8)<= led_1V8_bit;
                io_exp_0(9 downto 9)<= led_1V0_bit;
                io_exp_0(10 downto 10)<= led_FPGA_100M_bit;
                io_exp_0(11 downto 11)<= led_CLK100_XTAL_bit;
                io_exp_0(12 downto 12)<= led_PHY2_XTAL_bit;
                io_exp_0(13 downto 13)<= led_1V2_bit;
                io_exp_0(14 downto 14)<= led_PHY1_XTAL_bit;
                io_exp_0(15 downto 15)<= led_VDIMM_bit;
                io_exp_1(0 downto 0)<= led_LED_WTD_bit;
                io_exp_1(1 downto 1)<= led_LED_USR_bit;
                io_exp_1(2 downto 2)<= led_RST_SEQ_bit;
                io_exp_1(3 downto 3)<= led_BTN_RST_bit;
                io_exp_1(4 downto 4)<= led_PWR_SEQ_bit;
                io_exp_1(5 downto 5)<= "0";
                io_exp_1(6 downto 6)<= led_RTC_BAT_32K_bit;
                io_exp_1(8 downto 8)<= "0";
                io_exp_1(9 downto 9)<= "0";
                io_exp_1(10 downto 10)<= "0";
                io_exp_1(11 downto 11)<= "0";
                io_exp_1(12 downto 12)<= "0";
                io_exp_1(13 downto 13)<= "0";
                io_exp_1(14 downto 14)<= led_HRESET_bit;
                io_exp_1(15 downto 15)<= led_LED_RST_bit;   
            end if;
        io_exp_0(6 downto 6)<= led_READY_bit;
        io_exp_0(7 downto 7)<= led_TESTING_bit;
        io_exp_1(7 downto 7)<= led_I_VMECPU_bit;
        end if;
    end if;
end if;


end process;
end Behavioral;

