
-- VHDL Instantiation Created from source file PWMGenerator.vhd -- 07:36:15 03/25/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PWMGenerator
	PORT(
		speed : IN std_logic_vector(7 downto 0);
		clk : IN std_logic;          
		PWM_out : OUT std_logic
		);
	END COMPONENT;

	Inst_PWMGenerator: PWMGenerator PORT MAP(
		speed => ,
		clk => ,
		PWM_out => 
	);


