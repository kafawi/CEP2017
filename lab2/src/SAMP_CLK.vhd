-- --------------------------------------------------------- SAMP_CLK
-- testing generated Clock clk_wis_v3_6
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity SAMP_CLK is 
   port( 
      CLK      : in std_logic;
      N_RESET  : in std_logic;
      MSB_CSYN : out std_logic;
      MSB_CPE  : out std_logic;
      LOCKED   : out std_logic
   );
end SAMP_CLK;

architecture BEHAVE of SAMP_CLK is
-- signals
  signal CLK_SYN : std_logic;
  signal CLK_PE  : std_logic;
  signal LOCK_I  : std_logic;
  signal CNT_SYN : std_logic_vector(7 downto 0) := (others => '0');
  signal CNT_PE  : std_logic_vector(7 downto 0) := (others => '0');
  signal NRESET_I: std_logic := '1';
-- component clk_wiz_v3_6 is
  component clk_wis_v3_6 is
    port(
      CLK_IN1  : in  std_logic;
      CLK_OUT1 : out std_logic;
      CLK_OUT2 : out std_logic;
      LOCKED   : out std_logic
    );
  end component;
begin
-- clock instance
--  CLK_GEN: entity work.clk_wiz_v3_6(BEHAVE)
  CLK_GEN: entity work.clk_wiz_v3_6(xilinx)
    port map(
      CLK_IN1 => CLK,
      CLK_OUT1 => CLK_PE,
      CLK_OUT2 => CLK_SYN,
      LOCKED => LOCK_I
  );
-- processes for counter
  C_CLKPE: process(CLK_PE, NRESET_I)
  begin
    if NRESET_I = '0' then
      CNT_PE <= (others => '0');
    elsif CLK_PE'event and CLK_PE = '1' then
      CNT_PE <= CNT_PE + '1';
    end if;
  end process;

  C_CLKSYN:process(CLK_SYN, NRESET_I)
  begin
    if NRESET_I = '0' then
      CNT_SYN <= (others => '0');
    elsif CLK_SYN'event and CLK_SYN = '1' then
      CNT_SYN <= CNT_SYN + '1';
    end if;
  end process;
-- Sig to Net
  NRESET_I <= N_RESET; 
  LOCKED   <= LOCK_I;
  MSB_CPE  <= CNT_PE(7);
  MSB_CSYN <= CNT_SYN(7);

end architecture BEHAVE;