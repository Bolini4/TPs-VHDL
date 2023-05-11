--led controller
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity led_controller is 
	port(
	state : in std_logic_vector(2 DOWNTO 0);
	clk : in std_logic;
	
	--outputs
	LEDR_control : out std_logic_vector(9 DOWNTO 0);
	LEDV_control : out std_logic_vector(7 DOWNTO 0)
	);
end entity;

architecture behavioral of led_controller is
begin

	process (clk)
	begin
		if rising_edge(clk) then
			if (state = "00") then
				LEDR_control <= "000000001";
				LEDV_control <= (others => '0');
			elsif (state = "10") then
				LEDV_control <= "11110000";
				LEDR_control <= (others => '0');
			elsif (state = "11") then
				LEDR_control <= "111111111";
				LEDV_control <= (others => '0');
			else
				LEDR_control <= (others => '0');
				LEDV_control <= (others => '0');
			end if;
		end if;
	end process;

	LEDV_control <= (others => '0'); -- set to default value
end architecture;

