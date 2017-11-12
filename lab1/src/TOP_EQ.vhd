library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TOP_EQ is                                      -- external ports.
   port(
    -- GLOBAL PARAMET
      N_RESET,CLK: in std_logic;
    -- PWN In and OUTS
      ARPE, OCPE : in std_logic;
      -- PERIOD, HIGH_LEV : in std_logic_vector(15 downto 0);
      CNT : out std_logic_vector (15 downto 0);
      PWM_SIG, LED : out std_logic;
		
    -- X_2_7Segment IN/OUT
    --  DIGITS : in std_logic_vector(7 downto 0);
      ANODE  : out std_logic_vector(3 downto 0);
      A_TO_G : out std_logic_vector(6 downto 0)
     -- CLOCKS I/O
      -- CLK_IN1  : in std_logic;
      -- CLK_OUT1 : out std_logic; 
      -- CLK_OUT2 : out std_logic;
      -- LOCKED   : out std_logic;
   );
end TOP_EQ;

architecture VERHALTEN of TOP_EQ is

constant PERIOD   : std_logic_vector(15 downto 0) := "0000001000111000"; -- 568 :T_st / T_clk = 56181 ~ 568 *100
constant SHRT_PER : std_logic_vector(15 downto 0) := "0000000001100100";  -- 100  SHORT_PERIODE
signal HIGH_LEV   : std_logic_vector(15 downto 0) :="0000000000000000";

signal ENABLE    : std_logic := '1';
signal PRD_CNT   : std_logic_vector (15 downto 0); -- Count in 100 ticks to PERIODE 568
signal CNT_EN    : std_logic;                       -- CNT_EN is thrown by SHORTTIMER to enables one incrementation in HL_SHIFT

signal DIGIT_DUMMY : std_logic_vector(7 downto 0) := "11111111";  -- 0xFF

component X_2_7Segment
   port( 
      CLK   : in  std_logic;
	    DIGITS : in  std_logic_vector(7 downto 0);-- 
	    ANODE  : out std_logic_vector(3  downto 0);
	    A_TO_G : out std_logic_vector(6  downto 0)
	 );
end component;

component PWM
   port(
      CLK, N_RESET, ENABLE: in std_logic;
      ARPE, OCPE : in std_logic;
      PERIOD, HIGH_LEV : in std_logic_vector(15 downto 0);
      CNT : out std_logic_vector(15 downto 0);
      PWM : out std_logic
   );
end component PWM;

component COUNTER -- pseudo clocks for highlevel
   port(
     CLK, N_RESET, ENABLE : in std_logic;   
     LIMIT                : in std_logic_vector(15 downto 0);
     CNT                  : out std_logic_vector(15 downto 0);
     TICK                 : out std_logic
   );
end component COUNTER;
begin
PWM_INT: PWM
  port map ( 
    CLK => CLK, N_RESET => N_RESET, ENABLE => ENABLE,
    PERIOD => PERIOD , HIGH_LEV => HIGH_LEV, 
    ARPE => ARPE, OCPE => OCPE,
    CNT => CNT, PWM => PWM_SIG
   );

SEG7 : X_2_7Segment
   port map(
      CLK => CLK,
	    DIGITS => DIGIT_DUMMY,
	    ANODE => ANODE,
	    A_TO_G => A_TO_G
  );

-- CLOCKS FOR HIGH_LEV
-- SHORTTIMER TO 100 that throws an enable for the long term Timer LONG_CLK
SHORT_CLK: COUNTER
   port map (
       CLK => CLK, N_RESET => N_RESET, ENABLE => ENABLE,   
       LIMIT => SHRT_PER,
       TICK => CNT_EN
   );
-- LONGTIMER: Counts in 100 * 1/f_clk steps to PERIODE 568
LONG_CLK: COUNTER
   port map (
      CLK => CLK, N_RESET => N_RESET, ENABLE => CNT_EN, 
      CNT => PRD_CNT,  
      LIMIT => PERIOD
   );

HIGH_LEV <= PRD_CNT(15 downto 0);

end architecture VERHALTEN;
