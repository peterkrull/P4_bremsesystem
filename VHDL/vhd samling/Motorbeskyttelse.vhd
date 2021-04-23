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
		clkMot	:	in std_logic;
		PWM1 	: 	out 	std_logic;
		PWM2	:	out	std_logic;
		noedbrems	:	in	std_logic;
		speed1	:	in	std_logic_vector(7 downto 0);
		speed2	:	in	std_logic_vector(7 downto 0);
		oensketHastighed	:	in	std_logic_vector(7 downto 0)
	);
end Motorbeskyttelse;

architecture Behavioral of Motorbeskyttelse is
COMPONENT PWMGenerator
	PORT(
		speed : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		PWM_out : OUT std_logic
		);
	END COMPONENT;
	
	signal	behandlingAfPWM1 : std_logic :='0';
	signal	behandlingAfPWM2 : std_logic :='0';
	signal	behandlingAfPWM1Out : std_logic :='0';
	signal	behandlingAfPWM2Out : std_logic :='0';
	signal	behandlingAfOensketHastighed : std_logic	:='0';
	
begin
PWMGenerator1: PWMGenerator PORT MAP(
		speed => speed1,
		clk => clkMot,
		PWM_out => behandlingAfPWM1
	);
	
PWMGenerator2: PWMGenerator PORT MAP(
		speed => speed2,
		clk => clkMot,
		PWM_out => behandlingAfPWM2 
	);

behandlingAfOensketHastighed <= ((oensketHastighed(0) or oensketHastighed(1)) or (oensketHastighed(2) or oensketHastighed(3)) or (oensketHastighed(4) or oensketHastighed(5)) or (oensketHastighed(6) or oensketHastighed(7)));

behandlingAfPWM1Out <= (noedbrems and behandlingAfPWM1); 

behandlingAfPWM2Out <= ((not noedbrems) and behandlingAfPWM2);
	
PWM1 <= (behandlingAfOensketHastighed and behandlingAfPWM1Out);

PWM2 <= (behandlingAfOensketHastighed and behandlingAfPWM2Out);

end Behavioral;

