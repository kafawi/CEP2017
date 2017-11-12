-- Siebensegent-Anzeige
-- SWR WS 17
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity X_2_7Segment is
   Port( CLK   : in  std_logic;
			   DIGITS : in  std_logic_vector(7 downto 0);-- 
			   ANODE  : out std_logic_vector(3  downto 0);
			   A_TO_G : out std_logic_vector(6  downto 0)
		 );
end X_2_7Segment;


architecture Behavioral of X_2_7Segment is
	------------------------------------------------------------------------
	-- Signal Declarations
	------------------------------------------------------------------------
		signal CLK_DIV  : std_logic_vector(16 downto 0):= (others => '0');-- power up
		signal TEMP1, TEMP2: std_logic := '0';
		signal ENABLE: std_logic;
		signal DIGIT    : std_logic_vector(3  downto 0);
		signal SEL      : std_logic_vector(1  downto 0):= "00";	-- multiplexed Anodes
	------------------------------------------------------------------------
	-- Module Implementation
	------------------------------------------------------------------------
begin
   	
   process(CLK) -- frequency divider
	begin
	   if CLK = '1' and CLK'Event then
		   CLK_DIV <= CLK_DIV + 1;
		end if;
	end process;
	
	-- Clock enable instead of wrong wired clock
	-- pulse shorter
process(CLK)
  begin
    if CLK = '1' and CLK'Event then
      TEMP1 <= CLK_DIV(CLK_DIV'left) after 5 ns;-- 25MHz / 65536 = 381 Hz Prüfen
      TEMP2 <= TEMP1 after 5 ns;
  end if;
end process;
ENABLE <= TEMP1 and not TEMP2 after 5 ns;

process(CLK) -- MUX control
	begin
	   if CLK = '1' and CLK'event then
	     if ENABLE = '1' then
		   SEL <= SEL + 1 after 5 ns;
		   end if;
		end if;
end process;

	
process(SEL, DIGITS) -- Multiplexer for anaode control and digit select 
begin     -- multi output with case when
	case SEL is 
	when "00" =>   DIGIT <=  DIGITS(3  downto 0) after 5 ns;
				         ANODE <=  "1110" after 5 ns;-- low active for base of pnp transistor
	when "01" =>   DIGIT <=  DIGITS(7  downto 4) after 5 ns; 
			           ANODE <=  "1101" after 5 ns;
	when "10" =>   DIGIT <=  "0000" after 5 ns;
	               ANODE <=  "1011" after 5 ns; 
	when others => DIGIT <=  "0000" after 5 ns;
	               ANODE <=  "0111" after 5 ns;
	end case;
end process;
	
-- concurrent instead of case when in a process
with DIGIT select --7-Segment (BCD) in dezimal
               --abcdefg	   low active at cathode
		A_TO_G <= "0000001" when "0000",
					 "1001111" when "0001", --0x1 = 1
		          "0010010" when "0010", --0x2 = 2
		          "0000110" when "0011", --0x3 = 3
		          "1001100" when "0100", --0x4 = 4
		          "0100100" when "0101", --0x5 = 5
					 "0100000" when "0110", --0x6 = 6
		          "0001110" when "0111", --0x7 = 7
		          "0000000" when "1000", --0x8 = 8
		          "0000100" when "1001", --0x9 = 9
		          "0001000" when "1010", --0xA = A
		          "1100000" when "1011", --0xB = B
		          "0110001" when "1100", --0xC = C
		          "1000010" when "1101", --0xD	= D	 
		          "0110000" when "1110", --0xE	= E
		          "0111000" when "1111", --0xF	= F 
		          "1111010" when others; --0x0 = r
end Behavioral;