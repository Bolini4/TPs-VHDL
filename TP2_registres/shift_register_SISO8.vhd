--shift register

-- pour le registre à décalage, à chaque coup d'horloge le bit d'information est décallé (ex :
-- 100 -> 010 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_SISO8 is
port (
--inputs
	Si : in std_logic;
	
	CLK : in std_logic; --clock rising edge
	SETn : in std_logic;
	RSTn : in std_logic;

--outputs
	So : out std_logic
);
end shift_register_SISO8;

architecture behavioral of shift_register_SISO8 is
signal register8b : std_logic_vector (7 DOWNTO 0);
begin
	process (CLK)
	begin
	
	if(RSTn = '1') then
	So <= '0';
	register8b <= "00000000";
	
	elsif (SETn ='1') then
	So <= '1';
	elsif(CLK'event and CLK ='1') then
	register8b <= '0' & register8b(7 DOWNTO 1);
	So <= register8b(0);
		if( Si = '1') then
			register8b(7) <= Si;
		end if;
	end if;
	end process;
end architecture;
 