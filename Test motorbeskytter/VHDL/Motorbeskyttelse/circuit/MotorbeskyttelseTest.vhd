--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:35:08 03/25/2021
-- Design Name:   
-- Module Name:   /home/ise/SharedVMFolder/PWMGenerator/circuit/MotorbeskyttelseTest.vhd
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
 
ENTITY MotorbeskyttelseTest IS
END MotorbeskyttelseTest;
 
ARCHITECTURE behavior OF MotorbeskyttelseTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Motorbeskyttelse
    PORT(
         clkMot : IN  std_logic;
         PWM1 : OUT  std_logic;
         PWM2 : OUT  std_logic;
         noedbrems : IN  std_logic;
         speed1 : IN  std_logic_vector(7 downto 0);
         speed2 : IN  std_logic_vector(7 downto 0);
         oensketHastighed : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clkMot : std_logic := '0';
   signal noedbrems : std_logic := '0';
   signal speed1 : std_logic_vector(7 downto 0) := "01111111";
   signal speed2 : std_logic_vector(7 downto 0) := "01111111";
   signal oensketHastighed : std_logic_vector(7 downto 0) := "00000000";

 	--Outputs
   signal PWM1 : std_logic;
   signal PWM2 : std_logic;

   -- Clock period definitions
   constant clkMot_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Motorbeskyttelse PORT MAP (
          clkMot => clkMot,
          PWM1 => PWM1,
          PWM2 => PWM2,
          noedbrems => noedbrems,
          speed1 => speed1,
          speed2 => speed2,
          oensketHastighed => oensketHastighed
        );

   -- Clock process definitions
   clkMot_process :process
   begin
		clkMot <= '0';
		wait for clkMot_period/2;
		clkMot <= '1';
		wait for clkMot_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clkMot_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
