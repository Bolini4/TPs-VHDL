--testbench priority encoder
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_priority_encoder4 is
end tb_priority_encoder4; 

architecture testbench of tb_priority_encoder4 is
  signal D : std_logic_vector(3 downto 0);
  signal Y : std_logic_vector(1 downto 0);


begin
	UUT : entity work.priority_encoder4 port map(
	D => D,
	Y => Y
	);

  -- Stimulus process
  stim_proc: process
  begin
    D <= "0000";
    wait for 10 ns;

    D <= "0111";
    wait for 10 ns;

    D <= "1011";
    wait for 10 ns;

    D <= "1101";
    wait for 10 ns;

    D <= "1110";
    wait for 10 ns;

    D <= "0101";
    wait for 10 ns;

    D <= "1000";
    wait for 10 ns;
	 
	 D <= "0010";
    wait for 10 ns;
	 
	 D <= "0011";
    wait for 10 ns;

    wait;
  end process;


end testbench;