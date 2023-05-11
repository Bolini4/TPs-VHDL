--test shift register
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_shift_register_SISO8 is
end tb_shift_register_SISO8 ;

architecture TB of tb_shift_register_SISO8 is

signal Si : std_logic;
signal CLK : std_logic :='0'; --clock rising edge
signal SETn : std_logic;
signal RSTn : std_logic;

--outputs
signal So : std_logic;

begin
UUT : entity work.shift_register_SISO8 port map(
	Si => Si,
	CLK => CLK,
	SETn => SETn,
	RSTn => RSTn,
	So => So
);

CLK <= not CLK after 5ns;
stimulus : process
begin

RSTn <= '1';
SETn <= '0';
wait for 50ns;
RSTn <= '0';
wait for 10ns;
Si <= '1';
wait for 2ns;
Si <= '0';

wait for 20ns;

Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';
Si <= '1';
wait for 10ns;
Si <= '0';

wait;
end process;
end TB;