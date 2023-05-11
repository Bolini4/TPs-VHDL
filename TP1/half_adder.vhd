--Half adder file
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--half adder entity

entity half_adder is
	port(
	
	a: in std_logic;
	b: in std_logic;
	s: out std_logic;
	c: out std_logic
	);
	
END half_adder;

-- behavior of half adder

architecture behavioral of half_adder is
begin 
s <= a xor b;
  c <= a AND b;
end architecture;