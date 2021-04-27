----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:39:07 03/29/2021 
-- Design Name: 
-- Module Name:    absBrems - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity absBremse is
	port(
		clk	:	in	std_logic;
		noedbrems	:	in	std_logic;
		forhjulHastighed	:	in	std_logic_vector(7 downto 0)	:= "01111111";
		baghjulHastighed	:	in	std_logic_vector(7 downto 0);
		motorkraft	:	out	std_logic_vector(7 downto 0)
	);
end absBremse;

architecture Behavioral of absBremse is
	COMPONENT absSpeed
		PORT(
			backSpeed : IN std_logic_vector(7 downto 0);          
			frontSpeed : OUT std_logic_vector(7 downto 0)
			);
	END COMPONENT;


	signal state	:	std_logic:= '0';
	signal clkCounterEkstra	:	std_logic_vector(14 downto 0):= (others => '0');
	signal motorkraftCopy	:	std_logic_vector(7 downto 0):= (others => '0');
	signal oensketHastighed	:	std_logic_vector(7 downto 0):= (others => '0');
begin
		absSpeed1: absSpeed PORT MAP(
		frontSpeed => oensketHastighed,
		backSpeed => baghjulHastighed
	);


process(clk) begin
	if(clk'event and clk = '1') then
		if(noedbrems = '0') then
			if(forhjulHastighed > oensketHastighed) then
				state <= '1';
			end if;
			if(clkCounterEkstra = "110000110101000" and state = '0')then
				if(forhjulHastighed < oensketHastighed and motorkraftCopy < "11111111") then
				motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) + "00000001");
				elsif(forhjulHastighed > oensketHastighed and motorkraftCopy > "00000000") then
				motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) - "00000001");
				end if;
				clkCounterEkstra <= (others => '0');
			else
			if(state = '1')then
				if(forhjulHastighed < oensketHastighed and motorkraftCopy < "11111111") then
				motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) + "00000001");
				elsif(forhjulHastighed > oensketHastighed and motorkraftCopy > "00000000") then
				motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) - "00000001");
				end if;
			end if;
			clkCounterEkstra <= std_logic_vector(unsigned(clkCounterEkstra) + "1");
			end if;
		end if;
	end if;
end process;

	motorkraft <= motorkraftCopy;
end Behavioral;