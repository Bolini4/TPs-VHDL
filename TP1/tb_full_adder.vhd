---full adder TB

--Half adder testbench file
library ieee;
use ieee.std_logic_1164.all;

entity tb_full_adder is
end tb_full_adder;

architecture TB of tb_full_adder is
    -- Déclaration des signaux de test
	signal a: std_logic;
	signal b: std_logic;
	signal cin : std_logic;
	signal s: std_logic;
	signal cout: std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
    UUT: entity work.full_adder port map (
        a => a,
        b => b,
        s => s,
        cin => cin,
		  cout => cout
    );

  -- Stimulus process
  stimulus : process
  begin
    -- Test case 1
    a <= '0';
    b <= '0';
	 cin <= '0';
    wait for 10 ns;

    -- Test case 2
    a <= '1';
    b <= '0';
	 cin <= '0';
    wait for 10 ns;

    -- Test case 3
    a <= '0';
    b <= '1';
	 cin <= '0';
    wait for 10 ns;

    -- Test case 4
    a <= '1';
    b <= '1';
	 cin <= '0';
    wait for 10 ns;

	     -- Test case 5
    a <= '0';
    b <= '0';
	 cin <= '1';
    wait for 10 ns;

    -- Test case 6
    a <= '1';
    b <= '0';
	 cin <= '1';
    wait for 10 ns;

    -- Test case 7
    a <= '0';
    b <= '1';
	 cin <= '1';
    wait for 10 ns;

    -- Test case 8
    a <= '1';
    b <= '1';
	 cin <= '1';
    wait for 10 ns;
    wait;
  end process;

end TB;
