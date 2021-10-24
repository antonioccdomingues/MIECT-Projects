library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Start_Stop is
	port( pressed : in std_logic;
			 stop   : in std_logic;
       	 clk    : in std_logic;
			 --ola
			 reset  : in std_logic;
			 stop_reset: out std_logic;
			 
			 stout  : out std_logic);
end Start_Stop;

architecture Behavioral of Start_Stop is

signal s_stop : std_logic := '0';
signal s_cont : std_logic := '0';
signal s_ver : std_logic := '0';
--ola
signal s_stop_reset : std_logic;


begin

--ola
stop_reset <= s_stop_reset;
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
		--ola
		--if ((pressed = '1') and (reset = '1')) then
		--	s_stop_reset <= '1';
		if (reset = '0') then
			s_stop_reset <= '0';
		end if;
		
      if((pressed = '1') and (s_cont = '0')) then
			if (reset = '0') then
				s_stop <= not s_stop;
				s_cont <= '1';
			else
				s_cont <= '1';
				s_stop_reset <= '1';
			end if;
				
		elsif(pressed = '0') then
			s_cont <= '0';
			end if;
      --stout <= s_stop;
		end if;
	end process;

end Behavioral;

--Depois desligamos o stop no bloco principal quando o sinal reset estiver desligado ou quando o
--contador for diferente de 00:00