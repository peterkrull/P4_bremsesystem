----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:38:01 03/29/2021 
-- Design Name: 
-- Module Name:    ringbuffer - Behavioral 
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

entity ringbuffer is
	port(
		timePassed 	: in std_logic_vector(16 downto 0);
		start	: in std_logic;

--  	For testing		
--		count_out	: out std_logic_vector(1 downto 0);
--		buf_out0		: out std_logic_vector(16 downto 0);
--		buf_out1		: out std_logic_vector(16 downto 0);
--		buf_out2		: out std_logic_vector(16 downto 0);
--		buf_out3		: out std_logic_vector(16 downto 0);
		
		timePassedAvg : out std_logic_vector(16 downto 0));
end ringbuffer;

architecture Behavioral of ringbuffer is
	type buf_file_type is array (3 downto 0) of
	unsigned(16 downto 0);
	signal buf_file 	: buf_file_type := ((others=>'1'), (others=>'1'), (others=>'1'), (others=>'1'));
	signal bufSum 		: unsigned(18 downto 0);
	
	signal count 		: unsigned(1 downto 0):="00";

begin

	process(start)
	begin
		if(rising_edge(start)) then
		buf_file(to_integer(count)) <= unsigned(timePassed);
		count <= count +1;
		end if;
	end process;
	
	--Math
	bufSum <= ("00" & buf_file(0)) + ("00" & buf_file(1)) + ("00" & buf_file(2)) + ("00" & buf_file(3));
	timePassedAvg <= std_logic_vector(bufSum(18 downto 2));
	
	--Outputs for testing
--	count_out <= std_logic_vector(count);
--	buf_out0 <= std_logic_vector(buf_file(0));
--	buf_out1 <= std_logic_vector(buf_file(1));
--	buf_out2 <= std_logic_vector(buf_file(2));
--	buf_out3 <= std_logic_vector(buf_file(3));

end Behavioral;

