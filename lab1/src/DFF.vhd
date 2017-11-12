--DATA FLIP FLOP mit asyncronen Reset
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DFF is
   port( 
      CLK , N_RESET, ENABLE : in std_logic;
      D   : in  std_logic;
      Q   : out std_logic
   );
end DFF;

architecture VERHALTEN of DFF is
-- signal Q_INT : std_logic;
begin
   process(CLK, N_RESET)
   begin
      if N_RESET = '0' then Q <= '0' after 5 ns; -- asynchroner Reset
      elsif (CLK = '1' and CLK'event ) then                   -- rising edge
         if ENABLE = '1' then Q <= D after 5 ns; 
         end if;
      end if;
   end process;
end VERHALTEN;

