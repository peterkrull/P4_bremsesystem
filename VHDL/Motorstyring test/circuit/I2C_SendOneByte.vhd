----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:45 03/15/2021 
-- Design Name: 
-- Module Name:    I2C_SendOneByte - Behavioral 
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

entity I2C_SendOneByte is
	port(
		clk_in : in std_logic;
		byte_in : in std_logic_vector(7 downto 0);
		trigger : in std_logic;
		reset : in std_logic;
		
		data_Out : out std_logic := '0';
		clk_out : out std_logic := '0';
		done_out : out std_logic := '0'
	);
end I2C_SendOneByte;

architecture Behavioral of I2C_SendOneByte is
	signal bitCount : std_logic_vector(2 downto 0) := "000";
	signal enableSDA : std_logic := '0';
	signal done_outBuffer : std_logic:= '0';
	signal triggerBuf : std_logic := '0';
	signal clkCount : std_logic_vector(1 downto 0) := "00";
	signal clkBuf : std_logic := '0';
	
begin
	process(clk_in) begin
		if(clk_in'event and clk_in = '0') then 
			--trigger
			if(triggerBuf = '0' and trigger = '1' and done_outBuffer = '0') then
				triggerBuf <= '1';
			
			--run
			elsif(triggerBuf = '1' and done_outBuffer = '0') then
				
				case clkCount is 
					when "00" =>
						bitCount <= std_logic_vector(unsigned(bitCount) - "001");
						enableSDA <= '1';
						clkCount <= "01";
					when "01" =>
						--clkBuf <= '1';
						clkCount <= "10";
					when "10" =>
						--clkBuf<= '0';
						clkCount <= "11";
					when "11" =>
						if(bitCount ="000") then
							done_outBuffer<='1';
							enableSDA <= '0';
						else 
							clkCount <= "00";
						end if;
					when others =>
						null;
				end case;
				
			
			--reset
			elsif(triggerBuf = '1' and done_outBuffer = '1' and reset = '1') then
				bitCount <= "000";
				done_outBuffer <= '0';
				triggerBuf<= '0';
				clkCount <= "00";
				
			end if;
		end if;
		
	end process;
	
	data_Out <= byte_in(to_integer(unsigned(bitCount))) and enableSDA;

	done_out <= done_outBuffer;
	clk_out <= (clkCount(0) xor clkCount(1))and not clkCount(0) ;
end Behavioral;

