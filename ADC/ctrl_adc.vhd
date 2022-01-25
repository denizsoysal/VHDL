
--Author : Deniz Soysal 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity ctrl_adc is
    generic(
    
        C_LENGTH           : integer range 0 to 255 := 12;
--        C_NUMBER_INPUT     : integer range 0 to 255 := 8;
        C_LENGTH_CONFIG    : integer range 0 to 255 := 8
        
    );
    port( 
        rstn            : in std_logic;
        clk             : in std_logic;
        ADC_eoc         : in std_logic;
                
        --sequencer - controller communication
        --first 4 bits : config, last 4 bits : select analog input
        --en soit, on peut utiliser la même variable que la variable où on lit
        --juste que la variable où on lit est sur 12 bits
        --il faut donc rajouter 4 bits à zéros à la fin

        AIN0_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN1_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN2_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN3_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN4_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN5_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN6_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN7_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN8_value : out std_logic_vector(C_LENGTH - 1 downto 0);
        AIN9_value : out std_logic_vector(C_LENGTH - 1 downto 0);

        ---------Axi lite protocol, master ---------
        --simplified version of the Axi lite protocol
        --Data and adress are written/read on the same register
        --only 6 signals are necessary
        
        w_valid         : out    std_logic := '0'; 
        w_ready           : in   std_logic;
        r_ready           : out   std_logic := '0';
        r_valid         : in   std_logic ; 
        r_data     : in   std_logic_vector(C_LENGTH - 1 downto 0); 
        w_data     : out    std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0') 
        
        
        
    
    );
end ctrl_adc;

architecture Behavioral of ctrl_adc is

type state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_IDLE,
    S_CONFIG_AIN0,
    S_READ_AIN8,
    S_CONFIG_AIN1,
    S_READ_AIN9,
    S_CONFIG_AIN2,
    S_READ_AIN0,
    S_CONFIG_AIN3,
    S_READ_AIN1,
    S_CONFIG_AIN4,
    S_READ_AIN2,
    S_CONFIG_AIN5,
    S_READ_AIN3,
    S_CONFIG_AIN6,
    S_READ_AIN4,
    S_CONFIG_AIN7,
    S_READ_AIN5,
    S_CONFIG_AIN8,
    S_READ_AIN6,
    S_CONFIG_AIN9,
    S_READ_AIN7
    );

signal state            : state_type := S_IDLE;
signal next_state       : state_type := S_IDLE;

signal first_data       : std_logic := '0';



signal ADC_eoc_d0        : std_logic := '0';
signal ADC_eoc_d1        : std_logic := '0';
signal rising_edge_ADC_eoc        : std_logic := '0';

signal AIN0_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN1_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN2_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN3_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN4_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN5_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN6_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN7_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN8_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');
signal AIN9_value_b0    : std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0');

begin
process(clk)
begin
    ADC_eoc_d0 <= ADC_eoc;
    if rising_edge(clk) then
        if rstn = '0' then
            ADC_eoc_d0 <= '0';
            ADC_eoc_d1 <= '0';
            rising_edge_ADC_eoc <= '0';
        else
            ADC_eoc_d1 <= ADC_eoc_d0;
            if ADC_eoc_d0 = '1' and ADC_eoc_d1 = '0' then
                rising_edge_ADC_eoc <= '1';
            else 
                rising_edge_ADC_eoc <= '0';
            end if;
        end if;
    end if;
end process;


------------------------------------------------------------------
-- FSM CONTROLLER
------------------------------------------------------------------
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



