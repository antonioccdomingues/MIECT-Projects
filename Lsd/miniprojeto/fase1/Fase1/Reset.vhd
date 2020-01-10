library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reset is
	port( pressed    : in std_logic;
			stop_reset : in std_logic;
       	clk        : in std_logic;
			stout      : out std_logic);
end Reset;

architecture Behavioral of Reset is

signal s_reset : std_logic := '0';

begin

stout <= s_reset;

	process(clk,pressed)
	begin
		if (rising_edge(clk)) then
			if (pressed = '1') then
				s_reset <= '1';
			end if;
			if (stop_reset = '1') then
				s_reset <= '0';
			end if;
		end if;
	end process;

end Behavioral;