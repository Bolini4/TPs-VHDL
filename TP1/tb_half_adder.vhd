--Half adder testbench file
library ieee;
use ieee.std_logic_1164.all;

entity tb_half_adder is
end tb_half_adder;

architecture TB of tb_half_adder is
    -- Déclaration des signaux de test
    signal a   : std_logic;
    signal b   : std_logic;
    signal s   : std_logic;
    signal c   : std_logic;

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
    UUT: entity work.half_adder port map (
        a => a,
        b => b,
        s => s,
        c => c
    );

  -- Stimulus process
  stimulus : process
  begin
    -- Test case 1
    a <= '0';
    b <= '0';
    wait for 10 ns;

    -- Test case 2
    a <= '1';
    b <= '0';
    wait for 10 ns;

    -- Test case 3
    a <= '0';
    b <= '1';
    wait for 10 ns;

    -- Test case 4
    a <= '1';
    b <= '1';
    wait for 10 ns;

    wait;
  end process;

end TB;
