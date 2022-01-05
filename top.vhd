library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library machX03;
use machX03.all;

entity top is
  port (
         o_hbIN, o_nSD : out std_logic_vector (2 downto 0)
       );
end top;
architecture rtl of top is
  -- constant clockFrequencyHz : integer := 12090000;
	constant clockPeriod : integer := 20900;
  signal clk : std_logic;
  signal clkDiv : std_logic := '0';

  component OSCH
    generic (NOM_FREQ : string := "12.09");
    port (
           STDBY : in std_logic;
           OSC : out std_logic;
           SEDSTDBY : out std_logic);
  end component;
begin
  i_BLDCDrv : entity work.bldc_drv(rtl)
  port map(
            hbOUT => o_hbIN,
            nSD => o_nSD,
            clk => clkDiv
          );

  OSCHInst0 : OSCH
  generic map(NOM_FREQ => "12.09")
  port map(
            STDBY => '0',
            OSC => clk,
            SEDSTDBY => open
          );
  process (clk)
    variable count : integer range 0 to clockPeriod;
  begin
    if (clk'event and clk = '1') then
      if (count < clockPeriod) then
        count := count + 1;
      else
        clkDiv <= not clkDiv;
        count := 0;
      end if;
    end if;
  end process;
end rtl;
