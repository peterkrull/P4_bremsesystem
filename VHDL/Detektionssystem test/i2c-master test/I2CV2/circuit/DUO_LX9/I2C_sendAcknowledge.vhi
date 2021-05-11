
-- VHDL Instantiation Created from source file I2C_sendAcknowledge.vhd -- 09:50:02 03/29/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_sendAcknowledge
	PORT(
		clk_in : IN std_logic;
		ack_signal : IN std_logic;
		trigger : IN std_logic;
		reset : IN std_logic;          
		data_out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic
		);
	END COMPONENT;

	Inst_I2C_sendAcknowledge: I2C_sendAcknowledge PORT MAP(
		clk_in => ,
		ack_signal => ,
		trigger => ,
		reset => ,
		data_out => ,
		clk_out => ,
		done_out => 
	);


