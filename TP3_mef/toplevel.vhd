--top level file
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity toplevel is
	port(
		CLOCK_50_B6A : in std_logic;
		KEY : in std_logic_vector(3 DOWNTO 0);
		LEDR : out std_logic_vector(9 DOWNTO 0)
	);
end entity;

architecture behavioral of toplevel is
signal yval : std_logic;
begin

LEDR <= (others => '0') when yval = '0'
    else (others => '1');


bistable : entity work.bistable port map(

clk => CLOCK_50_B6A,
rst => KEY(0),
x => KEY(1),
y => yval

);

end architecture;