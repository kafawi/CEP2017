-- ------------------------------------------------------- Equalizer PE
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity EQ_PE is
   generic(
      ACCU_LIMIT: positive := 8128  -- SUM(i=0,...,127) i = 8128
   );
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
end EQ_PE;

architecture BEH of EQ_PE is
   --  SIGNALS
   signal QINT : std_logic_vector(15 downto 0):= "0000000000000000";
begin
   
   ACCU: process(CLK_PE, N_RESET)
   begin
      if N_RESET = '0' then
         QINT  <=(others => '0') after 1 ns ; -- delay
      elsif CLK_PE'event and CLK_PE = '1' then
         if QINT = ACCU_LIMIT then
            RDY <= '1' after 1 ns;
            QINT <=(others => '0') after 1 ns;
         else
            RDY <= '0' after 1 ns;
         end if;
         if START = '1' then
            QINT <= QINT + Y after 1 ns;
         end if;
      end if;
   end process;

W <= QINT;

end architecture BEH;
