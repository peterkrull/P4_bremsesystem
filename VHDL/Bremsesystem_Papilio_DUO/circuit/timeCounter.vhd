----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:17 03/25/2021 
-- Design Name: 
-- Module Name:    timeCounter - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


--Formål: Hvor lang tid går der mellem et sensorinput

entity timeCounter is
	port(
	clk1 			: in std_logic; --37 kHz
	sensor		: in std_logic;
	
	timePassed 	: out std_logic_vector(16 downto 0);
	data_ready	: out std_logic);
	
	--led			: out std_logic_vector(7 downto 0)); --Debugging
end timeCounter;

architecture Behavioral of timeCounter is
	
	--Syncronizer
	signal sensor_pipe 		:std_logic;
	signal sensor_rising		:std_logic;
	signal sensor_falling	:std_logic;
	signal sensor_event		:std_logic;
	
	--counter
	signal count				:unsigned(16 downto 0);
	signal timePassed_int	:std_logic_vector(16 downto 0);

begin

	process(clk1)  --Syncronize rising og falling til clk
	begin
		if(rising_edge(clk1)) then
								-- Making pipe of sensor. 
			sensor_rising 	<= not sensor_pipe and sensor;
			sensor_falling <= not sensor and sensor_pipe;
			sensor_pipe 	<= sensor; 
		end if;
	end process;
	sensor_event <= sensor_rising or sensor_falling;

	
	process(clk1) --Counting time 
	begin
		if(rising_edge(clk1)) then
			if( count = "11111111111111111") then
			timePassed_int <= std_logic_vector(count);
			count 			<= "10000000000000000";
			data_ready 		<= '1';
						
			elsif(sensor_event = '0') then
			count 		<= count + 1;
			data_ready 	<= '0';
			
			else
			timePassed_int <= std_logic_vector(count);
			count 			<= "00000000000000000";
			data_ready 		<= '1';
			end if;
		end if;
	end process;	
	
	timePassed <= timePassed_int;
	--led <= timePassed_int (16 downto 9);
	
end Behavioral;

