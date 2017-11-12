-- --------------------------------------------------------- TOP_EQ
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity TOP_EQ is 
   port( 
      CLK: in std_logic;
      N_RESET : in std_logic;
      DATA:inout std_logic_vector(15 downto 0);
      NOE,NE,NWE:in std_logic;
      LOCKED:out std_logic;
      RDY:out std_logic
   );
end TOP_EQ;

architecture BEHAV of TOP_EQ is
-- ---------------------------------- COMPONENT DEKLARATIONS
component EQ_PE is
   port(
      -- IN
      CLK_PE  : in std_logic;
      N_RESET : in std_logic;
      START   : in std_logic;
      Y       : in std_logic_vector(15 downto 0);
      -- OUT
      RDY     : out std_logic;
      W       : out std_logic_vector(15 downto 0)
   );
end component;
component clk_wiz_v3_6 is
    port(
        CLK_IN1           : in     std_logic;
        CLK_OUT1          : out    std_logic;
        CLK_OUT2          : out    std_logic;
        LOCKED            : out    std_logic
    );
end component;
-- ---------------------------------- SIGNALS
-- CLKS and RESET
signal CLK_PE  : std_logic;
signal CLK_SYN : std_logic;
signal NRESET_I: std_logic;
signal LOCK_I  : std_logic;
signal W       : std_logic_vector(15 downto 0);
-- SIGNALS after LEV 2
signal TRISTATE : std_logic; -- NE_SYN2 or NOE_SYN2
signal NWE_PSH  : std_logic; -- NWE_SYN3 & not NWE_SYN2 - pulse shorter
signal PSH_OUT  : std_logic; -- NWE_PSH & not NE_SYN2 -   pulse shorter
signal Y        : std_logic_vector(15 downto 0);  --      data path
-- SIGNAL after LEV 4
signal EN : std_logic;
-- PULSE STRECHER 
signal Q_PST   : std_logic; -- intern Pulse strecher - LEV 5
signal START   : std_logic;   -- out PULSE_STRECHER  - LEV 6 triggert by CLK_PE

signal NWE_SYN  : std_logic_vector(2 downto 0)  := "000";
signal NE_SYN   : std_logic_vector(1 downto 0)  := "00";
signal NOE_SYN  : std_logic_vector(1 downto 0)  := "00";
signal D_SYN : std_logic_vector(31 downto 0) := (others=>'0');


begin
-- ---------------------------------- INSANZE of COMPONENTs

EQ_PE_I:entity work.EQ_PE 
port map(
   CLK_PE => CLK_PE,
   N_RESET => NRESET_I,
   START => START,
   Y => Y,
   RDY => RDY,
   W => W
);

--CLK_GEN:entity work.clk_wiz_v3_6(BEHAVE) -- vhdl sim 
CLK_GEN: entity work.clk_wiz_v3_6(xilinx) -- timing sim
port map(
   CLK_IN1 => CLK,
   CLK_OUT1 => CLK_PE,
   CLK_OUT2 => CLK_SYN,
   LOCKED => LOCK_I
);
NRESET_I <= LOCK_I and N_RESET;
LOCKED <= LOCK_I;
-- ---------------------- PROCESSES -----------------------------------
-- ------------------------------------------------------CLK_SYN UPDATE

 SYN: process(CLK_SYN, NRESET_I)
 begin
   if NRESET_I = '0' then
      NWE_SYN <= (others => '0') after 1 ns;
      NE_SYN  <= (others => '0') after 1 ns;
      NOE_SYN <= (others => '0') after 1 ns;
      D_SYN   <= (others => '0') after 1 ns;
      EN      <= '0' after 1 ns;
      Y       <= (others => '0') after 1 ns;
   elsif CLK_SYN'event and CLK_SYN = '1' then
      NWE_SYN <= NWE & NWE_SYN(2 downto 1) after 1 ns;
      NE_SYN  <= NE & NE_SYN(1) after 1 ns; 
      NOE_SYN <= NOE & NOE_SYN(1) after 1 ns; 
      D_SYN   <= DATA & D_SYN(31 downto 16) after 1 ns;
      EN      <= PSH_OUT after 1 ns; 
      if EN = '1' then
         Y <= D_SYN(15 downto 0) after 1 ns;
      end if;
   end if;
end process;

-- ------------------------------ LOGIC 
TRISTATE <= NE_SYN(0) or NOE_SYN(0);
NWE_PSH  <= NWE_SYN(0) and (not NWE_SYN(1));
PSH_OUT <= NWE_PSH and (not NE_SYN(0)); 

-- ----------------------------------------------------- CLK_PE UPDATE


STRECHFF1: process(EN, START)
begin
  if START = '1' then
     Q_PST <= '0' after 1 ns;
  elsif EN'event and EN = '1' then
     Q_PST <= '1' after 1 ns;
  end if;
end process;

STRECHFF2: process(CLK_PE, NRESET_I) -- LEV6FF
begin
   if NRESET_I = '0' then
      START <= '0' after 1 ns;
   elsif CLK_PE'event and CLK_PE = '1' then
      START<= Q_PST after 1 ns;
   end if;
end process;

-- ------------------------- didirectional BUS drive with tristate out

WRITE : process(TRISTATE, W) --
begin 
   if TRISTATE = '0' then
      DATA <= W;
   else
      DATA <= (others => 'Z');
   end if;
end process;

end BEHAV;

