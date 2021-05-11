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

entity recieve_byte is
	port(
		clk_in : in std_logic;--clock 
		byte_rec : out std_logic_vector(7 downto 0) :="00000000"; --Sted at gemme modtaget data
		SDA : in std_logic; -- data ind mappes til SDA 
		status : in std_logic := '0'; -- tjekke om koden skal køre
		done_job : out std_logic :='0'; -- fortæller statemachine job er færdig 
		SCL	: out std_logic :='0'
	);
end recieve_byte;

architecture Behavioral of recieve_byte is
	signal bitCount : std_logic_vector(3 downto 0) :="1000";   -- tal at styre hvilket addres plads data kommer ind000";
	signal done : std_logic :='0'; -- sikker done signal kun er 1 tick
	signal SCLBuffer : std_logic:='0'; --Buffer til SCL 
	
--	signal dataRec : std_logic_vector(7 downto 0) :="00000000"; 
	signal holdSCLLOW  : std_logic_vector(1 downto 0) := "01";
	
begin

	process(clk_in, status, SCLBuffer) begin
		if(clk_in'event and clk_in = '0') and status = '1' and SCLBuffer ='1'	then --Der kan læses data
			--byte_rec <=(others=>'0');
			byte_rec(to_integer(unsigned(bitCount))-1) <= SDA; -- data læset fra SDA smides over på den ønsket plads 
			bitCount <= std_logic_vector(unsigned(bitCount) - "0001"); --trækker en fra bit count således der peges på næste i rækken 
		end if; 
		
		if(clk_in'event and clk_in = '1')	then	
				if(bitCount = "0000") then -- læset 8 bit job done.   
					done_job <='1';  -- fortæller jobbet er færdig (1 pulse) 
					done<='1'; --sikker færdig job kun er 1 tick
				end if; 
				if (bitCount = "0000") and done ='1' then -- job færdig kun 1 tick
					bitCount <="1000";  -- gøre klare til næste gang 
					done_job <='0';  -- fortæller jobbet er færdig kun 1 tick
					done<='0'; -- sikker færdig job kun er 1 tick
				end if; 						
		end if; 
	
	end process;
-- Procces SCL	forsinker SCL med 2 ift clk 
	process  (clk_in, status) begin
	if(clk_in'event and clk_in='1') and status = '1'  then
		if(holdSCLLow = "00") then
			if( SCLBuffer='0') then
				SCL<='1'; 
				SCLBuffer<='1'; 
				  
			elsif (SCLBuffer='1')  then  
				SCL<='0';  
				SCLBuffer<='0';
				holdSCLLow <= "01";
				end if; 
		elsif(holdSCLLOW = "01" or holdSCLLow = "10") then
			holdSCLLow <= std_logic_vector(shift_left(unsigned(holdSCLLow),1));
		end if;
	end if;
	
	
	end process;

	end Behavioral;

