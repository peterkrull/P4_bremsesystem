----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:49:12 04/23/2021 
-- Design Name: 
-- Module Name:    I2C-recieveByte - Behavioral 
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
use IEEE.numeric_std.ALL;


entity I2C_recieveByte is
	port(
		clk_in  : in std_logic;
		SDA 	  : in std_logic;
		trigger : in std_logic;
		reset   : in std_logic;
		
		SCL	  : out std_logic := '0';
		dataOut : out std_logic_vector(7 downto 0) := x"00";
		done    : out std_logic := '0';
		clkstep_out : out unsigned(1 downto 0);
		bitCounter_out : out unsigned(2 downto 0)
	);
end I2C_recieveByte;

architecture Behavioral of I2C_recieveByte is
	signal triggerBuf : std_logic := '0';
	signal doneOutBuf : std_logic := '0';
	signal dataBuffer : std_logic_vector(7 downto 0) := x"00";
	signal bitCounter : unsigned (2 downto 0):= "111";
	signal clkStep 	: unsigned(1 downto 0):= "00";
begin
	
	process(clk_in) begin
		if(clk_in'event and clk_in = '1') then
			if(trigger = '1' and triggerBuf = '0') then
				triggerBuf <= '1';
			elsif(doneOutBuf = '1' and triggerBuf = '1' and reset = '1') then
				triggerBuf <= '0';
				dataBuffer <= x"00";
				bitCounter <= "111"; 
				doneOutBuf <= '0';
			elsif(triggerBuf = '1' and doneOutBuf = '0') then
				case clkstep is 
					when "00" =>
						SCL <= '1';
						dataBuffer(to_integer(bitCounter)) <= SDA;
						clkstep <= "01";
					when "01" =>
						SCL <= '0';
						clkstep <= "10";
					when "10" =>
						bitCounter <= bitCounter - 1;
						clkstep <= "11";
					when "11" =>
						clkstep <= "00";
						if(bitCounter = "111") then 
							doneOutBuf <= '1';
						end if;
					-- when others => is not needed
					-- null;
				end case;
			end if;
		end if;
	
	end process; 
	
	clkstep_out <= clkstep;
	bitCounter_out <= bitCounter;
	
	
	dataout <= dataBuffer;
	done <= doneOutBuf;
end Behavioral;

