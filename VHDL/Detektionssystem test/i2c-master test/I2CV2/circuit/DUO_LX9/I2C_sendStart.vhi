
-- VHDL Instantiation Created from source file I2C_sendStart.vhd -- 16:45:15 03/18/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_sendStart
	PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;          
		data_Out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;

	Inst_I2C_sendStart: I2C_sendStart PORT MAP(
		clk_in => ,
		trigger => ,
		data_Out => ,
		clk_out => ,
		done_out => 
	);


