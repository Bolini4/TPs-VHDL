--testbench shif register
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_shift_register_universal is
end tb_shift_register_universal;


architecture TB of tb_shift_register_universal is

signal SSR :  std_logic;
signal SSL :  std_logic;

signal Pi :  std_logic_vector(7 DOWNTO 0);
signal SEL :  std_logic_vector(2 DOWNTO 0);
signal CLK :  std_logic :='0';
signal SETn :  std_logic;
signal RSTn :  std_logic;

--puts

signal SOR :  std_logic;
signal SOL :  std_logic;
signal Qo :  std_logic_vector(7 DOWNTO 0);

begin
UUT : entity work.shift_register_universal8 port map (
	
	SSR => SSR,
	SSL => SSL,
	Pi => Pi,
	SEL => SEL,
	CLK => CLK,
	SETn => SETn,
	RSTn => RSTn,
	SOR => SOR,
	SOL => SOL,
	Qo => Qo

);
CLK <= not CLK after 5ns;
-- Stimulus process
  stimulus : process
  begin
    wait for 10 ns;

    -- Hold (memorize)
    SEL <= "X00";
    wait for 10 ns;

    -- Parallel load
    Pi <= "11001100";
    SEL <= "X11";
    wait for 10 ns;

    -- Shift right
    SEL <= "001";
    wait for 20 ns;

    -- Shift left
    SEL <= "010";
    wait for 20 ns;

    -- Rotate right
    SEL <= "101";
    wait for 20 ns;

    -- Rotate left
    SEL <= "110";
    wait for 20 ns;

    wait;

end process;
end TB;