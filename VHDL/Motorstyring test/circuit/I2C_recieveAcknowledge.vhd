----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:15 03/16/2021 
-- Design Name: 
-- Module Name:    I2C_recieveAcknowledge - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I2C_recieveAcknowledge is
	port(
		clk_in : in std_logic;
		trigger : in std_logic;
		SDA : in std_logic;
		reset : in std_logic;
		
		clk_out : out std_logic := '0';
		done_out : out std_logic := '0';
		error : out std_logic := '0'
	);
end I2C_recieveAcknowledge;

architecture Behavioral of I2C_recieveAcknowledge is
	signal triggerBuffer : std_logic:='0';
	signal isListening : std_logic := '0';
	signal done_outBuffer : std_logic := '0';
	
begin
	process(clk_in) begin
		if(clk_in'event and clk_in= '1') then
			--trigger
			if(triggerBuffer = '0' and isListening = '0' and trigger = '1') then
				triggerBuffer <= '1';
				
			--running
			elsif(triggerBuffer = '1' and isListening = '0' and done_outBuffer = '0') then
				clk_out <= '1';
				isListening <= '1';
				
			
			elsif (triggerBuffer = '1' and isListening = '1' and done_outBuffer = '0') then
				if(SDA = '0') then
					error <= '0';
				else 
					error <= '1';
				end if;
				
				clk_out <= '0';
				done_outBuffer <= '1';
			--reset
			elsif(done_outBuffer = '1' and reset = '1') then
				triggerBuffer <= '0';
				isListening <= '0';
				done_outBuffer <= '0';
				clk_out <='0';
				error <= '0';
			end if;
			
		end if;
		
	end process;
	
	done_out <= done_outBuffer;
	
end Behavioral;

