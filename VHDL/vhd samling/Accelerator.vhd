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
		ForhjulHastighed	:	in	std_logic_vector(7 downto 0):= "01111111";
		motorkraft	: out std_logic_vector(7 downto 0) := "00000000"
	);
end Accelerator;

architecture Behavioral of Accelerator is
	signal motorkraftCopy : std_logic_vector(7 downto 0) := "00000000";
	signal clkCounter	:	std_logic_vector(17 downto 0) := "000000000000000000";
begin
	process(clk, clkCounter, motorkraftCopy) begin
		if(clk'event and clk = '1') then
		clkCounter <= std_logic_vector(unsigned(clkCounter) + "000000000000000001");
			if(clkCounter = "111101000010010000") then
				if(oensketHastighed < ForhjulHastighed and motorkraftCopy > "00000000")then
					motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) - "00000001");
				elsif(oensketHastighed > ForhjulHastighed and motorkraftCopy < "11111111") then
					motorkraftCopy <= std_logic_vector(unsigned(motorkraftCopy) + "00000001");
				end if;
				clkCounter <= "000000000000000000";
			end if;
		end if;
	end process;
	
	motorkraft <= motorkraftCopy;
end Behavioral;