process(state, w_ready, r_valid, rising_edge_ADC_eoc)
begin
    case state is 
        when S_IDLE =>
            if w_ready = '1' then 
                next_state <= S_CONFIG_AIN0;
            else 
                   next_state <= S_IDLE;
            end if;                      
        when S_CONFIG_AIN0 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN9;
            else
                next_state <= S_CONFIG_AIN0;
            end if;      
        when S_READ_AIN9 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN1;
            else
                next_state <= S_READ_AIN9;
            end if;
        when S_CONFIG_AIN1 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN0;
            else
                next_state <= S_CONFIG_AIN1;
            end if;
        when S_READ_AIN0 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN2;
            else
                next_state <= S_READ_AIN0;
            end if;
        when S_CONFIG_AIN2 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN1;
            else
                next_state <= S_CONFIG_AIN2;
            end if;
        when S_READ_AIN1 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN3;
            else
                next_state <= S_READ_AIN1;
            end if;
        when S_CONFIG_AIN3 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN2;
            else
                next_state <= S_CONFIG_AIN3;
            end if;
        when S_READ_AIN2 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN4;
            else
                next_state <= S_READ_AIN2;
            end if;
        when S_CONFIG_AIN4 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN3;
            else
                next_state <= S_CONFIG_AIN4;
            end if;
        when S_READ_AIN3 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN5;
            else
                next_state <= S_READ_AIN3;
            end if;
        when S_CONFIG_AIN5 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN4;
            else
                next_state <= S_CONFIG_AIN5;
            end if;
        when S_READ_AIN4 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN6;
            else
                next_state <= S_READ_AIN4;
            end if;
        when S_CONFIG_AIN6 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN5;
            else
                next_state <= S_CONFIG_AIN6;
            end if;
        when S_READ_AIN5 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN7;
            else
                next_state <= S_READ_AIN5;
            end if;
        when S_CONFIG_AIN7 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN6;
            else
                next_state <= S_CONFIG_AIN7;
            end if;
        when S_READ_AIN6 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN8;
            else
                next_state <= S_READ_AIN6;
            end if;
        when S_CONFIG_AIN8 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN7;
            else
                next_state <= S_CONFIG_AIN8;
            end if;
        when S_READ_AIN7 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN9;
            else
                next_state <= S_READ_AIN7;
            end if;
        when S_CONFIG_AIN9 =>
            if  w_ready = '0' then
                next_state <= S_READ_AIN8;
            else
                next_state <= S_CONFIG_AIN9;
            end if;
        when S_READ_AIN8 =>
            if  rising_edge_ADC_eoc = '1' then
                next_state <= S_CONFIG_AIN0;
            else
                next_state <= S_READ_AIN8;
            end if;
     end case;          
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
                    w_data <= (others => '0');
                when S_READ_AIN0 | S_READ_AIN1 | S_READ_AIN2 | S_READ_AIN3 | S_READ_AIN4 | 
                     S_READ_AIN5 | S_READ_AIN6 | S_READ_AIN7 | S_READ_AIN8 | S_READ_AIN9  => 
                    r_ready <= '1';
                    w_valid <= '0';
                    w_data <= (others => '0');
                
                when S_CONFIG_AIN0=> 
                    r_ready <= '1';
                    w_data <= b"000000000000";     
                    w_valid <= '1';
                when S_CONFIG_AIN1 => 
                    r_ready <= '1';
                    w_data <= b"000100000000";     
                    w_valid <= '1';
                when S_CONFIG_AIN2=> 
                    r_ready <= '1';
                    w_data <= b"001000000000";     
                    w_valid <= '1';
                when S_CONFIG_AIN3 => 
                    r_ready <= '1';
                    w_data <= b"001100000000";     
                    w_valid <= '1'; 
                when S_CONFIG_AIN4=> 
                    r_ready <= '1';
                    w_data <= b"010000000000";     
                    w_valid <= '1';
                when S_CONFIG_AIN5 => 
                    r_ready <= '1';
                    w_data <= b"010100000000";     
                    w_valid <= '1'; 
                when S_CONFIG_AIN6=> 
                    r_ready <= '1';
                    w_data <= b"011000000000";     
                    w_valid <= '1';
                when S_CONFIG_AIN7 => 
                    r_ready <= '1';
                    w_data <= b"011100000000";     
                    w_valid <= '1'; 
                when S_CONFIG_AIN8=> 
                    r_ready <= '1';
                    w_data <= b"100000000000";     
                    w_valid <= '1';
                when S_CONFIG_AIN9 => 
                    r_ready <= '1';
                    w_data <= b"100100000000";     
                    w_valid <= '1';      
                when others =>
                    null;      
             end case;
         end if;          
     end if;
end process;
-- 2) Received data

process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            
            AIN0_value_b0 <= (others => '0');
            AIN1_value_b0 <= (others => '0');
            AIN2_value_b0 <= (others => '0');
            AIN3_value_b0 <= (others => '0');
            AIN4_value_b0 <= (others => '0');
            AIN5_value_b0 <= (others => '0');
            AIN6_value_b0 <= (others => '0');
            AIN7_value_b0 <= (others => '0');
            AIN8_value_b0 <= (others => '0');
            AIN9_value_b0 <= (others => '0');

        else     
            AIN0_value_b0 <= AIN0_value_b0;
            AIN1_value_b0 <= AIN1_value_b0;
            AIN2_value_b0 <= AIN2_value_b0;
            AIN3_value_b0 <= AIN3_value_b0;
            AIN4_value_b0 <= AIN4_value_b0;
            AIN5_value_b0 <= AIN5_value_b0;
            AIN6_value_b0 <= AIN6_value_b0;
            AIN7_value_b0 <= AIN7_value_b0;
            AIN8_value_b0 <= AIN8_value_b0;
            AIN9_value_b0 <= AIN9_value_b0; 
            
            if r_valid = '1' then
                case state is
                    when S_READ_AIN0=>
                        AIN0_value_b0 <= r_data;
                    when S_READ_AIN1=>
                        AIN1_value_b0 <= r_data;
                    when S_READ_AIN2=>
                        AIN2_value_b0 <= r_data;
                    when S_READ_AIN3=>
                        AIN3_value_b0 <= r_data;
                    when S_READ_AIN4=>
                        AIN4_value_b0 <= r_data;
                    when S_READ_AIN5=>
                        AIN5_value_b0 <= r_data;
                    when S_READ_AIN6=>
                        AIN6_value_b0 <= r_data;
                    when S_READ_AIN7=>
                        AIN7_value_b0 <= r_data;
                    when S_READ_AIN8=>
                        AIN8_value_b0 <= r_data;
                    when S_READ_AIN9=>
                        AIN9_value_b0 <= r_data;
                    when others =>
                        null;          
                end case;     
            end if;
         end if;          
     end if;
end process; 

AIN0_value <= AIN0_value_b0;
AIN1_value <= AIN1_value_b0;
AIN2_value <= AIN2_value_b0;
AIN3_value <= AIN3_value_b0;
AIN4_value <= AIN4_value_b0;
AIN5_value <= AIN5_value_b0;
AIN6_value <= AIN6_value_b0;
AIN7_value <= AIN7_value_b0;
AIN8_value <= AIN8_value_b0;
AIN9_value <= AIN9_value_b0;   


end Behavioral;