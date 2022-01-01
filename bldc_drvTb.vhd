library ieee;
use ieee.std_logic_1164.all;

entity bldc_drvTb is
end bldc_drvTb;
architecture sim of bldc_drvTb is
    constant ClockFrequencyHz : integer := 100; -- 100Hz
    constant ClockPeriod : time := 1000 ms / ClockFrequencyHz;

    signal s_clk : std_logic := '0';
    signal s_hbIN, s_nSD : std_logic_vector (2 downto 0);
begin
    i_BLDCDrv : entity work.bldc_drv(rtl)
    port map(
        clk => s_clk,
        hbOUT => s_hbIN,
        nSD => s_nSD
    );

    s_clk <= not s_clk after ClockPeriod / 2;
end architecture; -- sim