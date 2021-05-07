----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:08 03/26/2021 
-- Design Name: 
-- Module Name:    I2C-sendAcknowledge - Behavioral 
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

entity I2C_sendAcknowledge is
	port(
		clk_in : in std_logic;
		ack_signal : in std_logic; --'1' = not acknowledge, '0' = acknowledge
		trigger : in std_logic;
		reset : in std_logic;
		
		data_out : out std_logic;
		clk_out : out std_logic := '0';
		done_out : out std_logic := '0'
	);
end I2C_sendAcknowledge;

architecture Behavioral of I2C_sendAcknowledge is
	signal triggerBuf : std_logic := '0';
	signal done_outBuffer : std_logic := '0';
	signal clkCount : std_logic := '0';
	
begin
	
	process(clk_in) begin
		if(clk_in = '1'and clk_in'event) then
			if(trigger = '1' and triggerBuf = '0') then
				triggerBuf <= '1';
			elsif(triggerBuf = '1' and done_outBuffer = '0') then
				if(clkCount = '0') then

					clkCount <= '1';
				else
					clkCount <= '0';
					done_outBuffer <= '1';
				end if;
			elsif(reset = '1' and done_OutBuffer = '1') then
				done_outBuffer <= '0';
				triggerBuf <= '0';
				
			end if;
		end if;
	end process;
	
	clk_out <= clkCount;
	data_out <= ack_signal and not done_outBuffer;
	done_out <= done_outBuffer;

end Behavioral;

