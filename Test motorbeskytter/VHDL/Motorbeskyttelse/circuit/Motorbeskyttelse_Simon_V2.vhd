--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:41:32 04/23/2021
-- Design Name:   
-- Module Name:   /home/ise/vm_delt_mappe/Done motorbeskyttelse/Motorbeskyttelse/circuit/Motorbeskyttelse_Simon_V2.vhd
-- Project Name:  PSL_Papilio_DUO_LX9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Motorbeskyttelse
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Motorbeskyttelse_Simon_V2 IS
END Motorbeskyttelse_Simon_V2;
 
ARCHITECTURE behavior OF Motorbeskyttelse_Simon_V2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Motorbeskyttelse
    PORT(
         clk : IN  std_logic;
         PWM : OUT  std_logic;
         retning : OUT  std_logic;
         noedbrems : IN  std_logic;
         Accelerator_speed : IN  std_logic_vector(7 downto 0);
         ABS_speed : IN  std_logic_vector(7 downto 0);
         oensketHastighed : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal noedbrems : std_logic := '1';
   signal Accelerator_speed : std_logic_vector(7 downto 0) := "10101010";
   signal ABS_speed : std_logic_vector(7 downto 0) := "10000000";
   signal oensketHastighed : std_logic_vector(7 downto 0) := "00100000";

 	--Outputs
   signal PWM : std_logic;
   signal retning : std_logic;

   -- Clock period definitions
   constant clk_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Motorbeskyttelse PORT MAP (
          clk => clk,
          PWM => PWM,
          retning => retning,
          noedbrems => noedbrems,
          Accelerator_speed => Accelerator_speed,
          ABS_speed => ABS_speed,
          oensketHastighed => oensketHastighed
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';--
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ms;	
		
		noedbrems <= '0'; 

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
