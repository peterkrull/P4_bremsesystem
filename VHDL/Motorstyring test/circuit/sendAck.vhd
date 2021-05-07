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

entity sendACK is
	port(
		clk_in : in std_logic;--clock 
		status : in std_logic:= '1'; -- tjekke om koden skal køre
		reset : in std_logic;
		done_job : out std_logic :='0'; -- fortæller at man er færdig
		data_out : out std_logic :='0';  -- data som skal sendes ud 
		SCL24 : out std_logic :='0' --SCL clock 
	);
end sendACK;

architecture Behavioral of sendACK is
	signal bitCount : std_logic_vector(6 downto 0) :="1111111";   -- til at styre hvor man skal hen i koden;
	signal statusBuffer : std_logic := '0';
	signal done_jobBuffer : std_logic := '0';
	
begin

	process(clk_in) begin
	--Sætter SCL lav
		if(clk_in'event and clk_in = '0') then
			if(status = '1' and statusBuffer = '0' and done_jobBuffer = '0') then 
				statusBuffer <= '1';
			elsif (statusBuffer = '1')  then
				if bitCount = "1111111" then
					SCL24<='0'; 
					bitCount <= "0111111";
			
				--Sender not acknowledge 
				elsif bitCount= "0111111" then  -- hvis clk = sende not acknowledge  
					data_out <='1'; -- sender not acknowledge
					SCL24<='1'; -- data klar sætter SCL høj
					bitCount <="0011111";  -- har sendt notacknowledge så videre til næste trn 
				--fjerne not acknowledge
				elsif bitCount= "0011111" then  --- sætter lav igen SDA har været høj 1 clk cycle 
					data_out<='0';
					SCL24<='0';  --data væk fjern SCL 
					bitCount <="0001111";  -- har sat SDA lav så videre til næste trin 
			-- clock høj	
				elsif bitCount="0001111" then	-- hvis clk høj sende SDA og dektivere clk. 
					SCL24<='1'; 
					bitCount <="0000111";   -- har sat SDA Høj og deaktiveret clk så videre til næste trin 
				--data høj
				elsif bitCount="0000111" then	-- hvis clk høj sende SDA og dektivere clk. 
					data_out<='1'; 
				
					bitCount <="0000011";

				elsif(bitCount = "0000011") then
					done_jobBuffer <='1';  -- fortæller jobbet er færdig (1 pulse)
					statusBuffer <= '0';
				end if; 
			
			elsif (reset = '1')	then
				done_jobBuffer <='0';  -- fortæller jobbet er færdig (1 pulse) 
				bitCount <="1111111"; 
				data_out <= '0';
				SCL24<= '0';
			end if; 			

		end if;			
	
	end process;
	
	done_job <= done_jobBuffer;

	end Behavioral;
