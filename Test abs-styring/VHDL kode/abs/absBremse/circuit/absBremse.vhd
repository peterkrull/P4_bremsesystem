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

entity absBrems is
	port(
		clk	:	in	std_logic;
		frontSpeed	:	in	std_logic_vector(7 downto 0):="01111111";
		rearSpeed	:	in	std_logic_vector(7 downto 0);
		engPower	:	out	std_logic_vector(7 downto 0)
	);
end absBrems;

architecture Behavioral of absBrems is
	signal speedABS		:	std_logic_vector(15 downto 0):="0000000000000000";
	signal engPowerCopy	:	std_logic_vector(7 downto 0):="00000000";

begin	

	speedABS <=std_logic_vector(unsigned(rearSpeed) * 83 / 100);

process(clk) begin
	if(clk'event and clk = '1') then
		if(rearSpeed > "00101000")then
			if(frontSpeed > speedABS and engPowerCopy < "11111111") then
			engPowerCopy <= "11111111";
			elsif(frontSpeed < speedABS and engPowerCopy > "00000000") then
			engPowerCopy <= "00000000";
			end if;
		else
			engPowerCopy <= "00000000";
		end if;
	end if;
end process;

	engPower <= engPowerCopy;
	
end Behavioral;