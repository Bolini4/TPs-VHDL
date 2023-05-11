--test bench register PISO
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_shift_register_PISO8 is
end tb_shift_register_PISO8 ;

architecture TB of tb_shift_register_PISO8 is

signal Pi : std_logic_vector(7 DOWNTO 0);
signal Wn_S : std_logic;
signal CLK : std_logic :='0';
signal SETn : std_logic;
signal RSTn : std_logic;

--outputs
signal So : std_logic;

begin
UUT : entity work.shift_register_PISO8 port map(
	Pi => Pi,
	Wn_S => Wn_S,
	CLK => CLK,
	SETn => SETn,
	RSTn => RSTn,
	So => So

);

CLK <= not CLK after 5ns;
stimulus : process
begin

RSTn <= '1';
wait for 2ns;
RSTn <= '0';
wait for 12ns;
Wn_S <= '0';

wait for 2ns;
Pi <= "10101010";

wait for 18ns;

Wn_S <= '1';
wait for 200ns;
end process;
end TB;