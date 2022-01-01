library ieee;
use ieee.std_logic_1164.all;

entity bldc_drv is
  port (
      clk : in std_logic;
      hbOUT, nSD : out std_logic_vector (2 downto 0)
  ) ;
end bldc_drv;
architecture rtl of bldc_drv is
    signal PhaseState : natural range 0 to 5;
begin
    process(clk) is
    begin
        if rising_edge(clk) then
            case PhaseState is
                -- when SD='0', out is FLOAT
                when 0 =>
                    hbOUT <= "100";
                    nSD <= "110";
                    PhaseState <= 1;
                when 1 =>
                    hbOUT <= "100";
                    nSD <= "101";
                    PhaseState <= 2;
                when 2 =>
                    hbOUT <= "010";
                    nSD <= "011";
                    PhaseState <= 3;
                when 3 =>
                    hbOUT <= "010";
                    nSD <= "110";
                    PhaseState <= 4;
                when 4 =>
                    hbOUT <= "001";
                    nSD <= "101";
                    PhaseState <= 5;
                when 5 =>
                    hbOUT <= "001";
                    nSD <= "011";
                    PhaseState <= 0;
            end case;
        end if;
    end process;
end architecture; -- rtl