----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:12 03/26/2021 
-- Design Name: 
-- Module Name:    Accelerator - Behavioral 
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

entity Accelerator is
	port(
		clk	:	in	std_logic;
		oensketHastighed	:	in	std_logic_vector(7 downto 0);
		forhjulHastighed	:	in	std_logic_vector(7 downto 0);
		motorkraft	: out std_logic_vector(7 downto 0)
	);
end Accelerator;

architecture Behavioral of Accelerator is
	signal motorkraftCopy : std_logic_vector(7 downto 0) := "00000000";
	signal motorkraftCopy1 : std_logic_vector(7 downto 0) := "00000000";
	signal clkCounter	:	std_logic_vector(17 downto 0) := "000000000000000000";
	signal mode : std_logic :='0';
begin
	process(clk) begin
		if(clk'event and clk = '1') then
			if(mode = '0') then
				clkCounter <= std_logic_vector(unsigned(clkCounter) + "000000000000000001");
				if(clkCounter = "111101010001111000") then
					if(oensketHastighed < forhjulHastighed and motorkraftCopy > "00000000")then
						mode <='1';
					elsif(oensketHastighed > forhjulHastighed and motorkraftCopy < "11111111") then
						motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) + "00000001");
					end if;
					clkCounter <= "000000000000000000";
				end if;
			else
			motorkraftCopy <= "00000000";
			end if;	
		end if;
	end process;
	
	process(clk) begin
		if(clk'event and clk = '1') then
			if(mode = '1') then
				if(oensketHastighed < forhjulHastighed and motorkraftCopy1 > "00000000")then
					motorkraftCopy1 <= "00000000";
				elsif(oensketHastighed > forhjulHastighed and motorkraftCopy1 < "11111111") then
					motorkraftCopy1 <= "11111111";
				end if;
			end if;
		end if;
	end process;
	
	
	motorkraft <= motorkraftCopy or motorkraftCopy1;
end Behavioral;

