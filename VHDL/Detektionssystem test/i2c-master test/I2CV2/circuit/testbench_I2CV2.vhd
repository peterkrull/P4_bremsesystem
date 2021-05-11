--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:20:41 03/16/2021
-- Design Name:   
-- Module Name:   /home/ise/DeltMedVm/Projekt/I2CV2/circuit/testbench_I2CV2.vhd
-- Project Name:  PSL_Papilio_DUO_LX9
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: I2CV2
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
USE ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench_I2CV2 IS
END testbench_I2CV2;
 
ARCHITECTURE behavior OF testbench_I2CV2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT I2CV2
    PORT(
         clk : IN  std_logic;
			trigger : in std_logic;
         SCL : OUT  std_logic;
			error_out : out std_logic;
         ready : OUT  std_logic;
         SDA : INOUT  std_logic;
			--statusCounter_out : out std_logic_vector(11 downto 0);
			--doneOutSendBytes_out : out std_logic_vector(11 downto 0);
			errorVector_out : out std_logic_vector(2 downto 0);
			dataBuffer_out : out std_logic_vector(15 downto 0);
			dataOut : OUT std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal trigger : std_logic := '0';

	--BiDirs
   signal SDA : std_logic;

 	--Outputs
   signal SCL : std_logic;
   signal ready : std_logic;
	signal dataOut : std_logic_vector(15 downto 0);
	signal error_out : std_logic;
--	signal statusCounter_out : std_logic_vector(11 downto 0);
--	signal doneOutSendBytes_out :  std_logic_vector(11 downto 0);
	signal errorVector_out : std_logic_vector (2 downto 0);
	signal dataBuffer_out : std_logic_vector(15 downto 0);
	
	
   -- Clock period definitions
   constant clk_period : time := 31.25 ns;

--	
--	file fileOut : text;
--	
--	signal filenotOpen : std_logic := '0';
	
	signal clockTime : integer := 0;
	
--	signal toWriteToFile : std_logic_vector(4 downto 0);
	
	--shared variable WriteLineOut1 : line;
--	signal blah : std_logic := '0';
--	
--	
--	signal startSignal  : std_logic := '0';
--	signal byteRecieved : std_logic_vector(7 downto 0);
--	signal writeToSDA   : std_logic := '0';
	
	
	
--	procedure WriteLineToFile (timeInt : in integer; vector : in std_logic_vector) is
----	return null is variable toReturn : std_logic := '0';
--	variable WriteLineOut1 : line;
--	begin
--		write(WriteLineOut1, integer'(timeInt)); 
--		for i in 0 to vector'length-1 loop
--			if(vector(i) = 'Z' or vector(i) = 'U') then
--				write(WriteLineOut1, string'(","));
--				write(WriteLineOut1, string'("5E-1")); 
--			else 
--				write(WriteLineOut1, string'(","));
--				write(WriteLineOut1, vector(i)); 
--			end if;
--		end loop;
--		writeLine(fileOut, WriteLineOut1);
--
--	end;
--	
	signal hasRunThrough : std_logic:= '0';
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: I2CV2 PORT MAP (
          clk => clk,
			 trigger => trigger,
			 error_out => error_out,
          SCL => SCL,
          ready => ready,
          SDA => SDA,
			 dataBuffer_out => dataBuffer_out,
	--		statusCounter_out => statusCounter_out,
	--		doneOutSendBytes_out => doneOutSendBytes_out, 
			errorVector_out => errorVector_out,
			
			 dataOut => dataOut
        );

   -- Clock process definitions
   clk_process :process

   begin

		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		clockTime <= clockTime + 5;
		wait for clk_period/2;
		clockTime <= clockTime + 5;
		
   end process;
--	
--	writeToFile : process
--	variable WriteLineOut : line;
--	begin
--		if(hasRunThrough = '0') then
--			file_open(fileOut, "fileOut.csv", write_mode);
--			write(WriteLineOut, string'("time,SCL,SDA,trigger,ready,error"));
--			writeLine(fileOut, WriteLineOut);
--					wait for 1 ns;
--					writeLineToFile(clockTime, toWriteToFile);
----					write(WriteLineOut, string'("Here before loop"));
----					writeLine(fileOut, WriteLineOut);
--				 recordLoop : for i in 0 to 100000  loop  
--						wait on SDA, SCL, trigger, error_out;
--						writeLineToFile(clockTime, toWriteToFile);
--						wait for 8 ns;
--						if(ready = '1' and clocktime >500000) then
--							exit recordLoop;
--						end if;
--				end loop;
--				wait for 50 us;
--					writeLineToFile(clockTime, toWriteToFile);
--			file_close(fileOut);
--			hasRunThrough <= '1';
--			wait for 2 ms;
--		end if;
--	end process;
--	
--	process(SDA) begin
--		if(SDA'event and SDA = '0') then
--			if(SCL = '1') then
--				startSignal <= '1';
--			end if;
--		elsif(SDA'event and SDA = '1') then
--			if(SCL = '1') then
--				startSignal <= '0';
--			end if;
--		end if;
--		
--	end process;
	
	
--	process(SCL,startSignal) begin
--		if(SCL'event and SCL = '1' and startSignal = '1' and writeToSDA = '0') then 
--			byterecieved(0) <= SDA;
--			byteRecieved <= std_logic_vector(shift_left(unsigned(byteRecieved),1));
--		end if;
--	
--	end process;
	

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      wait for 500 us;	
		trigger <= '1';
		
		wait for 1 ms;

		trigger <= '0';
		
		wait for 3 ms;

		trigger <= '1';
		
      wait for clk_period*10;

      -- insert stimulus here 

      wait;

   end process;

--
--	toWriteToFile(0) <= SCL;
--	toWriteToFile(1) <= SDA;
--	toWriteToFile(2) <= trigger;
--	toWriteToFile(3) <= ready;
--	toWriteToFile(4) <= error_out;

END;
