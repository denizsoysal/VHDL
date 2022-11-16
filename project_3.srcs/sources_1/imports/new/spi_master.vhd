----------------------------------------------------------------------------------
-- Company:         GENITEK
-- Engineer:        Deniz
-- 
-- Project Name:    4620ICTBRD FPGA
-- Target Devices:  
-- Tool Versions:   VIVADO 2020.1
-- SVN info:        $Id: bob.vhd 367 2018-08-03 07:35:19Z ldf@genitek.be $
-- Description:     SPI master
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

entity spi_master is
    generic(
    -- Length to define by controller
    -- Length : data + adress 
    -- For io exp : write on 32 bits 
    -- For ADC : write and read on 12 bits
        C_LENGTH        : integer range 0 to 255;
        C_SPI_CPOL      : std_logic :=  '0'; -- clock polarity
        C_SPI_CPHA      : std_logic :=  '0' -- clock phase
    );
    port(
    --controller interface
        rstn            : in    std_logic ;
        clk             : in    std_logic;
        --no need anymore to r_wn I guess, because we have only one state named "data"
        --r_wn            : in    std_logic; --read write
        
        
        -- p.s. : la valeur du r_wn se trouve aussi dans le dernier bit de l'adresse du slave
        -- il faudra peut-être la déduire de là au lieu de considérer que c'est une entrée
        -- du controleur 
        --mais ceci se passe au niveau du séquenceur 
                
        ---------Axi lite protocol, slave ---------
        --simplified version of the Axi lite protocol
        --Data and adress are written/read on the same register
        --only 6 signals are necessary
        
        w_valid         : in    std_logic; 
        w_ready           : out   std_logic := '0';
        r_ready           : in   std_logic;
        r_valid         : out   std_logic := '0'; 
        r_data     : out   std_logic_vector(C_LENGTH - 1 downto 0) := (others => '0'); 
        w_data     : in    std_logic_vector(C_LENGTH - 1 downto 0); 
        
        --spi interface
        spi_miso        : in    std_logic;          -- master input slave ouput
        spi_mosi        : out   std_logic := '1';   -- master output slave input
        spi_clk         : out   std_logic := '0';   -- clock
        spi_csn         : out   std_logic := '1'    -- chip select
    );
    end spi_master;
 
architecture Behavioral of spi_master is
    
  --definition of the FSM :
type state_type is( --declaration of a new type, state_type, with default value : IDLE
    S_IDLE,
    S_CS,
    --S_ADDR, -- writing of addresses
    S_DATA, -- data transmission
    S_SYNC --turn around, quand on a fini la lecture/ecriture on passe dans cet etat, et puis t last =1, puis on repasse en idle
    );    

signal state            : state_type := S_IDLE;
signal next_state       : state_type := S_IDLE;

--on aura plus besoin de 2 compteurs différents alors
--signal addr_cnt         : integer range 0 to 255 := 0;
--signal data_cnt         : integer range 0 to 255 := 0;
signal cnt         : integer range 0 to 255 := 0;

--signal t_first          : std_logic := '0';

--tout init à 0 ou par defaut
signal r_data_b0   : std_logic_vector(C_LENGTH - 1 downto 0 ) := (others => '0'); -- buffer of data_read
signal w_data_b0   : std_logic_vector(C_LENGTH - 1 downto 0 ) := (others => '0'); -- buffer of data_write
signal r_valid_b0   : std_logic := '0';
signal clk_en           : std_logic := '0';
--comment louis : certains adc ont besoin d'une clk en continu
--si le cas ici, faire que l'adc ait tjrs
begin
-----------------------------------------------------------------------------------
--FSM SPI
-----------------------------------------------------------------------------------    
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

process(state, w_valid, r_ready, cnt, r_valid_b0)
begin
    case state is 
        when S_IDLE =>
            if w_valid = '1' then
            --là ce qui se passe c'est que si le controlleur a fait 
            --une demande d'écriture et de lecture
            --on passe en mode data où on fait la transmission des données
            --dans les 2 sens
            --après, c'est le controlleur qui sait si il a fait une demande
            --de lecture ou d'écriture et donc quel registre
            --il faut qu'il regarde
                next_state <= S_CS;
            else
                next_state <= S_IDLE;
            end if;
            
        when S_CS =>
            next_state <= S_DATA;
        
        when S_DATA => 
            if (cnt >= C_LENGTH - 1) then
                next_state <= S_SYNC;
            else
                next_state <= S_DATA;
            end if; 
