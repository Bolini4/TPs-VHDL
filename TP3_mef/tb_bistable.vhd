--tb bistable
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_bistable is
end tb_bistable;

architecture TB of tb_bistable is

signal clk : std_logic:='0';
signal rst : std_logic;
signal X : std_logic;
signal Y : std_logic;

begin
UUT : entity work.bistable port map(

clk => clk,
rst => rst,
X => X,
Y => Y
);

clk <= not clk after 10ns;

stimulus : process
begin
X <= '0';
rst <= '1';
wait for 20ns;
rst <= '0';
wait for 20ns;
X <='1';
wait for 20ns;
X <= '0';
wait for 20ns;
X <='1';
wait for 20ns;
X <= '0';
wait for 20ns;
X <='1';
wait for 20ns;
X <= '0';
wait for 20ns;
X <='1';
wait for 20ns;
X <= '0';
wait for 20ns;
X <='1';
wait for 20ns;
X <= '0';

end process;
end TB;