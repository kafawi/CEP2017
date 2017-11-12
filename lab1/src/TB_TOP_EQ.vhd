library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TB_TOP_EQ is                                      -- external ports.
end TB_TOP_EQ;

architecture VERHALTEN of TB_TOP_EQ is


component TOP_EQ
   port(
--
      N_RESET,CLK: in std_logic;
--
      ARPE, OCPE : in std_logic;
--      PERIOD, HIGH_LEV : in std_logic_vector (15 downto 0);
      CNT : out std_logic_vector (15 downto 0);
      PWM_SIG : out std_logic;
--
--    DIGITS : in std_logic_vector(7 downto 0);
      ANODE  : out std_logic_vector(3 downto 0);
      A_TO_G : out std_logic_vector(6 downto 0)
   );
end component;
signal ENABLE: std_logic;
signal CLK, N_RESET, ARPE, OCPE, PWM : std_logic;
signal CNT : std_logic_vector(15 downto 0); 

begin
N_RESET <= '0', '1' after 100 ns;
ENABLE <= '1';
ARPE <= '1';
OCPE <= '1';
TAKTGEN:process  -- CLK 
begin
  CLK <= '0';
  wait for 20 ns;
  CLK <= '1';
  wait for 20 ns;
end process TAKTGEN;

DUT: entity work.TOP_EQ(VERHALTEN) 
--DUT: entity work.TOP_EQ(Structure)  -- device under Test
  port map ( 
    CLK => CLK, N_RESET => N_RESET,
    ARPE => ARPE, OCPE => OCPE,
    --PERIOD => PERIOD, HIGH_LEV => HIGH_LEV,
    CNT => CNT, PWM_SIG => PWM
--    DIGITS => DIGIT_DUMMY
   );

end architecture;
