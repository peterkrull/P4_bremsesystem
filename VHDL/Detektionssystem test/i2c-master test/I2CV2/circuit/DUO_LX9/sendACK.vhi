
-- VHDL Instantiation Created from source file sendACK.vhd -- 08:10:20 03/22/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sendACK
	PORT(
		clk_in : IN std_logic;
		status : IN std_logic;          
		done_job : OUT std_logic;
		data_out : OUT std_logic;
		clk_disenable : OUT std_logic;
		SCL24 : OUT std_logic
		);
	END COMPONENT;

	Inst_sendACK: sendACK PORT MAP(
		clk_in => ,
		status => ,
		done_job => ,
		data_out => ,
		clk_disenable => ,
		SCL24 => 
	);


