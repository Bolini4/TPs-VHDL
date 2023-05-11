--rising edge async
library ieee;
use ieee.std_logic_1164.all;

entity EdgeDetectorAsync is
   port (
      d        :in std_logic;
      edge     :out std_logic
   );
end EdgeDetectorAsync;

architecture behavioral of EdgeDetectorAsync is

   signal reg :std_logic := '0';

begin
reg <= d;

edge <= reg and (not d);

end behavioral;
