----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:58 03/18/2021 
-- Design Name: 
-- Module Name:    I2C_sendStart - Behavioral 
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

entity I2C_sendRestart is
	port(
		clk_in : in std_logic;
		trigger : in std_logic;
		reset : in std_logic;
		
		data_Out : out std_logic := '0';
		clk_out : out std_logic := '0';
		done_out : out std_logic := '0'
	);
end I2C_sendRestart;

architecture Behavioral of I2C_sendRestart is
	
	signal done_outBuffer : std_logic:= '0';
	signal triggerBuf : std_logic := '0';
	signal clkCount : std_logic_vector(2 downto 0) := "000";
	
begin
	
	process(clk_in, triggerBuf, done_outBuffer, reset, trigger) begin
		if(clk_in'event and clk_in = '0') then
			if(trigger = '1' and done_outBuffer = '0' and triggerBuf = '0' and reset = '0') then
				triggerBuf <= '1';

			elsif(triggerBuf = '1' and reset = '0' and done_outBuffer = '0') then
			
				case clkCount is
					when "000" =>
						clk_out <= '1';
						data_Out <= '1';
						clkCount <= "001";
					when "001" =>
						clkCount <= "010";
					when "010" =>
						clkCount <= "011";
						data_Out <= '0';
					when "011" =>
						clkCount <= "100";
					when "100" =>
						done_outBuffer <= '1';
						clk_out <= '0';
						clkCount <= "101";
					when "101" =>
						clkCount <= "110";
					when "110" =>
						clkCount <= "111";
					when "111" =>
						clkCount <= "000";
					when others =>
						--clkCount <= std_logic_vector( unsigned(clkCount) + "01");
				end case;
				
			elsif(triggerBuf = '1' and done_outBuffer = '1' and reset = '1') then
				done_outBuffer <= '0';
				triggerBuf     <= '0';
				clkCount <= "000";
			end if;
		end if;
		

	end process;
	
	
--	data_out <= (not clkCount(1)) and clkCount(0);
--	clk_out <= clkCount(0) xor clkCount(1);
	done_out <= done_outBuffer;
end Behavioral;