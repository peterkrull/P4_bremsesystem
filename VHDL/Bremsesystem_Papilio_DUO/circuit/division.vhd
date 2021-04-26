----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:48 03/29/2021 
-- Design Name: 
-- Module Name:    division - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity division is
	Port ( 
		--Nomi 		: in std_logic_vector(15 downto 0);			--Permanent udkommenteret 
      DenomiIn	: in std_logic_vector(16 downto 0);			
		--switch	: in std_logic_vector(7 downto 0);				--Til test
      Start 	: in std_logic;
      clk 		: in std_logic;  										--Gerne noget hurtig. Den styrer hvor hurtigt beregningen laves. (37 kHz)
      Result 	: out std_logic_vector(7 downto 0));
		--Rest 		: out std_logic_vector(15 downto 0);		--Permanent udkommenteret. Rest benyttes ikke.
		--led 		: out std_logic_vector(7 downto 0);			--Til test
      --Finish	: out std_logic;
end division;

 architecture Behavioral of division is

	--Division
	signal Q			: std_logic_vector( 31 downto 0);
   signal Diff		: std_logic_vector( 16 downto 0);
	signal Count	: std_logic_vector(  4 downto 0);		
	signal Denomi	: std_logic_vector( 15 downto 0);		--Size of input ajustment.
	--Tæller
	signal Nomi		: std_logic_vector( 15 downto 0):= "1111111111111111";   
	
	--Edge detection, syncronizer
	signal Start_pipe		: std_logic;
	signal Start_falling : std_logic;
	
	--Output stage
	signal Finish			: std_logic;
	signal Result_carry	: Std_logic_vector(7 downto 0);

begin

	process(clk)  --edge detection on start, syncronizer
	begin
		if(rising_edge(clk)) then
			Start_falling 	<= not Start and Start_pipe;
			start_pipe 		<= Start;
		end if;
	end process;
	
	--Division ---------------------------
	Denomi <= DenomiIn(15 downto 0);		--LL
	--Denomi <= switch(7 downto 0) & "00000000";			--Til test
	
   Diff <= ('1'&Q(30 downto 15)) - ('0'&Denomi);	
	
	process(clk) --Division
	begin
      if (Start_falling ='1') then
			Q <= "0000000000000000" & Nomi;
		elsif Rising_edge( clk) then
			if Count(4)='0' then
				if Diff(16)='0' then
					Q <= Q(30 downto 0) & '0';
				else
					Q <= Diff(15 downto 0) & Q(14 downto 0) & '1';
				end if;
			end if;
		end if;
	end process;
	
	process(clk) --Counter (Hvornår er divisionen færdig)
	begin
	   if(Start_falling='1') then
		   Count <= "00000";
		elsif Rising_edge(clk) then
		   if (Count(4)='0') then
			   Count <= Count+1;
			end if;
		end if;
	end process;

	Result_carry 	<= Q( 7 downto  0) when DenomiIn(16)='0' else		--Hvis inputer er for stort. output lig 0.
							"00000000";
	
	--led <= Q( 7 downto  0);			--Til test
	--Rest   <= Q( 31 downto 16);		--Udkommenteret permannet
	Finish <= Count(4);
	
	
	--Output latch
	process(clk)		--Updates output when it is ready
	begin
		if(rising_edge(clk)) then
			if(Finish = '1') then
				Result <= Result_carry;
			end if;
		end if;
	end process;


end Behavioral;
