--testbench
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity tb_clock_divider is
end tb_clock_divider;

architecture TB of tb_clock_divider is

signal CLKin : std_logic :='0';
signal RST : std_logic;
signal N : std_logic_vector(4 DOWNTO 0);
        --outputs
signal CLKout : std_logic;

begin 
UUT : entity work.clock_divider port map(
CLKin => CLKin,
RST => RST,
N => N,
CLKout => CLKout
);

CLKin <= not CLKin after 10ns;
stimulus : process
begin
RST <= '1';
wait for 20ns;
RST <= '0';
N <= "00001";
wait for 1000ns;
end process;
end TB;