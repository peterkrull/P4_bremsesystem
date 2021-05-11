----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:14 04/27/2021 
-- Design Name: 
-- Module Name:    detektionssytem - Behavioral 
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

entity detektionssytem is
	port(
		clk   	  : in    std_logic;
		speed_in	  : in    std_logic_vector(7 downto 0);
		
		i2cDataOut : out std_logic_vector(15 downto 0);
		
		SDA   	  : inout std_logic;
		SCL   	  : out   std_logic;
		alarm 	  : out   std_logic;
		bremsePin 	  : out   std_logic
		
	);
end detektionssytem;

architecture Behavioral of detektionssytem is
	COMPONENT I2CV2
	PORT(
		clk : IN std_logic;
		trigger : IN std_logic;    
		SDA : INOUT std_logic;      
		SCL : OUT std_logic;
		dataOut : OUT std_logic_vector(15 downto 0);
		error_out : OUT std_logic
		);
	END COMPONENT;
	
	
	COMPONENT kontrolModul3
	PORT(
		clk : IN std_logic;
		speed : IN std_logic_vector(7 downto 0);
		i2cData : IN std_logic_vector(9 downto 0);
		i2cError : IN std_logic;         
		i2cTrigger : OUT std_logic;
		brems : OUT std_logic;
		alarm : OUT std_logic
		);
	END COMPONENT;
	
	signal triggerI2C : std_logic;
	signal dataI2C    : std_logic_vector(15 downto 0);
	signal errorI2C	: std_logic;
	signal brems 		: std_logic;
--	signal speedtest	: std_logic_vector(7 downto 0):= "00101000";
begin
	
	
	I2C: I2CV2 PORT MAP(
		clk => clk,
		trigger => triggerI2C,
		SCL => SCL,
		SDA => SDA,
		dataOut => dataI2C,
		error_out => errorI2C
	);
	i2cDataOut <= dataI2C;

	kontrolModul: kontrolModul3 PORT MAP(
		clk => clk, 
		speed => speed_in,
		i2cData => dataI2C(9 downto 0),
		i2cError => errorI2C,
		i2cTrigger => triggerI2C,
		brems => brems,
		alarm => alarm
	);
	bremsePin <= brems;
end Behavioral;

