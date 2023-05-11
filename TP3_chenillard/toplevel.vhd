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
signal CLKinter : std_logic;

begin

clk_divider : entity work.clock_divider port map(

CLKin => CLOCK_50_B6A,
N => "10100",
RST => KEY(0)  ,
CLKout => CLKinter

);

chenillard : entity work.chenillard port map(

RST =>KEY(0)  ,
CLK=>CLKinter  ,
CHEN => LEDR	
);

end architecture;