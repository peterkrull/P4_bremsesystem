library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Dette modul skal sammenbinde alle de resterende blokke

-- external ports to be used by hardware
entity TopModul is
	port(

        -- rotationssensorer
        rotsens_front : in std_logic; -- Sensor 1
        rotsens_rear : in std_logic; -- Sensor 2

        -- Afstandssensor
        dist_SCL	:	inout	std_logic; -- SCL   
        dist_SDA	:	inout	std_logic; -- SDA
        
        -- Teststyring
        test_speed : out std_logic_vector(7 downto 0); -- speed Pins

        -- motor PWM output
        motor_PWM : out std_logic;   -- PWM output
        motor_select : out std_logic;   -- Motor direction

        -- Alarm bit
        alarm_bit : out std_logic    -- alarm pin

	);
end TopModul;

-- here all submodules will be instantiated
architecture topmodule of TopModul is

    -- Internal signals
    signal emerg_stop_sig: std_logic; 
    signal rear_speed_sig : std_logic_vector(7 downto 0) ;

    component motorstyring port(
        rotsens_front   : in std_logic; -- Sensor 1
        rotsens_rear    : in std_logic; -- Sensor 2
        emerg_stop      : in std_logic;
        test_speed      : in std_logic_vector(7 downto 0); -- speed Pins
        rear_speed      : out std_logic_vector (7 downto 0 );
        motor_PWM       : out std_logic;   -- PWM output (front)
        motor_select    : out std_logic   -- PWM output (reverse)
    );
    end component;

    component detektionssystem port (
        speed       : in std_logic;
        dist_SCL	: inout	std_logic; -- SCL
        dist_SDA	: inout	std_logic; -- SDA
        emerg_stop  : out std_logic;
        alarm_bit   : out std_logic    -- alarm pin
    );
    end component;

begin

    -- Motorstyring
    ent_motorstyring: motorstyring port map (
        rotsens_front => rotsens_front,
        rotsens_rear => rotsens_rear,
        emerg_stop => emerg_stop_sig,
        test_speed => test_speed,
        rear_speed_sig => rear_speed,
        motor_PWM => motor_PWM,
        motor_select => motor_select
    );
    
    -- Detektionssystem
    ent_detektionssystem: detektionssystem port map (
        dist_SCL => x,
        dist_SDA => x,
        alarm_bit => x,
        rear_speed_sig => x,
        emerg_stop => x
    );

end topmodule;