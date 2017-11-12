--DATA FLIP FLOP / Register mit asyncronen Reset fuer 16 bit 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DFF16 is
   port( 
      CLK , N_RESET, ENABLE : in std_logic;
      INPUT   : in  std_logic_vector(15 downto 0);
      OUTPUT  : out std_logic_vector(15  downto 0)
   );
end DFF16;

architecture VERHALTEN of DFF16 is
-- signal OUTPUT_INT : std_logic_vector(15 downto 0);
begin
   process(CLK, N_RESET)
   begin
      if N_RESET = '0' then OUTPUT <= (others => '0') after 5 ns; -- asynchroner Reset
      elsif (CLK = '1' and CLK'event ) then                   -- rising edge
         if ENABLE = '1' then OUTPUT <= INPUT after 5 ns; 
         end if;
      end if;
   end process;
end VERHALTEN;


