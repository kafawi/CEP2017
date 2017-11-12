
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TEST_BENCH is				-- keine externen Signale
generic(
    HCLK   : time:=5.8823529411765 ns; -- 170MHz
	SAMPLES: positive:= 128
);
end  TEST_BENCH;

architecture TOPEQ_TB of TEST_BENCH is

component TOP_EQ is
port(
    --in
    CLK: in std_logic;
    N_RESET : in std_logic;
    DATA:inout std_logic_vector(15 downto 0);
    NOE,NE,NWE:in std_logic;
    -- out
    LOCKED:out std_logic;
    RDY:out std_logic
   );
end component;

-- connection
signal RDY:std_logic := '0'; -- Ausgang
signal DATA:std_logic_vector(15 downto 0) := (others=>'0');
signal NOE,NE,NWE:std_logic;
signal CLK25,N_RESET:std_logic := '0';
signal LOCKED_I:std_logic := '0'; -- Ausgang
-- helping sigs
signal DATA_VALUE: std_logic_vector(15 downto 0):=(others=>'0');
signal CNT: std_logic_vector(15 downto 0):=(others =>'0'); 
signal GAUSS:  integer := 0;
-- Test passed?
signal DATA_INT : integer := 0;
signal PASSED : std_logic := '0'; 

begin
DUT: entity work.TOP_EQ(Structure) -- timing sim
--DUT: entity work.TOP_EQ(BEHAV) -- vhdl sim
port map(
    CLK => CLK25,
    N_RESET => N_RESET,
    DATA => DATA,
    NOE => NOE,NE => NE,NWE => NWE,
    -- out
    LOCKED => LOCKED_I,
    RDY => RDY
);

--25 MHz Clock
CLOCK:process
begin
	CLK25 <= '0'; wait for 20 ns;
	CLK25 <= '1'; wait for 20 ns;
end process;
-- MODE 1
TSEQ : process
  variable NUM: integer range 0 to SAMPLES + 2;
begin

  N_RESET <= '0';
  GAUSS <= 0;

  wait for (HCLK *4);
  -- INIT all to default
  N_RESET <= '1';
  NE <= '1'; NOE <= '1'; NWE <= '1';
  DATA <= (others => 'Z');
  NUM := 0;
  wait for (HCLK *4);
  while NUM <= SAMPLES +1 loop
    -- wait for locked
    if LOCKED_I = '0' then
      wait until LOCKED_I = '1';
    end if;
    -- WRITE
    -- -- ADDSET
    NE <= '0';
    wait for (HCLK);
    -- -- DATAST + 1
    NWE <= '0'; -- enable write
    DATA <= std_logic_vector(to_unsigned(NUM, 16)); --cast
    wait for (HCLK *2); -- datast
    -- -- back to default
    NWE <= '1'; -- disable write
    wait for (HCLK); -- +1
    NE <= '1';  
    DATA <= (others => 'Z');
    wait for (HCLK); -- pass some time between read and write
    -- READ
    -- -- ADDSET+1
    NE <= '0';
    NOE <= '0';  -- enable read
    wait for (HCLK);
    -- -- DATAST+1
    DATA_VALUE <=  DATA; -- read
    wait for (HCLK *2);
    NOE <= '1'; -- disable read;
    NE <= '1';
	DATA_VALUE <=  DATA; -- read
    wait for (HCLK);  -- pass some time between read and write

    -- COMPARE
    GAUSS <= (NUM*NUM+NUM)/2;
    DATA_INT <= to_integer(unsigned(DATA_VALUE));
    if GAUSS = DATA_INT then
      PASSED <= '1';
    else 
      PASSED <= '0';
    end if;
    NUM := NUM +1;
  end loop;
  wait;
end process TSEQ;

end TOPEQ_TB;
