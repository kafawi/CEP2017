library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

entity DAT_PATH is
   generic(
      MSB : natural := 15
   );
      port (
         -- in 
         CLK, N_RESET : in std_logic;
         D   : in std_logic_vector(MSB downto 0);
         -- out
         Q   : out std_logic_vector(MSB downto 0); 
         -- CTL_PATH
         -- -- from (in)
         ENQ, ENR, ENN, ENT : in std_logic;
         SELQ, SELR, SELN, SELXQ: in std_logic; 
         -- -- to (out)
         CMP_LOOP, CMP_UPDA : out std_logic -- compares
      );
end DAT_PATH;

architecture BEH of DAT_PATH is
-- constants
constant N_MAX : std_logic_vector(MSB/4 downto 0) := "0111"; 
-- signals stored in DFF
signal REGQ : std_logic_vector(MSB/2 downto 0):= (others => '0');
signal REGR : std_logic_vector(MSB downto 0):= (others => '0');
signal REGN : std_logic_vector(MSB/4 downto 0):= "0111"; -- 7
signal REGT : std_logic_vector(MSB/2 +1 downto 0):= (others => '0'); -- 8+1 =9

-- signale vor den registern Q_P -> Q+
signal Q_P : std_logic_vector(MSB/2 downto 0):= (others => '0');
signal R_P : std_logic_vector(MSB downto 0):= (others => '0');
signal N_P : std_logic_vector(MSB/4 downto 0):= (others => '0');
--signal T_P : std_logic_vector(MSB/2 +1 downto 0):= (others => '0');

-- signals cmp intern
signal CMP_LOOP_I : std_logic:= '0';
signal CMP_UPDA_I : std_logic:= '0';

-- signals for shifting
signal LS0 : std_logic_vector(MSB downto 0);
signal LS1 : std_logic_vector(MSB/2 +1 downto 0);
signal RS  : std_logic_vector(MSB downto 0):= (others => '0');

-- ADD, SUB, DECR
signal ADD : std_logic_vector(MSB/2 +1 downto 0):=(others => '0');
signal SUB :  std_logic_vector(MSB downto 0):=(others => '0');
signal DECR :  std_logic_vector(MSB/4 downto 0):=(others => '0');

--signal Q_I : std_logic_vector(MSB/2 downto 0);

begin

-- connecstion port bus
Q <= "00000000" & REGQ;
CMP_LOOP <= CMP_LOOP_I;
CMP_UPDA <= CMP_UPDA_I;

-- REGISTER
REG_Q: process (CLK, N_RESET)
begin
   if (N_RESET = '0') then 
      REGQ <= (others => '0') after 1 ns;
   elsif (CLK'event and CLK = '1') then
      if (ENQ = '1') then
         REGQ <= Q_P after 1 ns;
      end if;
   end if;
end process;

REG_R: process (CLK, N_RESET)
begin
   if (N_RESET = '0') then 
      REGR <= (others => '0') after 1 ns;
   elsif (CLK'event and CLK = '1') then
      if (ENR = '1') then
         REGR <= R_P after 1 ns;
      end if;
   end if;
end process;

REG_N: process (CLK, N_RESET)
begin
   if (N_RESET = '0') then 
      REGN <= (others => '0') after 1 ns;
   elsif (CLK'event and CLK = '1') then
      if (ENN = '1') then
         REGN <= N_P after 1 ns;
      end if;
   end if;
end process;

REG_T: process (CLK, N_RESET)
begin
   if (N_RESET = '0') then 
      REGT <= (others => '0') after 1 ns;
   elsif (CLK'event and CLK = '1') then
      if (ENT = '1') then
         REGT <= ADD after 1 ns; -- T_P is not required
      end if;
   end if;
end process;
-- COMPARE
CMP_LOOP_P: process (REGN)
begin
  if (REGN = 0) then
      CMP_LOOP_I <= '1' after 1 ns;
  else
      CMP_LOOP_I <= '0' after 1 ns;
  end if;
  --if (REGT RS)
  --CMP_UPDA_I <= after 1 ns;
end process;
CMP_UPDA_P: process (RS, REGT) -- R >> N >= T aka RS >= N
-- T -> 9 bit
-- RS -> 16 bit
-- diff --> 7 times Zero concat to T
variable TMP: std_logic_vector(MSB downto 0);
begin
  TMP := "0000000" & REGT;
  if (RS >=TMP) then
     CMP_UPDA <= '1' after 1 ns;
  else
     CMP_UPDA <= '0' after 1 ns;
  end if;
end process;
-- shifter 
LEFTS0: process(REGQ, REGT, REGN) -- T<<N
-- -- MUX is insifde here 
variable RES: std_logic_vector(MSB downto 0);
variable TMP: std_logic_vector(MSB downto 0);
begin
--T<<N
   TMP := "0000000" & REGT; -- 
   RES := std_logic_vector(shift_left(
      unsigned(TMP),
      to_integer(unsigned(REGN))
   ));
   LS0 <= RES after 1 ns;
end process;

LEFTS1: process(REGN) -- 1 << N
variable ONE: std_logic_vector(MSB/2 +1 downto 0);
variable RES: std_logic_vector(MSB/2 +1 downto 0); -- 
begin
   ONE := "000000001";
   RES := std_logic_vector(shift_left(
      unsigned(ONE), 
      to_integer(unsigned(REGN))
   ));
LS1 <= RES after 1 ns;
end process;

RIGHTS: process(REGR, REGN) -- R >> N
variable RES: std_logic_vector(MSB downto 0);
begin
RES := std_logic_vector(shift_right(
   unsigned(REGR), 
   to_integer(unsigned(REGN))
   ));
RS <= RES after 1 ns;
end process;
-- ADD
ADDER: process(SELXQ, REGQ, LS1) -- MUX are inside
variable RES : std_logic_vector(MSB/2 +1 downto 0);
variable XQ : std_logic_vector(MSB/2 +1 downto 0);
begin
   if (SELXQ = '0') then
      XQ := '0' & REGQ; -- Q
   elsif (SELXQ = '1') then
      XQ := REGQ & '0'; -- Q*2
   end if;
   RES := XQ + LS1;
   ADD <= RES after 1 ns; -- ADD MUX are inside
end process;
-- SUB
SUBTRACTOR: process(REGR, LS0)
   variable RES : std_logic_vector(MSB downto 0);  
begin
   RES := REGR - LS0;
   SUB <= RES after 1 ns;
end process;
-- DECR
DECREMENTER: process(REGN)
begin
   DECR <= REGN - 1 after 1 ns;
end process;
-- Register MUXES
Q_MUX: process(SELQ, ADD)
begin
  if (SELQ = '0') then
     Q_P <= (others => '0') after 1 ns;
  elsif (SELQ = '1') then
     Q_P <= ADD(MSB downto 0) after 1 ns;
  end if;
end process;

R_MUX: process(SELR, SUB)
begin
   if (SELR = '0') then
      R_P <= D after 1 ns;
   elsif (SELR = '1') then
      R_P <= SUB after 1 ns;
   end if;
end process;

N_MUX: process(SELN, DECR)
begin
   if (SELN = '0') then
      N_P <= N_MAX after 1 ns;
   elsif (SELN = '1') then
      N_P <= DECR after 1 ns;
   end if;
end process;

-- T_MUX: process(SELT, ADD)
-- T does not need a mux










end architecture BEH;