--tb chenillard
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_chenillard is
end tb_chenillard;

architecture TB of tb_chenillard is

signal CLK : std_logic :='0';
signal RST : std_logic;
	
	--outputs
signal CHEN : std_logic_vector(9 DOWNTO 0);

begin
UUT : entity work.chenillard port map(

CLK => CLK,
RST => RST,
CHEN => CHEN

);

CLK <= not CLK after 10ns;
stimulus : process
begin
RST <= '1';
wait for 20ns;
RST <= '0';
wait for 1000ns;
end process;
end TB;