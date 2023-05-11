--test bench flipflop_jk

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_flipflop_jk is
end tb_flipflop_jk;

architecture TB of tb_flipflop_jk is
--signaux de tests
signal J : std_logic;
signal K : std_logic;
	
signal CLK : std_logic :='0'; --Clock
	
	
	--outputs
signal Q : std_logic;
signal Qn : std_logic;

begin 
	UUT : entity work.flipflop_JK port map(
	J => J,
	K => K,
	CLK => CLK,
	Q => Q,
	Qn => Qn
	);
	CLK <= not CLK after 5ns;
stimulus : process
begin
	wait for 20ns;
--case 1
    J <= '0';
    K <= '0';
    wait for 10 ns;
	 
--case 2
    J <= '0';
    K <= '1';
    wait for 10 ns;
	 
--case 3
    J <= '1';
    K <= '0';
    wait for 10 ns;
	 
--case 4
    J <= '1';
    K <= '1';
    wait for 10 ns;
	 wait;
end process;
end TB;