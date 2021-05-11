----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:54 03/22/2021 
-- Design Name: 
-- Module Name:    I2C_sendNotAckStop - Behavioral 
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
use ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C_sendNotAckStop is
	port(
		clk_in : in std_logic;
		trigger : in std_logic;
		reset : in std_logic;
		
		SDA : out std_logic := '0';
		SCL : out std_logic := '0';
		done_out : out std_logic := '0'
		
	);
end I2C_sendNotAckStop;

architecture Behavioral of I2C_sendNotAckStop is
	signal triggerBuf : std_logic := '0';
	signal stateCounter : std_logic_vector(2 downto 0) := "000";
	signal doneOutBuffer : std_logic := '0';

begin
	process(clk_in) begin 
		if(clk_in'event and clk_in = '1') then
			if(trigger = '1' and triggerBuf = '0') then
				triggerBuf <= '1';
			
			elsif(triggerBuf = '1' and reset = '0' and doneOutBuffer = '0') then
				case stateCounter is
					when "000" => --skriv SDA høj
						SDA <= '1';
					when "001" => --skriv clock høj
						SCL <='1';
					when "010" => --skriv clock lav
						SCL <= '0';
					when "011" => --skriv SDA lav
						SDA <= '0';
					when "100" => --skriv skriv clock høj
						SCL <= '1';
					when "101" => --skriv SDA høj
						SDA <= '1';
					when others =>
						doneOutBuffer <= '1';
				end case;
				
				stateCounter <= std_logic_vector( unsigned(stateCounter) + "001");
				
			elsif (reset = '1' and doneOutBuffer = '1') then
				SDA <= '0';
				SCL <= '0';
				doneOutBuffer <= '0';
				triggerBuf <= '0';
				stateCounter <= "000";
			end if;
			
			
		end if;
		
	end process; 
	
	done_out <= doneOutBuffer;
end Behavioral;

