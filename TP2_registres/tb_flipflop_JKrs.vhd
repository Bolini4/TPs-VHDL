--TestBench JKRS

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_flipflop_jkrs is
end tb_flipflop_jkrs;

architecture TB of tb_flipflop_jkrs is
--signaux de tests
signal J : std_logic;
signal K : std_logic;

signal RSTn : std_logic;
signal SETn : std_logic;

signal CLK : std_logic :='0'; --Clock
	
	
	--outputs
signal Q : std_logic;
signal Qn : std_logic;

begin 
	UUT : entity work.flipflop_JKrs port map(
	J => J,
	K => K,
	CLK => CLK,
	Q => Q,
	Qn => Qn,
	RSTn => RSTn,
	SETn => SETn
	);
	CLK <= not CLK after 5ns;
stimulus : process
begin
	SETn <= '1';
	wait for 2ns;
	SETn <= '0';
	wait for 20ns;
--case 1
    J <= '0';
    K <= '0';
    wait for 10 ns;
	 
--case 2
    J <= '0';
    K <= '1';
    wait for 10 ns;
	 RSTn <= '1';
	 wait for 2ns;
	 RSTn <= '0';
	 
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