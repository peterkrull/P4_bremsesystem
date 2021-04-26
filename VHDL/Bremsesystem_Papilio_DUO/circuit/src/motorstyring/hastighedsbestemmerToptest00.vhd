--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:56:08 04/08/2021
-- Design Name:   
-- Module Name:   /home/ise/XilinkVM/hastighedsbestemmerv0.5/circuit/hastighedsbestemmerToptest00.vhd
-- Project Name:  PSL_Papilio_DUO_LX9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hastighedsbestemmerTop
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
 
ENTITY hastighedsbestemmerToptest00 IS
END hastighedsbestemmerToptest00;
 
ARCHITECTURE behavior OF hastighedsbestemmerToptest00 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hastighedsbestemmerTop
    PORT(
         clk : IN  std_logic;
         sensor_front : IN  std_logic;
         sensor_back : IN  std_logic;
         speed_front : OUT  std_logic_vector(7 downto 0);
         speed_back : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal sensor_front : std_logic := '0';
   signal sensor_back : std_logic := '0';

 	--Outputs
   signal speed_front : std_logic_vector(7 downto 0);
   signal speed_back : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 31.25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hastighedsbestemmerTop PORT MAP (
          clk => clk,
          sensor_front => sensor_front,
          sensor_back => sensor_back,
          speed_front => speed_front,
          speed_back => speed_back
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
		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;
		
		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;
		
		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;
		
		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;

		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;
		
		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;
		
		sensor_front <='0';
		wait for 0.3 ms;
		sensor_front <='1';
		wait for 0.3 ms;
      wait;
   end process;
END;
--