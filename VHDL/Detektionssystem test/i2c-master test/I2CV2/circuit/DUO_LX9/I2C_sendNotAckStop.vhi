
-- VHDL Instantiation Created from source file I2C_sendNotAckStop.vhd -- 14:32:52 03/22/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_sendNotAckStop
	PORT(
		clk_in : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;          
		SDA : OUT std_logic;
		SCL : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;

	Inst_I2C_sendNotAckStop: I2C_sendNotAckStop PORT MAP(
		clk_in => ,
		trigger => ,
		reset => ,
		SDA => ,
		SCL => ,
		done_out => 
	);


