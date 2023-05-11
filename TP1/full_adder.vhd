--Full adder
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-----------Full adder entity
entity full_adder is
	port(
	
	a: in std_logic;
	b: in std_logic;
	cin : in std_logic;
	s: out std_logic;
	cout: out std_logic
	);
	
END full_adder;

-- behavior of half adder

architecture behavioral of full_adder is

signal S1 : std_logic;
signal c1 : std_logic;
signal c2 : std_logic;
signal S2 : std_logic;

begin 

hadder1 : entity work.half_adder port map(

	a => a,
	b => b,
	s => S1,
	c => c1

);

hadder2 : entity work.half_adder port map(
	a => s1,
	b => cin,
	c => c2,
	s => s2

);

cout <= c2 or c1;
s <= S2;


end architecture;