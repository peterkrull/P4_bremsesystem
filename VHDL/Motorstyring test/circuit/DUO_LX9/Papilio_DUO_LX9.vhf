--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Papilio_DUO_LX9.vhf
-- /___/   /\     Timestamp : 04/26/2021 12:55:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/peter/Documents/GitHub/P4/P4_bremsesystem/VHDL/Bremsesystem_Papilio_DUO/circuit/DUO_LX9/Papilio_DUO_LX9.vhf -w C:/Users/peter/Documents/GitHub/P4/P4_bremsesystem/VHDL/Bremsesystem_Papilio_DUO/circuit/Papilio_DUO_LX9.sch
--Design Name: Papilio_DUO_LX9
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Papilio_DUO_LX9 is
   port ( DUO_SW1   : in    std_logic; 
          ARD_RESET : out   std_logic);
end Papilio_DUO_LX9;

architecture BEHAVIORAL of Papilio_DUO_LX9 is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_60 : INV
      port map (I=>DUO_SW1,
                O=>ARD_RESET);
   
end BEHAVIORAL;


