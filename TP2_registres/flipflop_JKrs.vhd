--flipflop JK RS

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--JK flipflop

--  J  K R S| Q
-- +-----------+
--  0	 0 0 0| Q
--  0	 1 0 0| 0
--  1	 0 0 0| 1
--  1	 1 0 0| Qn
--  x  x 1 x| 0
--  x  x x 1| 1


entity flipflop_JKrs is
port (
	--inputs
	J : in std_logic;
	K : in std_logic;
	
	SETn : in std_logic;
	RSTn : in std_logic;
	
	CLK : in std_logic; --Clock
	
	
	--outputs
	Q : out std_logic;
	Qn : out std_logic
	);
end flipflop_JKrs;

architecture behavioral of flipflop_JKrs is
signal q_temp : std_logic;
begin
	process(CLK)
	begin
		if(RSTn ='1')then
		 Q <= '0';
		 Qn <= '1';
		
		elsif(SETn ='1') then
			Q <= '1';
			Qn <= '0';
		
		elsif(CLK'event and CLK ='1') then
				if(J ='0' and K ='1') then
					Q <= '0';
					Qn <= '1';
					q_temp <= '0';
				elsif(J ='1' and K ='0') then
					Q <= '1';
					Qn <= '0';
					q_temp <= '1';
				elsif(J ='1' and K ='1') then
					Q <= not q_temp;
				end if;
		end if;
	end process;
end behavioral;