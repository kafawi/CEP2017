-- ------------------------------------------------------- Equalizer PE
-- calculates W = sqrt(Y)
library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity EQ_PE is
   generic(
      MSB : natural := 15
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
   --signal Q_I : std_logic_vector(15 downto 0):= (others => '0');
   signal W_SIG    : std_logic_vector(MSB downto 0):= (others => '0'); 
   signal SIGNED_F : std_logic := '0';  -- Signed flag 
   signal ENW      : std_logic := '0';  -- ENABLE for REGW (CTL_PATH out)
   signal Y_UNSIG  : std_logic_vector(MSB downto 0):= (others => '0'); 
   signal Q_UNSIG  : std_logic_vector(MSB downto 0):= (others => '0');
   signal Q_SIG    : std_logic_vector(MSB downto 0):= (others => '0');

   -- BUS for communication between CTL and DATA PATH
   -- MSB-> SELQ, SELR, SELN, SELXQ <- LSB 
   signal VSEL  : std_logic_vector(3 downto 0):= (others => '0');
   -- MSB-> ENQ, ENR, ENN, ENT <- LSB 
   signal VEN   : std_logic_vector(3 downto 0):= (others => '0');
   -- MSB-> CMP_LOOP, CMP_UPDA <- LSB
   signal VCMP  : std_logic_vector(1 downto 0):= (others => '0');

   -- components
   component CTL_PATH is
      port (
         -- in 
         CLK, N_RESET : in std_logic;
         START   : in std_logic;
         -- out
         RDY     : out std_logic;
         STORE_Q : out std_logic; 
         -- DATA_PATH        
         -- -- from (in)
         CMP_LOOP, CMP_UPDA : in std_logic; -- compares
         -- -- to (out)
         ENQ, ENR, ENN, ENT : out std_logic;
         SELQ, SELR, SELN, SELXQ: out std_logic 
      );
   end component CTL_PATH;

   component DAT_PATH is
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
   end component DAT_PATH;

begin
   -- port 2 sig connsection 
   W <= W_SIG;
   -- two's complements
   Y_UNSIG <= (not Y) +1 when (Y(MSB) = '1') else Y after 1 ns;
   Q_SIG <= (not Q_UNSIG) +1 when (SIGNED_F = '1') else Q_UNSIG after 1 ns;
   
   -- REGISTER
   REG_SF: process (START, CLK_PE, N_RESET)
   begin
      if N_RESET = '0' then
         SIGNED_F <= '0' after 1 ns ; -- delay
      elsif (CLK_PE'event and CLK_PE = '1') then
         if START = '1' then
            SIGNED_F <= Y(MSB) after 1 ns;
         end if;
      end if;
   end process; 

   REG_W: process (ENW, CLK_PE, N_RESET)
   begin
      if N_RESET = '0' then
         W_SIG <= (others => '0') after 1 ns; -- delay
      elsif (CLK_PE'event and CLK_PE = '1') then
         if ENW = '1' then
            W_SIG <=  Q_SIG after 1 ns;
         end if;
      end if;
   end process;
   -- end
   -- portmaps

   CTL_P: entity work.CTL_PATH(BEH)
      port map (
         -- in 
         CLK => CLK_PE , N_RESET => N_RESET, 
         START => START,
         -- out
         RDY => RDY, STORE_Q => ENW,
         -- DATA_PATH        
         -- -- from (in)
         CMP_LOOP => VCMP(1), CMP_UPDA => VCMP(0),
         -- -- to (out)
         ENQ => VEN(3), ENR => VEN(2), ENN => VEN(1), ENT => VEN(0),
         SELQ => VSEL(3), SELR => VSEL(2), SELN => VSEL(1),
         SELXQ => VSEL(0)
      );

   DATA_P: entity work.DAT_PATH(BEH)
      port map (
         -- in 
         CLK => CLK_PE , N_RESET => N_RESET, 
         D => Y_UNSIG,
         -- out
         Q => Q_UNSIG,
         -- CTL_PATH
         -- -- from (in)
         ENQ => VEN(3), ENR => VEN(2), ENN => VEN(1), ENT => VEN(0),
         SELQ => VSEL(3), SELR => VSEL(2), SELN => VSEL(1),
         SELXQ => VSEL(0),
         -- -- to (out)
         CMP_LOOP => VCMP(1), CMP_UPDA => VCMP(0)
      );
end architecture BEH;
