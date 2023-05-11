--button pulse detector
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity button_pulse is 
	port(
	--intputs
	B_in1 : in std_logic;
	B_in2 : in std_logic;
	B_in3 : in std_logic;
	B_in4 : in std_logic;
	
	--outputs
	B_out1 : out std_logic;
	B_out2 : out std_logic;
	B_out3 : out std_logic;
	B_out4 : out std_logic;
	rst_signal : out std_logic;
	push_signal : out std_logic
	);
end button_pulse;

architecture behavioral of button_pulse is
	begin
	
	
	process(B_in1, B_in2, B_in3, B_in4) --process pour le reset lorsque 2 bouttons sont préssés
begin
	if (B_in1 = '1' and B_in2 = '1') or
	   (B_in1 = '1' and B_in3 = '1') or
	   (B_in1 = '1' and B_in4 = '1') or
	   (B_in2 = '1' and B_in3 = '1') or
	   (B_in2 = '1' and B_in4 = '1') or
	   (B_in3 = '1' and B_in4 = '1') then
		rst_signal <= '1';
	else
		rst_signal <= '0';
	end if;
end process;

rising1 : entity work.EdgeDetectorAsync port map(
d => B_in1,
edge => B_out1
);

rising2 : entity work.EdgeDetectorAsync port map(
d => B_in2,
edge => B_out2
);

rising3 : entity work.EdgeDetectorAsync port map(
d => B_in3,
edge => B_out3
);

rising4 : entity work.EdgeDetectorAsync port map(
d => B_in4,
edge => B_out4
);


end behavioral;