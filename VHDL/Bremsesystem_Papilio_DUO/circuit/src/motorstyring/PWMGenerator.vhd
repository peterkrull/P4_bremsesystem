----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:05 03/24/2021 
-- Design Name: 
-- Module Name:    PWMGenerator - Behavioral 
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

entity PWMGenerator is
	port(
	speed : in std_logic_vector(7 downto 0);
	clk : in std_logic;
	PWM_out : out std_logic :='0'
	);
end PWMGenerator;

architecture Behavioral of PWMGenerator is
	signal clkCount : std_logic_vector(10 downto 0) := "00000000000";
	signal clkCountReact : std_logic_vector(7 downto 0) := "00000000";
begin
	process(clk, clkCount, clkCountReact) begin
		if(clk'event and clk = '1') then
			clkCount <= std_logic_vector(unsigned(clkCount) + "00000000001");
			if(unsigned(clkCountReact) < unsigned(speed)) then
				PWM_out <= '1';
			elsif(unsigned(clkCountReact)>= unsigned(speed)) then
				PWM_out <= '0';
			end if;
			
			if(clkCount = "10011100010") then
				clkCountReact <= std_logic_vector(unsigned(clkCountReact) + "00000001");
				clkCount <= "00000000000";
			end if;
			
			if(clkCountReact = "11111111") then
				clkCountReact <="00000000";
			end if;
		end if;
	end process;
end Behavioral;

