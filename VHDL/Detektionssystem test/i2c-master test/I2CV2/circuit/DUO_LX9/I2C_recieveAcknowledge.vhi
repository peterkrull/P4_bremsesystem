
-- VHDL Instantiation Created from source file I2C_recieveAcknowledge.vhd -- 14:48:46 03/16/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_recieveAcknowledge
	PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;
		SDA : IN std_logic;          
		clk_out : OUT std_logic;
		done_out : OUT std_logic;
		error : OUT std_logic
		);
	END COMPONENT;

	Inst_I2C_recieveAcknowledge: I2C_recieveAcknowledge PORT MAP(
		clk_in => ,
		trigger => ,
		SDA => ,
		clk_out => ,
		done_out => ,
		error => 
	);


