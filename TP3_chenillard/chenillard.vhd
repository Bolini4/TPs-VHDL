--chenillard VHD
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity chenillard is
	port (
	CLK : in std_logic;
	RST : in std_logic;
	
	--outputs
	CHEN : buffer std_logic_vector(9 DOWNTO 0)
	);
end chenillard;

architecture behavioral of chenillard is

function rotation_left10b(reg : std_logic_vector(9 DOWNTO 0)) return std_logic_vector is
begin
	return reg(8 downto 0) & reg(9);
end function;


begin
process (CLK,RST)
	begin
	if (RST = '0') then
		CHEN <= "0000001111";
	elsif (CLK'event and CLK = '1') then
		CHEN <= rotation_left10b(CHEN);
	end if;
end process;
end architecture;