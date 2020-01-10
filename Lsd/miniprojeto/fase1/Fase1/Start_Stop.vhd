library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Start_Stop is
	port( pressed : in std_logic;
			 stop   : in std_logic;
       	 clk    : in std_logic;
			 stout  : out std_logic);
end Start_Stop;

architecture Behavioral of Start_Stop is

signal s_stop : std_logic := '0';
signal s_cont : std_logic := '0';
signal s_ver : std_logic := '0';


begin

stout <= s_stop;

	process(clk,pressed)
	begin
		if (rising_edge(clk)) then
      if ((stop = '1') and (s_ver = '0')) then
				s_stop <= '0';
				s_ver <= '1';
		elsif (stop = '0') then
				s_ver <= '0';
		end if;
      if((pressed = '1') and (s_cont = '0')) then
      	s_stop <= not s_stop;
			s_cont <= '1';
		elsif(pressed = '0') then
			s_cont <= '0';
			end if;
		end if;
	end process;

end Behavioral;

