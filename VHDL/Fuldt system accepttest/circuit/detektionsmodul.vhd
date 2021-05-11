library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- external ports to be used by hardware
entity detektionsmodul is
	port(

		clk : in std_logic; -- system clock

        -- Hastighed af platform
        speed : in std_logic_vector(7 downto 0);

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
        error_out       : out std_logic := '1'
    );
    end component;

    component Controlmodule port(
			clk 	: in std_logic;
			speed	: in std_logic_vector(7 downto 0);		-- Hastighed
			brake : out std_logic:='1';						-- Noedbrems
			alarm	: out std_logic:='0';						-- Alarm
			i2cData 	: in std_logic_vector(9 downto 0);		-- Afstand
			i2cError : in std_logic; 								-- Error
			i2cReady : in std_logic ; 				-- Ready
			i2cTrigger : out std_logic:='0'						-- Trigger
    );
    end component;

begin

    -- I2C master module
    ent_I2CV2: I2CV2 port map (
        clk => clk,
        trigger => trigger,
        SCL => dist_SCL,
        ready => ready,
        SDA => dist_SDA,
        dataOut => data,
        error_out => error
    );

    -- Kontrolmodul
    ent_Controlmodule: Controlmodule port map ( 
        	clk => clk,
			speed => speed,
			brake => emerg_stop,
			alarm	=>alarm_bit,
			i2cData => data(9 downto 0),
			i2cError => error,
			i2cReady=> ready,
			i2cTrigger=> trigger
    );

end detektionsmodulBehavioral;
