--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:43:54 03/25/2021
-- Design Name:   
-- Module Name:   /home/ise/SharedVMFolder/PWMGenerator/circuit/PWMGeneratorTest.vhd
-- Project Name:  PSL_Papilio_DUO_LX9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PWMGenerator
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
 
ENTITY PWMGeneratorTest IS
END PWMGeneratorTest;
 
ARCHITECTURE behavior OF PWMGeneratorTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWMGenerator
    PORT(
         speed : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         PWM_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal speed : std_logic_vector(7 downto 0) := "00001111";
   signal clk : std_logic := '0';

 	--Outputs
   signal PWM_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWMGenerator PORT MAP (
          speed => speed,
          clk => clk,
          PWM_out => PWM_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
