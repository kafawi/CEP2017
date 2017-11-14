library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_arith.all;
entity TB_EQUA_PE is
   generic(HCLKPERIODE: time:= 5.88235294 ns);
end TB_EQUA_PE;

architecture SEQUENZ of TB_EQUA_PE is
----Componente von EQUA_PE----
component EQUA_PE is
port(
      -- in
      CLK_PE  : in std_logic;
      N_RESET : in std_logic;
      START   : in std_logic;
      Y       : in std_logic_vector(15 downto 0);
      -- OUT
      RDY     : out std_logic;
      W       : out std_logic_vector(15 downto 0)
);
end component;
----------------------------
signal RDY_I: std_logic:='0';
signal W_I:std_logic_vector(15 downto 0):=(others=>'0');
signal Y_I:std_logic_vector(15 downto 0):=(others=>'0');
signal CLK_PE_I: std_logic:='0';
signal W_OUT:std_logic_vector(15 downto 0):=(others=>'0');
signal START_I: std_logic:='0';
signal N_RESET_I: std_logic:='0';
--signal ZAEHLER: std_logic_vector(15 downto 0):="1111111000001100";
signal ZAEHLER: std_logic_vector(15 downto 0):="0000000000000000";
signal ZAEHLER_OUT:std_logic_vector(15 downto 0):=(others=>'0');
signal NE_I:std_logic:='0';
signal NOE_I:std_logic:='0';
signal NWE_I:std_logic:='0';
signal LOCKED:std_logic:='0';
signal DATA:std_logic_vector(15 downto 0):=(others=>'0');
signal CLK:std_logic:='0';
-----------------------------
begin

CLKPE_GEN:process -- 175Mhz
begin
   CLK_PE <= '0'; wait for 2,8571428571429 ns;
   CLK_PE <= '1'; wait for 2,8571428571429 ns;
end process;
--Ablauf--------------------------------
ABLAUF:process
begin
  -- init
  N_RESET <= '0'
  wait for 6 ns;
  
end process;
----------------------------------------
LOCKED_PRO:process(CLK)
begin
   if CLK'event and CLK = '1' then
      LOCKED<='1';
   end if;
end process;
DUT: entity work.EQUA_PE
port map(
RDY => RDY_I,
W => W_I,
Y => Y_I,
CLK_PE => CLK_PE_I,
START => START_I,
RESET => RESET_I
);

end SEQUENZ;