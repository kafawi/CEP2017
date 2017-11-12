-- pseudo clk da nicht synthese faehig
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clk_wiz_v3_6 is 
generic(
    PERIODE350MHZHALBE: time:=1.42857142 ns; -- CLK_SYN
    PERIODE150MHZHALBE: time:=3.33333333 ns  -- CLK_PE
);
port(
      CLK_IN1           : in     std_logic;
      CLK_OUT1          : out    std_logic;
      CLK_OUT2          : out    std_logic;
      LOCKED            : out    std_logic
   );
end clk_wiz_v3_6;

architecture BEHAVE of clk_wiz_v3_6 is

begin

LOCK_P: process
begin
	LOCKED<='1';	wait;
end process;

CLK1_P: process
begin
	CLK_OUT1<='0'; wait for PERIODE350MHZHALBE;
	CLK_OUT1<='1'; wait for PERIODE350MHZHALBE;
end process;

CLK2_P: process
begin
	CLK_OUT2<='0'; wait for PERIODE150MHZHALBE;
	CLK_OUT2<='1'; wait for PERIODE150MHZHALBE;
end process;

end BEHAVE;