--        when S_ADDR =>
--            if (addr_cnt >= C_LENGTH_ADDR - 1) then 
--                if r_wn = '0' then
--                    next_state <= S_WRITE;
--                else 
--                    next_state <= S_READ;
--                end if;
--            else
--                next_state <= S_ADDR;
--            end if;
                    
--        when S_READ =>
--            if (data_cnt >= C_LENGTH_DATA - 1) then
--                next_state <= S_SYNC;
--            else
--                next_state <= S_READ;                          
--            end if;            
            
--        when S_WRITE =>
--            if (data_cnt >= C_LENGTH_DATA - 1) then
--                next_state <= S_SYNC;
--            else
--                next_state <= S_WRITE;            
--            end if;
            
        when S_SYNC =>
            if r_ready = '1'and r_valid_b0 = '1' then 
                next_state <= S_IDLE;
            end if;
            
        when others =>
            next_state <= S_IDLE;
    end case;
end process;
    
-------------------------------------------------------------------------------
-- FSM Control & Output Signals 
-------------------------------------------------------------------------------
-- 0) Counter
process(clk)
begin
    if rising_edge(clk) then
        if rstn = '0' then
            cnt <= 0;
        else
            case state is 
                when S_IDLE | S_CS =>
                    cnt <= 0;

                when S_DATA =>
                    cnt <= cnt +1 ;
               when others =>
                    cnt <= cnt;
            end case;
        end if;
    end if;
end process;   

-- 2) Data transfer for read/write operation
process(clk)
begin
    if rising_edge(clk) then
        if rstn ='0' then 
            spi_csn <= '1';
            spi_mosi <= '1';
            w_ready <= '0';
            r_valid_b0 <= '0';
            clk_en <= '0';
            w_data_b0 <= (others => '0');
        else
            case state is 
                when S_IDLE =>
                    w_ready <= '1';
                    r_valid_b0 <= '0';
                    spi_csn <= '1';   
                    spi_mosi <='1';
                    clk_en <= '0';
                    
                    w_data_b0 <= w_data; 


                when S_CS =>
                    w_ready <= '0';
                    r_valid_b0 <= '0';
                    spi_csn <= '0';
                    spi_mosi <= '1';
                    clk_en <= '0';


                when S_DATA =>
                    w_ready <= '0';
                    r_valid_b0 <= '0';
                    spi_csn <= '0';
                    clk_en <= '1';      
                    spi_mosi <= w_data_b0(C_LENGTH - 1 - cnt);

                when S_SYNC =>
                    w_ready <= '0';
                    r_valid_b0 <= '1';
                    spi_mosi <= '1';
                    spi_csn <= '1';   
                    clk_en <= '0';       
                        
                when others =>
                    w_ready <= '0';
                    r_valid_b0 <= '0';
                    spi_csn <= '1';
                    spi_mosi <= '1';
                    clk_en <= '0';
                   
             end case;
        end if; 
    end if;
end process;

-- 2) Data read operation
-- read se fait sur flanc descendant de clk car le slave envoie sur spi_clk qui est inversé par rapport à clk
--mais il faut ignorer le premier flanc descendant, cela se fait en commençant quand clk = 1
process(clk)
begin
    if falling_edge(clk) then
        if rstn ='0' then 
            r_data_b0 <= (others =>'0');
            r_data <= (others =>'0');
            
        else

            case state is 
                when S_IDLE =>
                    r_data_b0 <= r_data_b0;
                when S_CS =>
                    r_data_b0 <= r_data_b0;
                    
                when S_DATA =>
                    if cnt = 0 then
                        r_data_b0 <= r_data_b0;
                    else
                        r_data_b0(C_LENGTH - cnt) <= spi_miso;  
                    end if;
                    --p.s. : 
                    --ça marche aussi si je fais 
                    --r_data(C_LENGTH - 1 - cnt) <= spi_miso;
                    --directement
                    --dans ce cas le registre se rempli au fur et à mesure
                    --mais je pense que c'est mieux d'avoir un registre interne que l'on rempli au fur et à mesure
                    --et un registre externe que l'on expose au controleur
                    --comme cela, pendant qu'on rempli le registre interne
                    --le controleur peut lire le registre externe
                when S_SYNC =>
                    r_data <= r_data_b0;
                when others =>
                    r_data_b0 <= (others =>'0');
                    r_data <= (others =>'0');                   
             end case;
        end if; 
    end if;
end process;
r_valid <= r_valid_b0;


-- 3) Clock output
process(clk)
begin
    if clk_en = '1' then
        spi_clk <= not clk;
    else
        spi_clk <= '0';
    end if;
end process;

end Behavioral;