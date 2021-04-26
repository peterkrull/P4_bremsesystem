----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:20:21 03/29/2021 
-- Design Name: 
-- Module Name:    absSpeed - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity absSpeed is
	port(
		frontSpeed	:	out	std_logic_vector(7 downto 0):= (others => '0');
		backSpeed	:	in	std_logic_vector(7 downto 0):= (others => '0')
	);
end absSpeed;

architecture Behavioral of absSpeed is
	signal divider	:	std_logic_vector(15 downto 0)	:= (others => '0');
	
begin
		divider <= std_logic_vector(unsigned(backSpeed) - unsigned(std_logic_vector(unsigned(std_logic_vector(unsigned(backSpeed) * 17))/100)));
		frontSpeed <= divider(7 downto 0);
end Behavioral;

