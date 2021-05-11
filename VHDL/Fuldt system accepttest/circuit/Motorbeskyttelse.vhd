----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:28:45 03/25/2021 
-- Design Name: 
-- Module Name:    Motorbeskyttelse - Behavioral 
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

entity Motorbeskyttelse is
	port(
		clk						:	in 	std_logic; -- clk ind 
		PWM 						: 	out 	std_logic; -- PWM ud 
		retning 					:  out   std_logic :='0'; -- skift af retning
		noedbrems				:	in 	std_logic:='1'; -- hvis ndbremse
		Accelerator_speed 	: 	IN 	std_logic_vector(7 downto 0); -- Accerlator speed
		ABS_speed            : 	IN 	std_logic_vector(7 downto 0);
		oensketHastighed		:	in		std_logic_vector(7 downto 0) :="00000000"
	);
end Motorbeskyttelse;

architecture Behavioral of Motorbeskyttelse is
COMPONENT PWMGenerator
	PORT(
		speed : in std_logic_vector(7 downto 0);
		clk : in std_logic;
		PWM_out : out std_logic :='0'
	);
	END COMPONENT;
	
	signal	PWMacceleratorbehandling : std_logic :='0'; -- Output PWM signal Accelerator
	signal	PWMABSbehandling : std_logic :='0'; --Output PWM ABS 
	signal	behandlingAfOensketHastighed : std_logic	:='0'; -- Tjek om nsket hastighed er til sted
	signal 	enableAccelerator: std_logic :='1';  -- Sikker at PWM fra acclerator komme ud p det rigtigt tidspunkt
	signal	enableABS : std_logic :='0'; -- Sikker at PWM fra ABS komme ud p det rigtigt tidspunkt
	signal  	counter : Integer  := 0;   -- counter til at sikker 50 ms pause
	signal 	retning_buffer : std_logic := '0';  -- buffer til retning

	
begin
-- Accelerator speed
PWMGenerator1: PWMGenerator PORT MAP(
		speed => Accelerator_speed,
		clk => clk,
		PWM_out => PWMacceleratorbehandling
	);
--Ndbremse speed 
PWMGenerator2: PWMGenerator PORT MAP(
		speed => ABS_speed,  -- skal vre ABS_speed
		clk => clk,
		PWM_out => PWMABSbehandling 
	);
	
	--deaktiver acceelerator venter 50 ms skifter retning, venter igen 50 ms enable pwmABS 
   process (clk, noedbrems) begin  
			if(rising_edge(clk) and noedbrems = '0') then 
			enableAccelerator<='0';
				if(counter = 320000 and retning_buffer = '0') then 
					retning_buffer <='1';
					counter <= 0; 
					elsif (counter = 480000 and retning_buffer ='1') then 
						enableABS<='1'; 	
					else 
						counter<=counter+1; 
	
			end if; 
			end if; 
			 

	end process; 
	
	

		
	
	
-- tjek for om der haves en nsket hvis nej ingen PWM output. 

behandlingAfOensketHastighed <= (oensketHastighed(0) or oensketHastighed(1) or oensketHastighed(2) or oensketHastighed(3) or oensketHastighed(4) or oensketHastighed(5) or oensketHastighed(6) or oensketHastighed(7));

--Tjekke hvilket af de to PWM signal som skal sttes til outputs. 
PWM <= (noedbrems and PWMacceleratorbehandling and enableAccelerator and behandlingAfOensketHastighed) or ( (not noedbrems) and PWMABSbehandling and enableABS  and behandlingAfOensketHastighed) ; 

retning <=retning_buffer; 

end Behavioral;

