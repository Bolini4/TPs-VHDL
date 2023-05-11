library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bistable is
	port(
        -- ENTREES
		clk : in std_logic;
		rst : in std_logic;
		X : in std_logic;
		-- SORTIES
		Y : out std_logic
	);
end entity;

architecture behavioral of bistable is
	type state_type is (a, b, c ,d);    -- Enumérer tous les états de la bistable ici
	signal future_state  : state_type; -- Etat futur, calculé à partir des entrées et de l'état présent
	signal current_state : state_type; -- Etat présent, reçoit future_state à chaque coup d'horloge

	begin

	-- Description du registre d'états
	-- Fonction SEQUENTIELLE
	process(clk, rst)
	begin
		if rst = '0' then
			current_state <= a;
		elsif (clk'event and clk ='1') then
			current_state <= future_state;
		end if;
	end process;

	-- Description du calcul de l'état futur
	-- Fonction COMBINATOIRE
	process(X,current_state)
	begin
		case current_state is
			when a =>                                   -- when 1er état ...
				if    X = '0' then future_state <= a; --   if entrée = valeur1 then future_state <= état suivant1
				else                 future_state <= b; --   etc.
				end if;
				
			when b =>                                   -- when 1er état ...
				if    X = '1' then future_state <= b; --   if entrée = valeur1 then future_state <= état suivant1
				else                 future_state <= c; --   etc.
				end if;
				
			when c =>                                   -- when 1er état ...
				if    X = '0' then future_state <= c; --   if entrée = valeur1 then future_state <= état suivant1
				else                 future_state <= d; --   etc.
				end if;
				
			when d =>                                   -- when 1er état ...
				if    X = '1' then future_state <= d; --   if entrée = valeur1 then future_state <= état suivant1
				else                 future_state <= a; --   etc.
				end if;
            -- etc.
			when others =>
				future_state <= current_state;
		end case;
	end process;

	-- Description du calcul des sorties
	-- Fonction COMBINATOIRE
	process(current_state)
	begin
		case current_state is
			when a =>     -- when 1er état
                Y <= '0'; --   assignation Sortie1 <= valeur1
					 
			when b =>     -- when 1er état
                Y <= '1'; --   assignation Sortie1 <= valeur1
					 
			when c =>     -- when 1er état
                Y <= '1'; --   assignation Sortie1 <= valeur1
					 
			when d =>     -- when 1er état
                Y <= '0'; --   assignation Sortie1 <= valeur1

			when others =>
                Y <= X; -- Cas de défaut (ex. sortie <= 'X')
		end case;
	end process;
end behavioral;
