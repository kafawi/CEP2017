library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
  
entity COUNTER is
   port(    
      CLK, N_RESET, ENABLE : in std_logic;   
      LIMIT                : in std_logic_vector(15 downto 0);
      CNT                  : out std_logic_vector(15 downto 0);
      TICK                 : out std_logic
   );
end entity COUNTER;

architecture VERHALTEN of COUNTER is
   signal CNT_INT: std_logic_vector(15 downto 0);
   signal TICK_INT: std_logic;

--component DFF16
--   port(    
--      CLK, N_RESET, ENABLE : std_logic;   
--      INPUT   : in std_logic_vector(15 downto 0);
--      OUTPUT  : out std_logic_vector(15 downto 0)
--   );
--end component;
begin 

-- TICK_MUX: process(CNT_INT)
--   begin
--      if CNT_INT = LIMIT  then       -- UEV controlled MUX
--         TICK_INT <= '1' after 5 ns;
----         CNT_INT <= (others => '0');
--      else
--         TICK_INT <= '0' after 5 ns; 
--      end if;
--      TICK <= TICK_INT;
--end process TICK_MUX;

DFF_CNT:process(CLK, N_RESET)
   begin
      if N_RESET = '0' then 
         CNT_INT <= (others => '0') ; -- asynchroner Reset
         TICK_INT <= '0';
      elsif (CLK = '1' and CLK'event ) then                   -- rising edge
         if ENABLE = '1' then 
            if CNT_INT = LIMIT then
               CNT_INT <= (others => '0');
               TICK_INT <= '1';
            else 
               CNT_INT <= CNT_INT + 1;
               TICK_INT <= '0'; 
            end if;
         end if;
      end if;
   end process DFF_CNT;
TICK <= TICK_INT after 5 ns;
CNT <= CNT_INT after 5 ns;
end VERHALTEN;
