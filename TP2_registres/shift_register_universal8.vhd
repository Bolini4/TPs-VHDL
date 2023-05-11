--universal register
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shift_register_universal8 is

port(
--inputs

SSR : in std_logic;
SSL : in std_logic;

Pi : in std_logic_vector(7 DOWNTO 0);
SEL : in std_logic_vector(2 DOWNTO 0);
CLK : in std_logic;
SETn : in std_logic;
RSTn : in std_logic;

--OUTputs

SOR : out std_logic;
SOL : out std_logic;
Qo : out std_logic_vector(7 DOWNTO 0)
);

end shift_register_universal8;

architecture behavioral of shift_register_universal8 is

function rotation_right(reg : std_logic_vector(7 DOWNTO 0)) return std_logic_vector is
begin
	return reg(0) & reg(7 downto 1);
end function;


function rotation_left(reg : std_logic_vector(7 DOWNTO 0)) return std_logic_vector is
begin
	return reg(7) & reg(6 downto 0);
end function;



signal register8b : std_logic_vector(7 DOWNTO 0);
begin

SOR <= register8b(0);
SOL <= register8b(7);
Qo <= register8b;

process (CLK, RSTn)
begin
	if (RSTn = '1') then
		register8b <= "00000000";
	
	elsif(CLK'event and CLK ='1') then
		if(SEL = "X00") then --hold (memorize)
		
		elsif(SEL ="X11") then --Parallel load
			register8b <= Pi;
			
		elsif(SEL ="001") then --Shift right
			register8b <= '0' & register8b(7 DOWNTO 1);
			
		elsif(SEL ="010") then --Shift left
			register8b <= register8b(6 DOWNTO 0) & '0';
		
		elsif(SEL ="101") then -- rotate right
			register8b <= rotation_right(register8b);
		
		elsif(SEL ="110") then --rotate left
			register8b <= rotation_left(register8b);
		end if;
	
	end if;
end process;
end architecture;