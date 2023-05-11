--priority encoder4
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--D3 D2 D1 D0 / Y1 Y0 
--0  0  0  0    0   0 
--0  0  0  1  / 0   0 
--0  0  1  x  / 0   1 
--0  1  x  x  / 1   0 
--1  x  x  x  / 1   1 


-- priority encoder 4 -> 2 entity

entity priority_encoder4 is
    port (
        D : in std_logic_vector (3 downto 0);
        Y : out std_logic_vector (1 downto 0)
    );
end entity priority_encoder4;

architecture behavioral of priority_encoder4 is
begin
	Y <= "11" when (D(3) ='1') else
	"10" when (D(2) ='1') else
	"01" when (D(1) ='1') else
	"00" when (D(3) = '0' and D(2) = '0' and D(1) = '0');
end architecture behavioral;