library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PWM is                                      -- external ports.
   port(
      CLK, N_RESET ,ENABLE: in std_logic;
      ARPE, OCPE : in std_logic;
      PERIOD, HIGH_LEV : in std_logic_vector (15 downto 0);
      CNT : out std_logic_vector (15 downto 0);
		  PWM : out std_logic
   );
end PWM;

architecture VERHALTEN of PWM is
signal ARR, CCR, CNT_INT, ARR_SHD, CCR_SHD : std_logic_vector(15 downto 0);
signal PWM_INT : std_logic;
signal UEV     : std_logic;
signal CNT_CMP : std_logic;

component DFF16    -- Register / FLIP FLOPS 16 bit low active asynhron RESET
   port(
      CLK, N_RESET, ENABLE : std_logic;   
      INPUT                : in std_logic_vector(15 downto 0);
      OUTPUT               : out std_logic_vector(15 downto 0)
   );
end component;

component DFF -- DATEN FLIP FLOP 1 bit, low active asynchron RESET
   port(    
      CLK, N_RESET, ENABLE : in std_logic;   
      D                    : in std_logic;
      Q                    : out std_logic
   );
end component;

component COUNTER 
   port(
     CLK, N_RESET, ENABLE : in std_logic;   
     LIMIT                : in std_logic_vector(15 downto 0);
     CNT                  : out std_logic_vector(15 downto 0);
     TICK                 : out std_logic
   );
end component;

--component-declaration: used PWM

begin
PERIOD_DFF: DFF16
port map ( CLK => CLK, N_RESET => N_RESET, ENABLE => ARPE, INPUT => PERIOD, OUTPUT => ARR);
         
HIGH_LEV_DFF: DFF16
port map ( CLK => CLK, N_RESET => N_RESET, ENABLE => OCPE, INPUT => HIGH_LEV, OUTPUT => CCR);
         
ARR_DFF: DFF16
port map ( CLK => CLK, N_RESET => N_RESET, ENABLE => UEV, INPUT => ARR, OUTPUT => ARR_SHD);

CCR_DFF: DFF16
port map ( CLK => CLK, N_RESET => N_RESET, ENABLE => UEV, INPUT => CCR, OUTPUT => CCR_SHD);

CNT_FSM: COUNTER
port map ( CLK => CLK, N_RESET => N_RESET, ENABLE => ENABLE, LIMIT => ARR_SHD, CNT => CNT_INT, TICK => UEV);
CNT <= CNT_INT;

CMP_DFF: DFF
port map ( CLK => CLK, N_RESET => N_RESET, ENABLE => ENABLE, D => CNT_CMP, Q => PWM_INT);
PWM <= PWM_INT;

  CMP: process(CNT_INT, CCR_SHD)
    begin
      if CNT_INT < CCR_SHD then 
        CNT_CMP <= '1' after 5 ns;
      else
        CNT_CMP <= '0' after 5 ns;
      end if; 
    end process;
end VERHALTEN;
