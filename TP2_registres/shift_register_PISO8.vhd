--shift register Piso


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shift_register_PISO8 is

--inputs
port(
Pi : in std_logic_vector(7 DOWNTO 0);
Wn_S : in std_logic;
CLK : in std_logic;
SETn : in std_logic;
RSTn : in std_logic;

--outputs
So : out std_logic
);
end shift_register_PISO8;

architecture behavioral of shift_register_PISO8 is
signal register8b : std_logic_vector(7 DOWNTO 0);
begin
So <= register8b(0);

process (CLK, RSTn)
begin
	if(RSTn = '1') then
	register8b <= "00000000";	
	elsif (CLK'event and CLK ='1') then
		if(Wn_S = '1') then
			register8b <= '0' & register8b(7 DOWNTO 1);
		elsif (Wn_S = '0') then
			register8b <= Pi;
		
		end if;
	end if;
end process;
end architecture;
			