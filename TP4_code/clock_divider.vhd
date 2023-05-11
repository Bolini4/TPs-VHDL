--clock divider
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity clock_divider is
    port (
        --inputs
        CLKin  : in std_logic;
        RST    : in std_logic;
        N      : in std_logic_vector(4 DOWNTO 0);
        --outputs
        CLKout : out std_logic
    );
end clock_divider;

architecture behavioral of clock_divider is
    signal compteur : std_logic_vector(23 DOWNTO 0);
    constant N_val : std_logic_vector(4 downto 0) := "11100";
begin 
    process(CLKin, RST)
    begin
        CLKout <= compteur(to_integer(unsigned(N_val)));
        if (RST = '0') then
            compteur <= (others => '0');
            CLKout <= '0';
        elsif (CLKin'event and CLKin = '1') then
            compteur <= compteur + 1;
        end if;
    end process;
end architecture;
