----------------------------------------------------------------------------------
-- Company:         GENITEK
-- Engineer:        Deniz
-- 
-- Project Name:    4620ICTBRD FPGA
-- Target Devices:  
-- Tool Versions:   VIVADO 2020.1
-- SVN info:        $Id: bob.vhd 367 2018-08-03 07:35:19Z ldf@genitek.be $
-- Description:     Sequencer
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
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sequencer is

    Generic(
    
    C_DIVIDER          : integer range 0 to 1000000 := 200000; --divider for clk_slow
    C_LENGTH           : integer range 0 to 255 := 12; -- length of ADC communication
    C_AIN_NUMBER       : integer range 0 to 255 := 10; -- number of AIN of the ADC
    
    --values calculated with the file values_ADC.xlsx
    
    C_5V_MIN : std_logic_vector(11 downto 0) := x"BB7";
    C_5V_MAX : std_logic_vector(11 downto 0) := x"DAB";
    C_3V3_MIN : std_logic_vector(11 downto 0) := x"C3E";
    C_3V3_MAX : std_logic_vector(11 downto 0) := x"D88";
    C_1V8_MIN : std_logic_vector(11 downto 0) := x"D5B";
    C_1V8_MAX : std_logic_vector(11 downto 0) := x"EC3";
    C_1V2_MIN : std_logic_vector(11 downto 0) := x"8E7";
    C_1V2_MAX : std_logic_vector(11 downto 0) := x"9D7";
    C_1V0_MIN : std_logic_vector(11 downto 0) := x"76B";
    C_1V0_MAX : std_logic_vector(11 downto 0) := x"833";
    C_VBAT_MIN : std_logic_vector(11 downto 0) := x"3E7";
    C_VBAT_MAX : std_logic_vector(11 downto 0) := x"D03";
    C_VCORE_MIN : std_logic_vector(11 downto 0) := x"76B";
    C_VCORE_MAX : std_logic_vector(11 downto 0) := x"833";
    C_VDIMM_MIN : std_logic_vector(11 downto 0) := x"A04";
    C_VDIMM_MAX : std_logic_vector(11 downto 0) := x"B12";
    C_VDIMM_VTT_MIN : std_logic_vector(11 downto 0) := x"502";
    C_VDIMM_VTT_MAX : std_logic_vector(11 downto 0) := x"589";
    C_I_VMECPU_MIN : std_logic_vector(11 downto 0) := x"7CF";
    C_I_VMECPU_MAX : std_logic_vector(11 downto 0) := x"E0F";

    
    
    --power supply sequence parameters
     
    --timings for the power supply sequence
    --clock is 1 MHz : period of rising edge is 1?s
    C_SEQ_1V0_TO_3V3 : integer range 0 to 220 := 10; --10?s
    C_SEQ_3V3_TO_1V8: integer range 0 to 220 := 10; --10?s
    C_SEQ_1V8_TO_1V2: integer range 0 to 220 := 10; --10?s
    C_SEQ_1V2_TO_VCORE: integer range 0 to 220 := 10; --10?s
    C_SEQ_VCORE_TO_VDIMM: integer range 0 to 220 := 10; --10?s
    C_SEQ_VDIMM_TO_PORESET: integer range 0 to 85000  := 4040; --4.04ms
    
    C_debounce_range : integer range 0 to 10  := 5 
    
    
    
    
    );
    Port (
    
   --for ila 
   
   ok_if : out std_logic := '0';
   pas_ok_if : out std_logic := '0';
   value_result : out std_logic := '0';
   ended : out std_logic := '0';
   
   
   -- input EN et PG
   
    en_5v : in std_logic;
    pg_5v :in std_logic; --this signal correspond to 2 values : pg_5v and en_1v0
    pg_1V0: in std_logic;
    pg_3V3: in std_logic;
    pg_1V8: in std_logic;
    pg_1V2: in std_logic;
    pg_vcore: in std_logic;
    pg_vdimm: in std_logic;
    pg_poreset : in std_logic;
    
    
    rstn            : in std_logic;
    clk             : in std_logic;
    clk_100M        : in std_logic; -- 100Mhz clock generated with PLL
    

    
    --leds enables
    en_led0         : out std_logic := '0'; 
    en_led1         : out std_logic := '0';
    
    
    clk_slow   : out std_logic;
    
    value_3V3 : in std_logic_vector(C_LENGTH - 1 downto 0) ; 
    value_1V0 : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_1V8 : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_5V : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VBAT : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_I_VMECPU : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VDIMM_VTT : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VDIMM : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_1V2 : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    value_VCORE : in std_logic_vector(C_LENGTH - 1 downto 0) ;
    
    cnt_SEQ_1V0_TO_3V3_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_1V8_TO_1V2_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_1V2_TO_VCORE_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_VCORE_TO_VDIMM_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_3V3_TO_1V8_for_ILA : out std_logic_vector(7 downto 0);
    cnt_SEQ_VDIMM_TO_PORESET_for_ILA  : out std_logic_vector(7 downto 0);
    
    test_results : out std_logic_vector(24 downto 0):= (others => '0'); 
    test_done : out std_logic_vector(24 downto 0) := (others => '0');
    
    board_started : in std_logic;
    
    seq_result_for_ILA : out std_logic_vector(5 downto 0):= (others => '0');
    
    
    
    --clk mux measurement
    XTAL_RTC_OE : out std_logic;
    TST_CLK_S0 : out std_logic;
    TST_CLK_S1 : out std_logic;
    TST_CLK_S2 : out std_logic;
    CLOCK_OUT : in std_logic;
    
    cnt_b3_for_ILA : out std_logic_vector(64 downto 0);
    cnt_b4_for_ILA : out std_logic_vector(64 downto 0);
    cnt_b5_for_ILA : out std_logic_vector(64 downto 0);
    cnt_b6_for_ILA : out std_logic_vector(64 downto 0);
    cnt_b7_for_ILA : out std_logic_vector(64 downto 0);
    cnt_b8_for_ILA : out std_logic_vector(64 downto 0);
    cnt_pgvdimm_to_poreset_for_ILA  : out std_logic_vector(64 downto 0);
    cnt_poreset_to_hreset_for_ILA  : out std_logic_vector(64 downto 0);
    cnt_hreset_to_led_usr_for_ILA  : out std_logic_vector(64 downto 0);
    cnt_led_usr_to_btn_reset_for_ILA  : out std_logic_vector(64 downto 0);
    cnt_pgvdimm_to_poreset_2_for_ILA  : out std_logic_vector(64 downto 0);
    cnt_poreset_to_hreset_2_for_ILA   : out std_logic_vector(64 downto 0);
    cnt_hreset_to_led_usr_2_for_ILA   : out std_logic_vector(64 downto 0);
    cnt_btn_reset_to_btn_reset_off_for_ILA   : out std_logic_vector(64 downto 0);
    
    

    
        --seq reset 
    sw_not_programmed : in std_logic;
    led_rst : in std_logic;
    led_usr : in std_logic;
    led_wtd : in std_logic;
    hreset : in std_logic;
    btn_rst_t : out std_logic := '1';
    
    --reset for ila 
    rst_done_ok : out std_logic := '0';
    hreset_2_ok : out std_logic := '0';
    poreset_2_ok : out std_logic := '0';
    btn_rst_ok : out std_logic := '0';
    led_usr_ok : out std_logic := '0';
    hreset_ok : out std_logic := '0';
    poreset_ok : out std_logic := '0';
    vdimm_ok : out std_logic := '0';
    vdimm_2_ok : out std_logic := '0'
    
    );
end sequencer;

architecture Behavioral of sequencer is


type seq_state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_SEQ_IDLE,
    S_SEQ_5V,
    S_SEQ_1V0, --the 1V0 power supply is activated (with the 5V)
    S_SEQ_3V3, --the 3V3 power supply is activated (with the 5V and the 1V0)
    S_SEQ_1V8,
    S_SEQ_1V2,
    S_SEQ_VCORE,
    S_SEQ_VDIMM_VDIMM_VTT,
    S_SEQ_DONE
    );

signal state            : seq_state_type := S_SEQ_IDLE;
signal next_state       : seq_state_type := S_SEQ_IDLE;


