library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity CTL_PATH is
   generic(
      MSB : natural := 15
   );
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
end CTL_PATH;

architecture BEH of CTL_PATH is
   type STATES is (S_IDLE, S_INIT, S_TSET, S_TWAIT, S_UPDATE, S_NDECR, S_STORE);
   signal STATE, NEXT_S : STATES :=S_IDLE;
begin
-- REG
REG_S: process (CLK, N_RESET)
begin
   if (N_RESET = '0') then 
      STATE <= S_IDLE after 1 ns;
   elsif (CLK'event and CLK = '1') then
      STATE <= NEXT_S after 1 ns;
   end if;
end process;

-- UESN and ASN
UE_A_SN: process(STATE, START, CMP_LOOP, CMP_UPDA)
begin
  -- default 
  --   -- kommt das nicht in den DAT PATH?
   RDY     <= '0' after 1 ns;
   STORE_Q <= '0' after 1 ns;

   NEXT_S  <= S_IDLE after 1 ns;

   ENQ <= '0' after 1 ns;
   ENR <= '0' after 1 ns;
   ENN <= '0' after 1 ns;
   ENT <= '0' after 1 ns;

   SELQ   <= '0' after 1 ns;
   SELR   <= '0' after 1 ns;
   SELN   <= '0' after 1 ns;
   SELXQ  <= '0' after 1 ns;

   case (STATE) is
      when S_IDLE =>
         RDY <= '1' after 1 ns;
         if (START='1') then
            NEXT_S <= S_INIT after 1 ns;
         end if;
      when S_INIT =>
         SELQ <= '0' after 1 ns;
         SELR <= '0' after 1 ns;
         SELN <= '0' after 1 ns; 
         
         ENQ <= '1' after 1 ns;
         ENR <= '1' after 1 ns;
         ENN <= '1' after 1 ns;

         NEXT_S <= S_TSET after 1 ns;
      when S_TSET =>
         SELXQ <= '0' after 1 ns;

         ENT <= '1' after 1 ns;

         NEXT_S <= S_TWAIT after 1 ns;
      when S_TWAIT =>
         if (CMP_UPDA = '1' ) then
            NEXT_S <= S_UPDATE after 1 ns;
         elsif (CMP_UPDA = '0' and CMP_LOOP = '1') then
            NEXT_S <= S_NDECR after 1 ns;
         elsif (CMP_UPDA = '0' and CMP_LOOP = '0') then
            NEXT_S <= S_STORE after 1 ns;
         end if;
      when S_UPDATE =>
         SELXQ <= '1' after 1 ns;
         SELR <= '1' after 1 ns;
         SELQ <= '1' after 1 ns;

         ENR <= '1' after 1 ns;
         ENQ <= '1' after 1 ns;
         if (CMP_LOOP = '1') then
            NEXT_S <= S_NDECR after 1 ns;
         else
            NEXT_S <= S_STORE after 1 ns;
         end if;
      when S_NDECR =>
         SELN <= '1' after 1 ns;
         ENN <= '1' after 1 ns;
         NEXT_S <= S_TSET after 1 ns;
      when S_STORE =>
         STORE_Q <= '1' after 1 ns;
         NEXT_S <= S_IDLE after 1 ns;
      --when others =>
      --   null;
   end case;

  
end process;

end architecture BEH;