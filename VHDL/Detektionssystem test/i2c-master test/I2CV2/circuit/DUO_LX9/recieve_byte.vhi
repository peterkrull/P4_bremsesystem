
-- VHDL Instantiation Created from source file recieve_byte.vhd -- 07:53:46 03/22/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT recieve_byte
	PORT(
		clk_in : IN std_logic;
		data_in : IN std_logic;
		status : IN std_logic;          
		byte_rec : OUT std_logic_vector(7 downto 0);
		done_job : OUT std_logic;
		SCL_23 : OUT std_logic
		);
	END COMPONENT;

	Inst_recieve_byte: recieve_byte PORT MAP(
		clk_in => ,
		byte_rec => ,
		data_in => ,
		status => ,
		done_job => ,
		SCL_23 => 
	);


