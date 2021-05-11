
-- VHDL Instantiation Created from source file I2C_SendOneByte.vhd -- 11:45:22 03/16/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT I2C_SendOneByte
	PORT(
		clk_in : IN std_logic;
		byte_in : IN std_logic_vector(7 downto 0);          
		data_Out : OUT std_logic;
		clk_out : OUT std_logic;
		done_out : OUT std_logic;
		clockCounterOut : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_I2C_SendOneByte: I2C_SendOneByte PORT MAP(
		clk_in => ,
		byte_in => ,
		data_Out => ,
		clk_out => ,
		done_out => ,
		clockCounterOut => 
	);


