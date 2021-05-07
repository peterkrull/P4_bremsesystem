----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:52:39 04/23/2021 
-- Design Name: 
-- Module Name:    kontrolmodul - Behavioral 
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

entity distancecalculator is
	port(
		speed 	: in std_logic_vector(7 downto 0);
		
		--testOut1	: out std_logic_vector(17 downto 0);
		--testOut2 : out std_logic_vector(17 downto 0);
		--testOut3 : out std_logic_vector(8 downto 0);
		
		breakdistance_out : out std_logic_vector(8 downto 0);
		totaldistance : out std_logic_vector(9 downto 0));
end distancecalculator;

architecture Behavioral of distancecalculator is
	signal k1 					: unsigned(17 downto 0):= "110111110001011111";	--Q(2,16)
	signal equation1			: unsigned(25 downto 0);
	signal equation1format	: unsigned(17 downto 0);  --Speed in cm/s 

	signal k2					: unsigned(17 downto 0):= "000000000010000011";	--Q(0,18)																		
	signal equation2			: unsigned(35 downto 0);
	signal equation2format	: unsigned(17 downto 0);
	
	signal equation3			: unsigned(35 downto 0);
	signal breakdistance		: unsigned(9 downto 0); --9 bit
	
	signal engineSwitchTime	: unsigned(17 downto 0):="000001100110011001"; --Q(0,18)
	signal engineSwitchDist	: unsigned(35 downto 0);
	
	signal AlarmTime			: unsigned(17 downto 0):="010011001100110011";	--Q(0,18)
	signal equation4			: unsigned(35 downto 0);
	signal alarmdistance		: unsigned(9 downto 0);
	
	signal totaldistance_fix: unsigned(10 downto 0);

begin
	--Calculation of break distance
	--Equation 3
	equation1 <= unsigned(speed) * k1;					--Q(10,16) = Q(8,0) * Q(2,16)  Speed in ms.
	equation1format <= equation1(25 downto 8);		--Q(10,8)
	--testOut1 <= std_logic_vector(equation1format);
	
	--Equation 5
	equation2 <= equation1format * k2;					--Q(10,26) = Q(10,8) * Q(0,18) --x
	equation2format <= equation2(25 downto 8);		--Q(0,18)
	--testOut2 <= std_logic_vector(equation2format);
	
	--Equation 6
	equation3 <= equation2format * equation1format;	--Q(10,26) = Q(0,18) * Q(10,8) --breaking distance
	--breakdistance <= equation3(34 downto 25);			--Q(9,1)
	
	--EngineSwitchDistance
	engineSwitchDist <=equation1format * engineSwitchTime; --Q(10,26) = Q(10,8) * Q(0,18)
	breakdistance <= equation3(34 downto 25) + engineSwitchDist(34 downto 25) + 2 ;  --Q(9,1)
	--testOut3 <= std_logic_vector(breakdistance);
	breakdistance_out <= std_logic_vector(breakdistance(9 downto 1));
	
	
	--Calulate of alarm distance
	equation4 <= equation1format * alarmTime; 		--Q(10,26) = Q(10,8) * Q(0,18)
	alarmdistance <= equation4(34 downto 25);			--Q(9,1)
	
	
	--Sum the distances (Total distance)
	totaldistance_fix <= ("0" & breakdistance) + ("0" & alarmdistance) + 2; --Q(10,1)
	totaldistance <= std_logic_vector(totaldistance_fix(10 downto 1));
	
	--Sørg for at der først afrundes efter der er langt sammen
	
	--Starter I2c modul. 
	--Sammenlign når de er færdig
end Behavioral;
--
