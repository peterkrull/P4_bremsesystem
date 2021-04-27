library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- external ports to be used by hardware
entity detektionsmodul is
	port(

        -- Hastighed af platform
        speed : in std_logic;

        -- Afstandssensor
		dist_SCL	:	inout	std_logic; -- SCL
        dist_SDA	:	inout	std_logic; -- SDA

        -- Emergency stop
        emerg_stop : out std_logic;

        -- Alarm bit
        alarm_bit : out std_logic    -- alarm pin

	);
end detektionsmodul;


-- here all submodules will be instantiated
architecture detektionsmodulBehavioral of detektionsmodul is

    -- Internal signals

    signal distance : std_logic_vector (15 downto 0);
    signal error : std_logic;
    signal error_vector : std_logic_vector (2 downto 0);
    signal data : std_logic_vector(15 downto 0) := x"0000";
    signal ready : std_logic;
    signal trigger : std_logic;

    -- All components are mapped to each other

    component I2CV2 port(
        clk 		    : in std_logic;
        trigger         : in std_logic;
        SCL 		    : out std_logic:='1';
        ready           : out std_logic:= '0';
        SDA 		    : inout std_logic:= '1';
        dataOut         : out std_logic_vector(15 downto 0) := x"0000";
        errorVector_out : out std_logic_vector(2 downto 0);
        error_out       : out std_logic := '1'
    );
    end component;

    component kontrolmodul port(
        
    );
    end component;

begin

    -- I2C master module
    ent_I2CV2: I2CV2 port map (
        -- mappy
    );

    -- Kontrolmodul
    ent_kontrolmodul: kontrolmodul port map ( 
        -- mappy
    );

end detektionsmodulBehavioral;