type rst_state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_RST_IDLE,
    S_RST_VDIMM,
    S_RST_PORESET,
    S_RST_HRESET,
    S_RST_LED_USR,
    S_RST_BTN_RST,
    S_RST_BTN_RST_OFF,
    S_RST_VDIMM_2,
    S_RST_PORESET_2,
    S_RST_HRESET_2,
    S_RST_TIMEOUT,
    S_RST_DONE
    );
signal state_rst            : rst_state_type := S_RST_IDLE;
signal next_state_rst     : rst_state_type := S_RST_IDLE;
signal cnt_pgvdimm_to_poreset : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_poreset_to_hreset : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_hreset_to_led_usr  : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_led_usr_to_btn_reset : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_btn_reset_to_btn_reset_off : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_pgvdimm_to_poreset_2 : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_poreset_to_hreset_2 : std_logic_vector(64 downto 0):= (others => '0');
signal cnt_hreset_to_led_usr_2  : std_logic_vector(64 downto 0):= (others => '0');




type clk_state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_CLK_IDLE,
    S_CLK_WAITING,
    S_CLK_CONFIG_B3,
    S_CLK_MEASURE_B3,
    S_CLK_CONFIG_B4,
    S_CLK_MEASURE_B4,
    S_CLK_CONFIG_B5,
    S_CLK_MEASURE_B5,
    S_CLK_CONFIG_B6,
    S_CLK_MEASURE_B6,
    S_CLK_CONFIG_B7,
    S_CLK_MEASURE_B7,
    S_CLK_CONFIG_B8,
    S_CLK_MEASURE_B8,
    S_CLK_SYNC,
    S_CLK_END
    );
signal state_clk            : clk_state_type := S_CLK_IDLE;
signal next_state_clk     : clk_state_type := S_CLK_IDLE;
signal cnt_mux : integer:=0; --Mux switch from one input to another in a certain time
                             --this counter is used to define that

--counters of the signal clock_out of MUX
-- Bx correspond to the input of MUX,
--where "x" is the number of the input
signal cnt_B3  : std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B4   :std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B5 : std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B6 : std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B7 :std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B8 : std_logic_vector(64 downto 0):= (others => '0'); 
--counter of the 100M clock of ppl
-- we count the number
--of rising edge of the 100M clock to compare
--to the number of rising edge of clock_out
--for each input of MUX
signal cnt_B3_100M  : std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B4_100M   :std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B5_100M : std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B6_100M : std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B7_100M :std_logic_vector(64 downto 0):= (others => '0'); 
signal cnt_B8_100M : std_logic_vector(64 downto 0):= (others => '0');

signal cnt_waiting_clk : integer := 0;


signal cnt              : integer := 0;
signal clk_slow_b0      : std_logic := '0';
signal cnt_get_AIN      : integer :=0;



signal reg_test_done : std_logic_vector(24 downto 0):= (others => '0');
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

--done signal for the main tests : 
--ADC tests, seq test, rst seq test and clk test
signal tests_done : std_logic_vector (3 downto 0) := b"0000";

    
signal cnt_SEQ_1V0_TO_3V3 : integer := 0; --10?s
signal cnt_SEQ_3V3_TO_1V8: integer  := 0; --10?s
signal cnt_SEQ_1V8_TO_1V2: integer  := 0; --10?s
signal cnt_SEQ_1V2_TO_VCORE: integer  := 0; --10?s
signal cnt_SEQ_VCORE_TO_VDIMM: integer  := 0; --10?s
signal cnt_SEQ_VDIMM_TO_PORESET: integer  := 0; --4.04ms


signal    reg_AIN0_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN1_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN2_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN3_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN4_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN5_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN6_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN7_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN8_value : std_logic_vector(C_LENGTH - 1 downto 0);
signal    reg_AIN9_value : std_logic_vector(C_LENGTH - 1 downto 0);

   -- input EN et PG
   



signal AIN_VALUES : std_logic_vector(C_LENGTH*C_AIN_NUMBER -1  downto 0);
    alias reg_3V3_value  : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(C_LENGTH-1 downto 0);
    alias reg_1V0_value  : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(2*C_LENGTH -1 downto C_LENGTH);
    alias reg_1V8_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(3*C_LENGTH -1 downto 2*C_LENGTH);
    alias reg_5V_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(4*C_LENGTH -1 downto 3*C_LENGTH);
    alias reg_VBAT_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(5*C_LENGTH -1 downto 4*C_LENGTH);
    alias reg_I_VMECPU_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(6*C_LENGTH -1 downto 5*C_LENGTH);
    alias reg_VDIMM_VTT_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(7*C_LENGTH -1 downto 6*C_LENGTH);
    alias reg_VDIMM_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(8*C_LENGTH -1 downto 7*C_LENGTH);
    alias reg_1V2_value   : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(9*C_LENGTH -1 downto 8*C_LENGTH);
    alias reg_VCORE_value  : std_logic_vector (C_LENGTH-1 downto 0) is AIN_VALUES(10*C_LENGTH -1 downto 9*C_LENGTH);

    
signal seq_result : std_logic_vector(4 downto 0):= (others => '0');
    alias result_seq_1V0_TO_3V3_bit  : std_logic_vector (0 downto 0) is seq_result(0 downto 0);
    alias result_seq_3V3_TO_1V8_bit  : std_logic_vector (0 downto 0) is seq_result(1 downto 1);
    alias result_seq_1V8_TO_1V2_bit  : std_logic_vector (0 downto 0) is seq_result(2 downto 2);
    alias result_seq_1V2_TO_VCORE_bit  : std_logic_vector (0 downto 0) is seq_result(3 downto 3);
    alias result_seq_VCORE_TO_VDIMM_bit  : std_logic_vector (0 downto 0) is seq_result(4 downto 4);
signal seq_done : std_logic;
--signals for debounce of start btnn
signal pg_vdimm_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_vdimm_com    : std_logic := '0';
signal pg_vdimm_com_b0 : std_logic := '0';

signal pg_1V0_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_1V0_com    : std_logic := '0';
signal pg_1V0_com_b0 : std_logic := '0';

signal pg_3V3_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_3V3_com    : std_logic := '0';
signal pg_3V3_com_b0 : std_logic := '0';

signal pg_1V8_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_1V8_com    : std_logic := '0';
signal pg_1V8_com_b0 : std_logic := '0';

signal pg_1V2_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_1V2_com    : std_logic := '0';
signal pg_1V2_com_b0 : std_logic := '0';

signal pg_vcore_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_vcore_com    : std_logic := '0';
signal pg_vcore_com_b0 : std_logic := '0';

signal pg_poreset_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal pg_poreset_com    : std_logic := '0';
signal pg_poreset_com_b0 : std_logic := '0';

signal hreset_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal hreset_com    : std_logic := '0';
signal hreset_com_b0 : std_logic := '0';

signal led_usr_b0       : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal led_usr_com    : std_logic := '0';
signal led_usr_com_b0 : std_logic := '0';

signal led_rst_b0        : std_logic_vector(C_debounce_range downto 0) := (others => '0');
signal led_rst_com    : std_logic := '0';
signal led_rst_com_b0 : std_logic := '0';






begin

process(clk)
begin

end process;






-- Debounce of power good signals from DUT
--for more stability of the tests
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            pg_vdimm_b0 <= (others => '0');
            pg_1V0_b0  <= (others => '0');     
            pg_3V3_b0 <= (others => '0');         
            pg_1V8_b0 <= (others => '0');     
            pg_1V2_b0 <=  (others => '0');
            pg_vcore_b0 <=  (others => '0'); 
            pg_poreset_b0 <= (others => '0');
            hreset_b0  <= (others => '0');       
            led_usr_b0  <= (others => '0');      
            led_rst_b0    <= (others => '0');
        else
            pg_vdimm_b0(0) <= pg_vdimm;
            pg_vdimm_b0(pg_vdimm_b0'left downto 1) <= pg_vdimm_b0(pg_vdimm_b0'left-1 downto 0);
            pg_1V0_b0(0) <= pg_1V0;
            pg_1V0_b0(pg_1V0_b0'left downto 1) <= pg_1V0_b0(pg_1V0_b0'left-1 downto 0);
            pg_3V3_b0(0) <= pg_3V3;
            pg_3V3_b0(pg_3V3_b0'left downto 1) <= pg_3V3_b0(pg_3V3_b0'left-1 downto 0);
            pg_1V8_b0(0) <= pg_1V8;
            pg_1V8_b0(pg_1V8_b0'left downto 1) <= pg_1V8_b0(pg_1V8_b0'left-1 downto 0);
            pg_1V2_b0(0) <= pg_1V2;
            pg_1V2_b0(pg_1V2_b0'left downto 1) <= pg_1V2_b0(pg_1V2_b0'left-1 downto 0);
            pg_vcore_b0(0) <= pg_vcore;
            pg_vcore_b0(pg_vcore_b0'left downto 1) <= pg_vcore_b0(pg_vcore_b0'left-1 downto 0);
            pg_poreset_b0(0) <= pg_poreset;
            pg_poreset_b0(pg_poreset_b0'left downto 1) <= pg_poreset_b0(pg_poreset_b0'left-1 downto 0);
            hreset_b0(0) <= hreset;
            hreset_b0(hreset_b0'left downto 1) <= hreset_b0(hreset_b0'left-1 downto 0);
            led_usr_b0(0) <= led_usr;
            led_usr_b0(led_usr_b0'left downto 1) <= led_usr_b0(led_usr_b0'left-1 downto 0);
            led_rst_b0(0) <= led_rst;
            led_rst_b0(led_rst_b0'left downto 1) <= led_rst_b0(led_rst_b0'left-1 downto 0);
        end if;
    end if;
