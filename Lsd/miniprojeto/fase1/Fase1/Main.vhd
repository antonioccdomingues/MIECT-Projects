library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Main is
	port( reset3     : in std_logic;
       	clk3       : in std_logic;
			enable     : in std_logic;
			stop_reset3: out std_logic;
			stop3      : out std_logic;
			luz        : out std_logic;
			cont3      : out std_logic_vector(11 downto 0));
			
end Main;

architecture Behavioral of Main is
signal s_cont3 : unsigned(11 downto 0) := "111000010000"; 
signal s_stop_reset3 : std_logic;
signal s_stop3 : std_logic;
signal s_luz : std_logic;

begin

cont3 <= std_logic_vector(s_cont3);
stop_reset3 <= s_stop_reset3;
luz <= s_luz;
stop3 <= s_stop3;

	process(clk3)
	begin
	
		if (rising_edge(clk3)) then
			if (reset3 = '1') then
				s_stop3 <= '1';
				s_stop_reset3 <= '1';
				s_cont3 <= "111000010000";
				s_luz <= '0';
			elsif (s_cont3 = "000000000000") then
				s_luz <= '1';
				
			elsif (enable = '1') then
				s_stop3 <= '0';
				s_stop_reset3 <= '0';
				s_luz <= '0';
			   s_cont3 <= s_cont3 - 1;	
			end if;
		end if;
	end process;

end Behavioral;