end process;

-- Start power good buffer
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            pg_vdimm_com_b0 <= '0';
            pg_1V0_com_b0 <= '0';
            pg_3V3_com_b0 <= '0';
            pg_1V8_com_b0 <= '0';
            pg_1V2_com_b0 <= '0';
            pg_vcore_com_b0 <= '0';
            pg_poreset_com_b0 <= '0';
            hreset_com_b0 <= '0';
            led_usr_com_b0 <= '0';
            led_rst_com_b0 <= '0';
        else
            if pg_vdimm_b0 = (pg_vdimm_b0'range => '1') then
                pg_vdimm_com <= '1';
            else
                pg_vdimm_com <= '0';
            end if;
            pg_vdimm_com_b0 <= pg_vdimm_com;
            
            if pg_1V0_b0 = (pg_1V0_b0'range => '1') then
                pg_1V0_com <= '1';
            else
                pg_1V0_com <= '0';
            end if;
            pg_1V0_com_b0 <= pg_1V0_com;
            
            if pg_3V3_b0 = (pg_3V3_b0'range => '1') then
                pg_3V3_com <= '1';
            else
                pg_3V3_com <= '0';
            end if;
            pg_3V3_com_b0 <= pg_3V3_com;
            
            if pg_1V8_b0 = (pg_1V8_b0'range => '1') then
                pg_1V8_com <= '1';
            else
                pg_1V8_com <= '0';
            end if;
            pg_1V8_com_b0 <= pg_1V8_com;
            
            if pg_1V2_b0 = (pg_1V2_b0'range => '1') then
                pg_1V2_com <= '1';
            else
                pg_1V2_com <= '0';
            end if;
            pg_1V2_com_b0 <= pg_1V2_com;
            
            if pg_vcore_b0 = (pg_vcore_b0'range => '1') then
                pg_vcore_com <= '1';
            else
                pg_vcore_com <= '0';
            end if;
            pg_vcore_com_b0 <= pg_vcore_com;
            
            if pg_poreset_b0 = (pg_poreset_b0'range => '1') then
                pg_poreset_com <= '1';
            else
                pg_poreset_com <= '0';
            end if;
            pg_poreset_com_b0 <= pg_poreset_com;
            
            if hreset_b0 = (hreset_b0'range => '1') then
                hreset_com <= '1';
            else
                hreset_com <= '0';
            end if;
            hreset_com_b0 <= hreset_com;
            
            if led_usr_b0 = (led_usr_b0'range => '1') then
                led_usr_com <= '1';
            else
                led_usr_com <= '0';
            end if;
            led_usr_com_b0 <= led_usr_com;
            
            if led_rst_b0 = (led_rst_b0'range => '1') then
                led_rst_com <= '1';
            else
                led_rst_com <= '0';
            end if;
            led_rst_com_b0 <= led_rst_com;
        end if;
    end if;
end process;
---- Slow impulse process, clk slow is clk (1MHz, 1?s) divided by 40M : 500ms
SLOWPULSE_PROCESS : process(clk)
begin
    if (rising_edge(clk)) then 
        cnt <= cnt +1;
       if(cnt = C_DIVIDER) then       

            clk_slow_b0 <= not clk_slow_b0;
            cnt <= 0;
        end if;
    end if;
end process;

TEST_ADC_PROCESS : process (clk_slow_b0)
begin
if rising_edge(clk_slow_b0) then
    if rstn = '0' then
        cnt_get_AIN <= 0;
        AIN_values <= (others => '0');
        reg_test_results(0 downto 10) <= (others => '0');
        reg_test_results(17 downto 24) <= (others => '0');
    else
        if board_started = '1' then 
            cnt_get_AIN <= cnt_get_AIN +1;
            if (result_seq_1V0_TO_3V3_bit = "1" and
            result_seq_3V3_TO_1V8_bit = "1" and
            result_seq_1V8_TO_1V2_bit = "1" and
            result_seq_1V2_TO_VCORE_bit  = "1" and
            result_seq_VCORE_TO_VDIMM_bit   ="1" 
            ) then 
            result_PWR_SEQ_bit <= "1";
            else
                result_PWR_SEQ_bit <= "0"; 
            end if;
            if (seq_done = '1') then 
                done_PWR_SEQ_bit <= "1";
            else
                done_PWR_SEQ_bit <= "0"; 
            end if; 
            
            if (cnt_get_AIN > 5/(C_DIVIDER/1000000)) then    
                reg_3V3_value <= value_3V3;  
                reg_1V0_value  <=  value_1V0;
                reg_1V8_value   <=  value_1V8;
                reg_5V_value   <=   value_5V;
                reg_VBAT_value  <=  value_VBAT;
                reg_I_VMECPU_value  <=  value_I_VMECPU;
                reg_VDIMM_VTT_value   <=  value_VDIMM_VTT;
                reg_VDIMM_value  <=   value_VDIMM;
                reg_1V2_value   <=  value_1V2;
                reg_VCORE_value  <=  value_VCORE;

                if reg_3V3_value < C_3V3_MAX and reg_3V3_value > C_3V3_MIN then
                       result_3V3_bit  <= "1";
                else
                       result_3V3_bit  <= "0";
                end if;
                done_3V3_bit  <= "1";
                
                if reg_1V0_value < C_1V0_MAX and reg_1V0_value > C_1V0_MIN then
                       result_1V0_bit  <= "1";
                else
                       result_1V0_bit  <= "0";
                end if;
                done_1V0_bit  <= "1";
                
                if reg_1V8_value < C_1V8_MAX and reg_1V8_value > C_1V8_MIN then
                       result_1V8_bit  <= "1";
                else
                       result_1V8_bit  <= "0";
                end if;
                done_1V8_bit  <= "1";
                
                if reg_5V_value < C_5V_MAX and reg_5V_value > C_5V_MIN then
                       result_5V_bit  <= "1";
                else
                       result_5V_bit  <= "0";
                end if;
                done_5V_bit  <= "1";

                
                if reg_VDIMM_VTT_value < C_VDIMM_VTT_MAX and reg_VDIMM_VTT_value > C_VDIMM_VTT_MIN then
                       result_VDIMM_VTT_bit  <= "1";
                else
                       result_VDIMM_VTT_bit  <= "0";
                end if;
                done_VDIMM_VTT_bit  <= "1";
                
                if reg_VDIMM_value < C_VDIMM_MAX and reg_VDIMM_value > C_VDIMM_MIN then
                       result_VDIMM_bit  <= "1";
                else
                       result_VDIMM_bit  <= "0";
                end if;
                done_VDIMM_bit  <= "1";
                
                if reg_1V2_value < C_1V2_MAX and reg_1V2_value > C_1V2_MIN then
                       result_1V2_bit  <= "1";
                else
                       result_1V2_bit  <= "0";
                end if;
                done_1V2_bit  <= "1";
                
                if reg_VCORE_value < C_VCORE_MAX and reg_VCORE_value > C_VCORE_MIN then
                       result_VCORE_bit  <= "1";
                else
                       result_VCORE_bit  <= "0";
                end if;
                done_VCORE_bit  <= "1";
            end if;
            
            if (cnt_get_AIN > 20/(C_DIVIDER/1000000)) then     
               if reg_VBAT_value < C_VBAT_MAX and reg_VBAT_value > C_VBAT_MIN  then
                       result_VBAT_bit  <= "1";
               else
                       result_VBAT_bit  <= "0";
               end if;
               done_VBAT_bit  <= "1";  
               
               if reg_I_VMECPU_value < C_I_VMECPU_MAX  and reg_I_VMECPU_value > C_I_VMECPU_MIN then
                       result_I_VMECPU_bit  <= "1";
               else
                       result_I_VMECPU_bit  <= "0";
               end if;
               done_I_VMECPU_bit  <= "1"; 
               
               tests_done(0) <= '1';
            end if;
        end if;       
    end if;
end if;
end process;



TEST_SEQ_FSM_NEXT_STATE_PROCESS : process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            state <= S_SEQ_IDLE;
       else 
            state <= next_state;
       end if;
    end if;
end process;

TEST_SEQ_FSM_PROCESS : process(state, board_started, pg_1V0_com_b0, pg_3V3_com_b0, pg_1V8_com_b0, pg_1V2_com_b0, pg_vcore_com_b0, pg_vdimm_com_b0 )
begin
    case state is 
        when S_SEQ_IDLE=>
            if board_started ='1'  then
                next_state <= S_SEQ_5V;  
            else
                next_state <= S_SEQ_IDLE;
            end if;
        when S_SEQ_5V =>
            if pg_1V0_com_b0 = '1' then
                next_state <= S_SEQ_1V0;
            else
                next_state <= S_SEQ_IDLE;
            end if; 
        when S_SEQ_1V0 =>
            if pg_3V3_com_b0 = '1'  then
                next_state <= S_SEQ_3V3;
            else
                next_state <= S_SEQ_1V0;
            end if;
        when S_SEQ_3V3 =>
            if pg_1V8_com_b0 = '1'then
                next_state <= S_SEQ_1V8;
            else
                next_state <= S_SEQ_3V3;
            end if;
        when S_SEQ_1V8 =>
            if pg_1V2_com_b0 = '1'  then
                next_state <= S_SEQ_1V2;
            else
                next_state <= S_SEQ_1V8;
            end if;
        when S_SEQ_1V2 =>
            if pg_vcore_com_b0 = '1' then
                next_state <= S_SEQ_VCORE;
            else
                next_state <= S_SEQ_1V2;
            end if;
        when S_SEQ_VCORE =>
            if pg_vdimm_com_b0 = '1' then 
            --if pg_vdimm_com_b0 = '1' and pg_vdimm_com = '0' then
                next_state <= S_SEQ_VDIMM_VDIMM_VTT;
            else
                next_state <= S_SEQ_VCORE;
            end if;
        when S_SEQ_VDIMM_VDIMM_VTT =>
            next_state <= S_SEQ_DONE;
        when S_SEQ_DONE => 
            next_state <= S_SEQ_DONE; 
        when others => 
            null;
        end case;
end process;


TEST_SEQ_RESULTS : process(clk)
begin
if rising_edge(clk) then
    if rstn = '0' then
        cnt_SEQ_1V0_TO_3V3 <= 0;
        cnt_SEQ_3V3_TO_1V8 <= 0;
        cnt_SEQ_1V8_TO_1V2 <= 0;
        cnt_SEQ_1V2_TO_VCORE <= 0;
        cnt_SEQ_VCORE_TO_VDIMM <= 0;
        cnt_SEQ_VDIMM_TO_PORESET <= 0;
        result_seq_1V0_TO_3V3_bit <= "0";
        result_seq_3V3_TO_1V8_bit <= "0";
        result_seq_1V8_TO_1V2_bit <= "0";
        result_seq_1V2_TO_VCORE_bit <= "0";
        result_seq_VCORE_TO_VDIMM_bit <= "0";
        seq_done <= '0';
    else
      case state is
            when S_SEQ_IDLE =>
                cnt_SEQ_1V0_TO_3V3 <= 0;
                cnt_SEQ_3V3_TO_1V8 <= 0;
                cnt_SEQ_1V8_TO_1V2 <= 0;
                cnt_SEQ_1V2_TO_VCORE <= 0;
                cnt_SEQ_VCORE_TO_VDIMM <= 0;
                cnt_SEQ_VDIMM_TO_PORESET <= 0;
                result_seq_1V0_TO_3V3_bit <= "0";
                result_seq_3V3_TO_1V8_bit <= "0";
                result_seq_1V8_TO_1V2_bit <= "0";
                result_seq_1V2_TO_VCORE_bit <= "0";
                result_seq_VCORE_TO_VDIMM_bit <= "0";
                seq_done <= '0';
            when S_SEQ_5V =>
                cnt_SEQ_1V0_TO_3V3 <= 0;
                cnt_SEQ_3V3_TO_1V8 <= 0;
                cnt_SEQ_1V8_TO_1V2 <= 0;
                cnt_SEQ_1V2_TO_VCORE <= 0;
                cnt_SEQ_VCORE_TO_VDIMM <= 0;
                cnt_SEQ_VDIMM_TO_PORESET <= 0;
                result_seq_1V0_TO_3V3_bit <= "0";
                result_seq_3V3_TO_1V8_bit <= "0";
                result_seq_1V8_TO_1V2_bit <= "0";
                result_seq_1V2_TO_VCORE_bit <= "0";
                result_seq_VCORE_TO_VDIMM_bit <= "0";
                seq_done <= '0';
            when S_SEQ_1V0 =>
                cnt_SEQ_1V0_TO_3V3 <= (cnt_SEQ_1V0_TO_3V3) +1;
                if cnt_SEQ_1V0_TO_3V3 > C_SEQ_1V0_TO_3V3  then 
                    result_seq_1V0_TO_3V3_bit <= "1";
                else
                    result_seq_1V0_TO_3V3_bit <= "0";
                end if;
            when S_SEQ_3V3 =>
                cnt_SEQ_3V3_TO_1V8 <= (cnt_SEQ_3V3_TO_1V8) +1 ;
                if cnt_SEQ_3V3_TO_1V8 > C_SEQ_3V3_TO_1V8   then 
                    result_seq_3V3_TO_1V8_bit <= "1";
                else
                    result_seq_3V3_TO_1V8_bit <= "0";
                end if;
            when S_SEQ_1V8 =>
                cnt_SEQ_1V8_TO_1V2 <= (cnt_SEQ_1V8_TO_1V2) +1;
                if cnt_SEQ_1V8_TO_1V2 > C_SEQ_1V8_TO_1V2  then 
                    result_seq_1V8_TO_1V2_bit <= "1";
                else
                    result_seq_1V8_TO_1V2_bit <= "0";
                end if;
            when S_SEQ_1V2 =>
                cnt_SEQ_1V2_TO_VCORE <= (cnt_SEQ_1V2_TO_VCORE) +1;
                if cnt_SEQ_1V2_TO_VCORE > C_SEQ_1V2_TO_VCORE   then 
                    result_seq_1V2_TO_VCORE_bit <= "1";
                else
                    result_seq_1V2_TO_VCORE_bit <= "0";
                end if;
            when S_SEQ_VCORE =>
                cnt_SEQ_VCORE_TO_VDIMM <= (cnt_SEQ_VCORE_TO_VDIMM) +1;
                if  cnt_SEQ_VCORE_TO_VDIMM > C_SEQ_VCORE_TO_VDIMM   then 
                    result_seq_VCORE_TO_VDIMM_bit <= "1";
                else
                    result_seq_VCORE_TO_VDIMM_bit <= "0";
                end if;
            when S_SEQ_DONE =>
                  seq_done <= '1';
                  tests_done(1) <= '1';
            when others => 
                null;
        end case;
       end if;
   end if;
end process;

--******************************************
--CLOCK MEASUREMENT
--******************************************

--process to count (cnt_100M) the ref clock, i.e. the 100MHz clk
--and to count (cnt_mux) the time betweeen each state of the FSM
TEST_CLK_COUNTER_PROCESS : process(clk_100M)
begin
    if rising_edge(clk_100M) then
        if rstn = '0' then
            cnt_mux <= 0;
            cnt_B3_100M <= (others => '0'); 
            cnt_B4_100M <= (others => '0'); 
            cnt_B5_100M <= (others => '0'); 
            cnt_B6_100M <= (others => '0'); 
            cnt_B7_100M <= (others => '0'); 
            cnt_B8_100M <= (others => '0');
        else
            case state_clk is 
                when S_CLK_IDLE=>
                    cnt_mux <= 0;
                    cnt_B3_100M <= (others => '0'); 
                    cnt_B4_100M <= (others => '0'); 
                    cnt_B5_100M <= (others => '0'); 
                    cnt_B6_100M <= (others => '0'); 
                    cnt_B7_100M <= (others => '0'); 
                    cnt_B8_100M <= (others => '0');

                when S_CLK_CONFIG_B3 | S_CLK_CONFIG_B4 | S_CLK_CONFIG_B5 | 
                     S_CLK_CONFIG_B6 | S_CLK_CONFIG_B7 | S_CLK_CONFIG_B8  =>
                    cnt_mux <= cnt_mux + 1;
                    cnt_B3_100M <= cnt_B3_100M; 
                    cnt_B4_100M <= cnt_B4_100M; 
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M;
                when S_CLK_MEASURE_B3 =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M + '1'; 
                    cnt_B4_100M <= cnt_B4_100M; 
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M;
                when S_CLK_MEASURE_B4 =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M ; 
                    cnt_B4_100M <= cnt_B4_100M + '1';
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M;
                when S_CLK_MEASURE_B5 =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M; 
                    cnt_B4_100M <= cnt_B4_100M ; 
                    cnt_B5_100M <= cnt_B5_100M + '1'; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M;
                when S_CLK_MEASURE_B6 =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M; 
                    cnt_B4_100M <= cnt_B4_100M ; 
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M + '1'; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M;
                when S_CLK_MEASURE_B7 =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M; 
                    cnt_B4_100M <= cnt_B4_100M ; 
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M + '1';
                    cnt_B8_100M <= cnt_B8_100M;
                when S_CLK_MEASURE_B8 =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M; 
                    cnt_B4_100M <= cnt_B4_100M ; 
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M + '1';
                when others =>
                    cnt_mux <= 0;
                    cnt_B3_100M <= cnt_B3_100M; 
                    cnt_B4_100M <= cnt_B4_100M; 
                    cnt_B5_100M <= cnt_B5_100M; 
                    cnt_B6_100M <= cnt_B6_100M; 
                    cnt_B7_100M <= cnt_B7_100M; 
                    cnt_B8_100M <= cnt_B8_100M;
            end case;
        end if;
    end if;
end process; 

--process to measure the number of rising edge
--of the CLOCK_OUT signal
TEST_CLK_COUNTER_CLK_OUT_PROCESS : process(CLOCK_OUT)
begin
    if rising_edge(CLOCK_OUT) then
        if rstn = '0' then
            cnt_B3 <= (others => '0');
            cnt_B4 <= (others => '0');
            cnt_B5 <= (others => '0');
            cnt_B6 <= (others => '0');
            cnt_B7 <= (others => '0');
            cnt_B8 <= (others => '0');
        else
            case state_clk is 
                when S_CLK_IDLE=>
                    cnt_B3 <= (others => '0');
                    cnt_B4 <= (others => '0');
                    cnt_B5 <= (others => '0');
                    cnt_B6 <= (others => '0');
                    cnt_B7 <= (others => '0');
                    cnt_B8 <= (others => '0');
                when S_CLK_MEASURE_B3 =>
                    cnt_B3 <= cnt_B3 + '1';
                    cnt_B4 <= cnt_B4;
                    cnt_B5 <= cnt_B5;
                    cnt_B6 <= cnt_B6;
                    cnt_B7 <= cnt_B7;
                    cnt_B8 <= cnt_B8;
                when S_CLK_MEASURE_B4 =>
                    cnt_B3 <= cnt_B3;
                    cnt_B4 <= cnt_B4 + '1';
                    cnt_B5 <= cnt_B5;
                    cnt_B6 <= cnt_B6;
                    cnt_B7 <= cnt_B7;
                    cnt_B8 <= cnt_B8;
                when S_CLK_MEASURE_B5 =>
                    cnt_B3 <= cnt_B3;
                    cnt_B4 <= cnt_B4;
                    cnt_B5 <= cnt_B5 +'1';
                    cnt_B6 <= cnt_B6;
                    cnt_B7 <= cnt_B7;
                    cnt_B8 <= cnt_B8;
                when S_CLK_MEASURE_B6 =>
                    cnt_B3 <= cnt_B3;
                    cnt_B4 <= cnt_B4;
                    cnt_B5 <= cnt_B5;
                    cnt_B6 <= cnt_B6 +'1';
                    cnt_B7 <= cnt_B7;
                    cnt_B8 <= cnt_B8;
                when S_CLK_MEASURE_B7 =>
                    cnt_B3 <= cnt_B3;
                    cnt_B4 <= cnt_B4;
                    cnt_B5 <= cnt_B5;
                    cnt_B6 <= cnt_B6;
                    cnt_B7 <= cnt_B7 + '1';
                    cnt_B8 <= cnt_B8;
                when S_CLK_MEASURE_B8 =>
                    cnt_B3 <= cnt_B3;
                    cnt_B4 <= cnt_B4;
                    cnt_B5 <= cnt_B5;
                    cnt_B6 <= cnt_B6;
                    cnt_B7 <= cnt_B7;
                    cnt_B8 <= cnt_B8 + '1';
                when others =>
                    cnt_B3 <= cnt_B3;
                    cnt_B4 <= cnt_B4;
                    cnt_B5 <= cnt_B5;
                    cnt_B6 <= cnt_B6;
                    cnt_B7 <= cnt_B7;
                    cnt_B8 <= cnt_B8;
            end case;
        end if;
    end if;
end process; 



--FSM of the clk measurement tests
TEST_CLK_FSM_PROCESS : process(state_clk, board_started, cnt_mux, cnt_B3_100M, cnt_B4_100M, cnt_B5_100M, cnt_B6_100M, cnt_B7_100M, cnt_B8_100M, cnt_waiting_clk)
--TEST_CLK_FSM_PROCESS : process(clk_100M)
begin
    case state_clk is 
        when S_CLK_IDLE=>
            if board_started ='1' then
                next_state_clk <= S_CLK_WAITING;  
            else
                next_state_clk <= S_CLK_IDLE;
            end if;    
        when S_CLK_WAITING=>
            if cnt_waiting_clk > 5  then
                next_state_clk <= S_CLK_CONFIG_B3;  
            else
                next_state_clk <= S_CLK_WAITING;
            end if;
        when S_CLK_CONFIG_B3=>   
            if cnt_mux >= 500 then --5000ns
                next_state_clk <= S_CLK_MEASURE_B3;  
            else
                next_state_clk <= S_CLK_CONFIG_B3;                        
            end if;
        when S_CLK_MEASURE_B3=>   
            if cnt_B3_100M >= x"3D0900" then --50 000 000ns
                next_state_clk <= S_CLK_CONFIG_B4;  
            else
                next_state_clk <= S_CLK_MEASURE_B3;                        
            end if; 
            --i put a signal of 20MHZ, rising edge : 50ns. rising edge of 100M : 10ns. 
            --we wait for 5000000 rising edge of 100M
            --we should measure 1000000 rising edges of B3
        when S_CLK_CONFIG_B4=>   
            if cnt_mux >= 500 then --5000ns
                next_state_clk <= S_CLK_MEASURE_B4;  
            else
                next_state_clk <= S_CLK_CONFIG_B4;                        
            end if;
        when S_CLK_MEASURE_B4=>   
            if cnt_B4_100M >= x"12309CE5" then --3 052 000us
                next_state_clk <= S_CLK_CONFIG_B5;  
            else
                next_state_clk <= S_CLK_MEASURE_B4;                        
            end if; 
            --rising_edge of B4 : 30.5us. rising edge of 100M : 10ns. 
            --we wait for 305176000 rising edge of 100M
            --we should measure 100 000 rising edges of B4
        when S_CLK_CONFIG_B5=>   
            if cnt_mux >= 500 then --5000ns
                next_state_clk <= S_CLK_MEASURE_B5;  
            else
                next_state_clk <= S_CLK_CONFIG_B5;                        
            end if;
            --we wait 50ns to have a stable 
            --MUX output
        when S_CLK_MEASURE_B5=>   
            if cnt_B5_100M >= x"3D0900" then --40 000 000ns
                next_state_clk <= S_CLK_CONFIG_B6;  
            else
                next_state_clk <= S_CLK_MEASURE_B5;                        
            end if; 
            --rising_edge of B5 : 40ns. rising edge of 100M : 10ns. 
            --we wait for 4000000 rising edge of 100M
            --we should measure 1000000 rising edges of B5
        when S_CLK_CONFIG_B6=>   
            if cnt_mux >= 500 then --5000ns
                next_state_clk <= S_CLK_MEASURE_B6;  
            else
                next_state_clk <= S_CLK_CONFIG_B6;                        
            end if;
            --we wait 50ns to have a stable 
            --MUX output
        when S_CLK_MEASURE_B6=>   
            if cnt_B6_100M  >= x"3D0900" then --40 000 000ns
                next_state_clk <= S_CLK_CONFIG_B7;  
            else
                next_state_clk <= S_CLK_MEASURE_B6;                        
            end if; 
            --rising_edge of B6 : 40ns. rising edge of 100M : 10ns. 
            --we wait for 4000000 rising edge of 100M
            --we should measure 1000000 rising edges of B6
        when S_CLK_CONFIG_B7=>   
            if cnt_mux >= 500 then --5000ns
                next_state_clk <= S_CLK_MEASURE_B7;  
            else
                next_state_clk <= S_CLK_CONFIG_B7;                        
            end if;
            --we wait 50ns to have a stable 
            --MUX output
        when S_CLK_MEASURE_B7=>   
            if cnt_B7_100M >= x"F4240"  then --10 000 000ns
                next_state_clk <= S_CLK_CONFIG_B8;  
            else
                next_state_clk <= S_CLK_MEASURE_B7;                        
            end if; 
            --rising_edge of B7 : 10ns. rising edge of 100M : 10ns. 
            --we wait for 1000000 rising edge of 100M
            --we should measure 1000000 rising edges of B7
        when S_CLK_CONFIG_B8=>   
            if cnt_mux >= 500 then --5000ns
                next_state_clk <= S_CLK_MEASURE_B8;  
            else
                next_state_clk <= S_CLK_CONFIG_B8;                        
            end if;
            --we wait 50ns to have a stable 
            --MUX output
        when S_CLK_MEASURE_B8=>   
            if cnt_B8_100M >= x"5F5E10"  then --62 500 000ns
                next_state_clk <= S_CLK_SYNC;  
            else
                next_state_clk <= S_CLK_MEASURE_B8;                        
            end if; 
            --rising_edge of B8 : 62.5ns. rising edge of 100M : 10ns. 
            --we wait for 6250000 rising edge of 100M
            --we should measure 1000000 rising edges of B8
        when S_CLK_SYNC=>   
            next_state_clk <= S_CLK_END;
        when S_CLK_END=>   
            next_state_clk <= S_CLK_END;
--            cnt_b3_for_ILA <= cnt_b3;
--            cnt_b4_for_ILA <= cnt_b4;
--            cnt_b5_for_ILA <= cnt_b5;
--            cnt_b6_for_ILA <= ;
--            cnt_b7_for_ILA : out std_logic_vector(64 downto 0);
--            cnt_b8_for_ILA : out std_logic_vector(64 downto 0);
        when others =>
            next_state_clk <= S_CLK_IDLE;
    end case;
end process;


TEST_CLK_FSM_NEXT_STATE_PROCESS : process(clk_100M)
begin
    if rising_edge(clk_100M) then
        if rstn = '0' then
            state_clk <= S_CLK_IDLE;
       else 
            state_clk <= next_state_clk;
       end if;
    end if;
end process;

TEST_CLK_CNT_WAITING : process(clk_slow_b0)
begin
    if rising_edge(clk_slow_b0) then
        if rstn = '0' then
            cnt_waiting_clk <= 0;
       else 
            case state_clk is
                when S_CLK_WAITING => 
                    cnt_waiting_clk <= cnt_waiting_clk + 1;
                when others => 
                    cnt_waiting_clk <= 0;
            end case;
       end if;
    end if;
end process;







--process to config the MUX for the clk measurement tests
TEST_CLK_CONFIG_PROCESS : process(clk_100M)
begin
if rising_edge(clk_100M) then
    if rstn = '0' then
        TST_CLK_S0 <= '0';
        TST_CLK_S1 <= '0';
        TST_CLK_S2 <= '0';
    else
        case state_clk is
            when S_CLK_IDLE =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '0';
                TST_CLK_S1 <= '0';
                TST_CLK_S2 <= '0';
            when S_CLK_CONFIG_B3 | S_CLK_MEASURE_B3 =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '0';
                TST_CLK_S1 <= '1';
                TST_CLK_S2 <= '0';
            when S_CLK_CONFIG_B4 | S_CLK_MEASURE_B4 =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '1';
                TST_CLK_S1 <= '1';
                TST_CLK_S2 <= '0';
            when S_CLK_CONFIG_B5 | S_CLK_MEASURE_B5 =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '0';
                TST_CLK_S1 <= '0';
                TST_CLK_S2 <= '1';
            when S_CLK_CONFIG_B6 | S_CLK_MEASURE_B6 =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '1';
                TST_CLK_S1 <= '0';
                TST_CLK_S2 <= '1';
            when S_CLK_CONFIG_B7 | S_CLK_MEASURE_B7 =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '0';
                TST_CLK_S1 <= '1';
                TST_CLK_S2 <= '1';
            when S_CLK_CONFIG_B8 | S_CLK_MEASURE_B8 =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '1';
                TST_CLK_S1 <= '1';
                TST_CLK_S2 <= '1';
            when others =>
                XTAL_RTC_OE <= '1';
                TST_CLK_S0 <= '0';
                TST_CLK_S1 <= '0';
                TST_CLK_S2 <= '0';
        end case;
    end if;
end if;

end process;
--process to define the results of the clk measurement tests
TEST_CLK_RESULT : process (state_clk)
begin
    if rstn = '0' then 
        result_CXC_16M_bit <= "0";
        result_FPGA_100M_bit <= "0";
        result_CLK100_XTAL_bit <= "0";
        result_PHY1_XTAL_bit <= "0";
        result_PHY2_XTAL_bit <= "0";
        result_RTC_BAT_32K_bit <= "0"; 
        done_CXC_16M_bit <= "0";
        done_FPGA_100M_bit <= "0";
        done_CLK100_XTAL_bit <= "0";
        done_PHY1_XTAL_bit <= "0";
        done_PHY2_XTAL_bit <= "0";
        done_RTC_BAT_32K_bit <= "0"; 
    else
        case state_clk is
            when S_CLK_IDLE =>
                result_CXC_16M_bit <= "0";
                result_FPGA_100M_bit <= "0";
                result_CLK100_XTAL_bit <= "0";
                result_PHY1_XTAL_bit <= "0";
                result_PHY2_XTAL_bit <= "0";
                result_RTC_BAT_32K_bit <= "0"; 
                done_CXC_16M_bit <= "0";
                done_FPGA_100M_bit <= "0";
                done_CLK100_XTAL_bit <= "0";
                done_PHY1_XTAL_bit <= "0";
                done_PHY2_XTAL_bit <= "0";
                done_RTC_BAT_32K_bit <= "0"; 
            when S_CLK_SYNC =>
               if  cnt_b3 > x"F404c" AND cnt_b3 < x"F4434" then
                    result_CLK100_XTAL_bit <= "1";
               else
                    result_CLK100_XTAL_bit <= "0";
               end if;
                
                if  cnt_b4 > x"184AC" AND cnt_b4 < x"18894" then 
                    result_RTC_BAT_32K_bit <= "1";
                else
                    result_RTC_BAT_32K_bit <= "0";
                end if;
                
                if  cnt_b5 > x"F404c" AND cnt_b5 < x"F4434" then 
                    result_PHY2_XTAL_bit <= "1";
                else
                    result_PHY2_XTAL_bit <= "0";
                end if;
                
                if  cnt_b6 > x"F404c" AND cnt_b6 < x"F4434" then 
                    result_PHY1_XTAL_bit <= "1";
                else
                    result_PHY1_XTAL_bit <= "0";
                end if;
                
                if  cnt_b7 > x"F404c" AND cnt_b7 < x"F4434" then 
                    result_FPGA_100M_bit <= "1";
                else
                    result_FPGA_100M_bit <= "0";
                end if;
                
                if  cnt_b8 > x"F404c" AND cnt_b8 < x"F4434" then 
                    result_CXC_16M_bit <= "1";
                    ok_if <= '1';
                else
                    result_CXC_16M_bit <= "0";
                    pas_ok_if <= '0';
                end if;

            when S_CLK_END =>
                done_CXC_16M_bit <= "1";
                done_FPGA_100M_bit <= "1";
                done_CLK100_XTAL_bit <= "1";
                done_PHY1_XTAL_bit <= "1";
                done_PHY2_XTAL_bit <= "1";
                done_RTC_BAT_32K_bit <= "1";
                result_CXC_16M_bit <= result_CXC_16M_bit;
                result_FPGA_100M_bit <= result_FPGA_100M_bit;
                result_CLK100_XTAL_bit <= result_CLK100_XTAL_bit;
                result_PHY1_XTAL_bit <= result_PHY1_XTAL_bit;
                result_PHY2_XTAL_bit <= result_PHY2_XTAL_bit;
                result_RTC_BAT_32K_bit <= result_RTC_BAT_32K_bit; 
                value_result <= result_CXC_16M_bit(0);
                ended <= '1';
                
                tests_done(2) <= '1';

                
            when S_CLK_CONFIG_B3 | S_CLK_MEASURE_B3 | S_CLK_CONFIG_B4 | S_CLK_MEASURE_B4 |
                 S_CLK_CONFIG_B5 | S_CLK_MEASURE_B5 | S_CLK_CONFIG_B6 | S_CLK_MEASURE_B6 | S_CLK_CONFIG_B7 |
                 S_CLK_MEASURE_B7 | S_CLK_CONFIG_B8 | S_CLK_MEASURE_B8  =>
    

                
            when others =>
                result_CXC_16M_bit <= result_CXC_16M_bit;
                result_FPGA_100M_bit <= result_FPGA_100M_bit;
                result_CLK100_XTAL_bit <= result_CLK100_XTAL_bit;
                result_PHY1_XTAL_bit <= result_PHY1_XTAL_bit;
                result_PHY2_XTAL_bit <= result_PHY2_XTAL_bit;
                result_RTC_BAT_32K_bit <= result_RTC_BAT_32K_bit;  
                done_CXC_16M_bit <= done_CXC_16M_bit;
                done_FPGA_100M_bit <= done_FPGA_100M_bit;
                done_CLK100_XTAL_bit <= done_CLK100_XTAL_bit;
                done_PHY1_XTAL_bit <= done_PHY1_XTAL_bit;
                done_PHY2_XTAL_bit <= done_PHY2_XTAL_bit;
                done_RTC_BAT_32K_bit <= done_RTC_BAT_32K_bit; 
        end case;
    end if;
end process;


--********************************************************
--******************RESET SEQUENCE TEST*******************
--********************************************************

TEST_RST_SEQ_PROCESS : process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            state_rst <= S_RST_IDLE;
       else 
            state_rst <= next_state_rst;
       end if;
    end if;
end process;

TEST_RST_SEQ_FSM_PROCESS : process(state_rst, sw_not_programmed, pg_vdimm_com_b0, pg_poreset_com_b0, hreset_com_b0, led_usr_com_b0, led_rst_com_b0, cnt_led_usr_to_btn_reset, cnt_btn_reset_to_btn_reset_off)
begin
    case state_rst is 
        when S_RST_IDLE=>
            if board_started = '1' and pg_vdimm_com_b0 = '1' and sw_not_programmed = '0' then
                next_state_rst <= S_RST_VDIMM;  
            else
                next_state_rst <= S_RST_IDLE;
            end if; 
            
        when S_RST_VDIMM=>
            vdimm_ok <= '1';
            
            if cnt_pgvdimm_to_poreset > x"3938700" then
                next_state_rst <= S_RST_TIMEOUT;
            elsif pg_poreset_com_b0 = '1' then
                next_state_rst <= S_RST_PORESET;  
            else
                next_state_rst <= S_RST_VDIMM;
            end if;
            

        when S_RST_PORESET=>
            poreset_ok <= '1';
            if cnt_poreset_to_hreset > x"3938700" then
                next_state_rst <= S_RST_TIMEOUT;
            elsif hreset_com_b0 = '1' then
                next_state_rst <= S_RST_HRESET;  
            else
                next_state_rst <= S_RST_PORESET;
            end if;
 
        when S_RST_HRESET=>
            hreset_ok <= '1';
            if cnt_hreset_to_led_usr > x"3938700" then
                next_state_rst <= S_RST_TIMEOUT;
            elsif led_usr_com_b0 = '0' then
                next_state_rst <= S_RST_LED_USR;  
            else
                next_state_rst <= S_RST_HRESET;
            end if; 

        when S_RST_LED_USR=>
            led_usr_ok <= '1';
            if cnt_led_usr_to_btn_reset >= x"989680"  then --wait for 10s
                next_state_rst <= S_RST_BTN_RST;  
            else
                next_state_rst <= S_RST_LED_USR;
            end if;

        when S_RST_BTN_RST=>
            if cnt_btn_reset_to_btn_reset_off >= x"3D090" then --wait for 1s
                next_state_rst <= S_RST_BTN_RST_OFF;  
            else
                next_state_rst <= S_RST_BTN_RST;
            end if;
        when S_RST_BTN_RST_OFF=>
            if pg_vdimm_com_b0 = '1'  then 
                next_state_rst <= S_RST_VDIMM_2;  
            else
                next_state_rst <= S_RST_BTN_RST_OFF;
            end if;
        when S_RST_VDIMM_2=>
            vdimm_2_ok <= '1';
            if cnt_pgvdimm_to_poreset_2 > x"3938700" then
                next_state_rst <= S_RST_TIMEOUT;
            elsif pg_poreset_com_b0 = '1' then
                next_state_rst <= S_RST_PORESET_2;  
            else
                next_state_rst <= S_RST_VDIMM_2;
            end if; 
        when S_RST_PORESET_2=>
            poreset_2_ok <= '1';
            if cnt_poreset_to_hreset_2 > x"3938700" then
                next_state_rst <= S_RST_TIMEOUT;
            elsif hreset_com_b0 = '1'  then 
                next_state_rst <= S_RST_HRESET_2;  
            else
                next_state_rst <= S_RST_PORESET_2;
            end if;
        when S_RST_HRESET_2=>
            hreset_2_ok <= '1';
            if cnt_hreset_to_led_usr_2 > x"3938700" then
                next_state_rst <= S_RST_TIMEOUT;
            elsif led_usr_com_b0 = '0'  then 
                next_state_rst <= S_RST_DONE;  
            else
                next_state_rst <= S_RST_HRESET_2;
            end if;
        when S_RST_DONE=>
            rst_done_ok <= '1';
            next_state_rst <= S_RST_DONE;  
            
        when others =>
            next_state_rst <= S_RST_IDLE;
    end case;
end process;   

TEST_RST_SEQ_CNT_process : process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            cnt_pgvdimm_to_poreset  <= (others => '0');
            cnt_poreset_to_hreset  <= (others => '0');
            cnt_hreset_to_led_usr  <= (others => '0');
            cnt_led_usr_to_btn_reset <= (others => '0');
            cnt_btn_reset_to_btn_reset_off <= (others => '0');
            cnt_pgvdimm_to_poreset_2 <= (others => '0');
            cnt_poreset_to_hreset_2  <= (others => '0');
            cnt_hreset_to_led_usr_2  <= (others => '0');
       else 
            case state_rst is
                when S_RST_IDLE => 
                    cnt_pgvdimm_to_poreset <= (others => '0');
                    cnt_poreset_to_hreset <= (others => '0');
                    cnt_hreset_to_led_usr <= (others => '0');
                    cnt_led_usr_to_btn_reset <= (others => '0');
                    cnt_btn_reset_to_btn_reset_off <= (others => '0');
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_VDIMM => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset + '1';
                    cnt_poreset_to_hreset <= (others => '0');
                    cnt_hreset_to_led_usr <= (others => '0');
                    cnt_led_usr_to_btn_reset <= (others => '0');
                    cnt_btn_reset_to_btn_reset_off <= (others => '0');
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_PORESET => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset + '1';
                    cnt_hreset_to_led_usr <= (others => '0');
                    cnt_led_usr_to_btn_reset <= (others => '0');
                    cnt_btn_reset_to_btn_reset_off <= (others => '0');
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_HRESET => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr + '1';
                    cnt_led_usr_to_btn_reset <= (others => '0');
                    cnt_btn_reset_to_btn_reset_off <= (others => '0');
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_LED_USR => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset + '1';
                    cnt_btn_reset_to_btn_reset_off <= (others => '0');
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_BTN_RST => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off + '1';
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_BTN_RST_OFF => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off;
                    cnt_pgvdimm_to_poreset_2 <= (others => '0');
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_VDIMM_2 =>
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off;
                    cnt_pgvdimm_to_poreset_2 <= cnt_pgvdimm_to_poreset_2 + '1';
                    cnt_poreset_to_hreset_2  <= (others => '0');
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_PORESET_2 => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off;
                    cnt_pgvdimm_to_poreset_2 <= cnt_pgvdimm_to_poreset_2;
                    cnt_poreset_to_hreset_2  <= cnt_poreset_to_hreset_2 + '1';
                    cnt_hreset_to_led_usr_2  <= (others => '0');
                when S_RST_HRESET_2 => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off;
                    cnt_pgvdimm_to_poreset_2 <= cnt_pgvdimm_to_poreset_2;
                    cnt_poreset_to_hreset_2  <= cnt_poreset_to_hreset_2;
                    cnt_hreset_to_led_usr_2  <= cnt_hreset_to_led_usr_2 + '1';
                when S_RST_DONE => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off;
                    cnt_pgvdimm_to_poreset_2 <= cnt_pgvdimm_to_poreset_2;
                    cnt_poreset_to_hreset_2  <= cnt_poreset_to_hreset_2;
                    cnt_hreset_to_led_usr_2  <= cnt_hreset_to_led_usr_2;
                    cnt_pgvdimm_to_poreset_for_ILA  <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset_for_ILA <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr_for_ILA <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset_for_ILA <= cnt_led_usr_to_btn_reset;
                    cnt_pgvdimm_to_poreset_2_for_ILA <= cnt_pgvdimm_to_poreset_2;
                    cnt_poreset_to_hreset_2_for_ILA  <= cnt_poreset_to_hreset_2;
                    cnt_hreset_to_led_usr_2_for_ILA <= cnt_hreset_to_led_usr_2;
                    cnt_btn_reset_to_btn_reset_off_for_ILA <= cnt_btn_reset_to_btn_reset_off;
                when others => 
                    cnt_pgvdimm_to_poreset <= cnt_pgvdimm_to_poreset;
                    cnt_poreset_to_hreset <= cnt_poreset_to_hreset;
                    cnt_hreset_to_led_usr <= cnt_hreset_to_led_usr;
                    cnt_led_usr_to_btn_reset <= cnt_led_usr_to_btn_reset;
                    cnt_btn_reset_to_btn_reset_off <= cnt_btn_reset_to_btn_reset_off;
                    cnt_pgvdimm_to_poreset_2 <= cnt_pgvdimm_to_poreset_2;
                    cnt_poreset_to_hreset_2  <= cnt_poreset_to_hreset_2;
                    cnt_hreset_to_led_usr_2  <= cnt_hreset_to_led_usr_2;
            end case;
       end if;
    end if;
end process;

TEST_RST_OUT : process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            btn_rst_t <= '1';
        else 
            if sw_not_programmed = '1' then
                btn_rst_t <= '1';
            else
                case state_rst is
                    when S_RST_BTN_RST =>
                        btn_rst_t <= '0';
                    when others => 
                        btn_rst_t <= '1';
                end case;
            end if;
       end if;
    end if;
end process; 
        

TEST_RST_RESULT : process (state_rst, led_wtd, led_rst)
begin
    if rstn = '0' then 
        result_LED_RST_bit  <= "0";
        result_LED_USR_bit  <= "0";
        result_LED_WTD_bit  <= "0";
        result_BTN_RST_bit  <= "0";
        result_HRESET_bit   <= "0";
        result_RST_SEQ_bit  <= "0";
        done_LED_RST_bit    <= "0";
        done_LED_USR_bit    <= "0";
        done_LED_WTD_bit    <= "0"; 
        done_BTN_RST_bit    <= "0";
        done_HRESET_bit     <= "0";
        done_RST_SEQ_bit    <= "0";
    else
        reg_test_results(16 to 0) <= (others => '0');
        reg_test_results(24 to 23) <= (others => '0');
        case state_rst is
            when S_RST_BTN_RST =>
                result_BTN_RST_bit <= "1";
                done_BTN_RST_bit    <= "1";
                done_LED_RST_bit    <= "1";
                if led_rst = '0' then
                    result_LED_RST_bit <= "1";
                end if;            
            when S_RST_LED_USR => 
                done_LED_WTD_bit <= "1";
                done_LED_USR_bit    <= "1";
                result_LED_USR_bit <= "1";
                if led_wtd = '0' then
                    result_LED_WTD_bit <= "1";
                else 
                    result_LED_WTD_bit <= "0";
                end if;   
            when S_RST_DONE => 
                --counter based on 1MHz clock 
                --timing tested : 
                -- pg_vdimm to poreset : > 4ms, ...
                if cnt_pgvdimm_to_poreset > x"FA0" and cnt_poreset_to_hreset < x"61A80" 
                and cnt_hreset_to_led_usr < x"3938700" and cnt_pgvdimm_to_poreset_2 > x"FA0" 
                and cnt_poreset_to_hreset_2 < x"61A80" and cnt_hreset_to_led_usr_2 < x"3938700" then
                    result_RST_SEQ_bit <= "1";
                else 
                    result_RST_SEQ_bit <= "0";
                end if;
                
                if cnt_poreset_to_hreset < x"61A80" and cnt_hreset_to_led_usr < x"3938700" then
                    result_HRESET_bit <= "1";
                else 
                    result_HRESET_bit <= "0";
                    
                end if; 
                done_HRESET_bit <= "1";
                done_RST_SEQ_bit    <= "1";               
                tests_done(3) <= '1';
            when S_RST_TIMEOUT => 
                done_LED_RST_bit    <= "1";
                done_LED_USR_bit    <= "1";
                done_LED_WTD_bit    <= "1"; 
                done_BTN_RST_bit    <= "1";
                done_HRESET_bit     <= "1";
                done_RST_SEQ_bit    <= "1";
                result_LED_RST_bit    <= "0";
                result_LED_USR_bit    <= "0";
                result_LED_WTD_bit    <= "0"; 
                result_BTN_RST_bit    <= "0";
                result_HRESET_bit     <= "0";
                result_RST_SEQ_bit    <= "0";
            when others =>
                result_RST_SEQ_bit  <= result_RST_SEQ_bit ; 
            end case;
    end if;
end process;    


ENABLE_LEDs : process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            en_led0 <= '0';
            en_led1 <= '0';
        else 
            en_led0 <= '1';
            if sw_not_programmed = '1' then
                en_led1 <= '0'; 
            elsif sw_not_programmed = '0' then
                en_led1 <= '1';  
            end if;
       end if;
    end if;
end process;

TESTING : process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            done_TESTING_bit <= "1";
            result_TESTING_bit <= "0";
            done_READY_bit <= "1";
            result_READY_bit <= "0";
        else 
            done_READY_bit <= "1";
            result_READY_bit <= "1";
            if board_started = '1' then
                result_READY_bit <= "0";
                if sw_not_programmed = '1' then 
                    if tests_done(2 downto 0) = b"111" then
                        done_TESTING_bit <= "1";
                        result_TESTING_bit <= "0";
                        result_READY_bit <= "1";
                    else 
                        done_TESTING_bit <= "0";
                    end if;
                elsif sw_not_programmed = '0' then 
                    if tests_done = b"1111" then 
                        done_TESTING_bit <= "1";
                        result_TESTING_bit <= "0";
                        result_READY_bit <= "1";
                    else 
                        done_TESTING_bit <= "0";
                    end if;
                end if;
            end if;
        end if;
    end if;
end process;
          


test_results <= reg_test_results;
test_done <= reg_test_done;
clk_slow <= clk_slow_b0;

end Behavioral;