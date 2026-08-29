library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.timer_pkg.all;

entity atividade7 is
    generic (
        CLK_FREQ : integer := 50000000
    );
    port (
        clk      : in  std_logic;
        reset_n  : in  std_logic;
        pause_n  : in  std_logic;
        sel      : in  std_logic_vector(1 downto 0);
        led_done : out std_logic;
        hex0     : out std_logic_vector(6 downto 0);
        hex1     : out std_logic_vector(6 downto 0);
        hex2     : out std_logic_vector(6 downto 0);
        hex3     : out std_logic_vector(6 downto 0)
    );
end entity atividade7;


architecture atividade7_arch of atividade7 is
    signal seconds  : integer range 0 to 9999;
    signal preset   : integer range 0 to 9999;
    signal tick_1hz : std_logic;
    signal bcd_val  : std_logic_vector(15 downto 0);
begin

    process(sel)
    begin
        case sel is
            when "00"   => preset <= 10;
            when "01"   => preset <= 30;
            when "10"   => preset <= 100;
            when others => preset <= 1000;
        end case;
    end process;

    process(clk, reset_n)
        variable cnt : integer range 0 to CLK_FREQ - 1;
    begin
        if reset_n = '0' then
            cnt := 0;
            tick_1hz <= '0';
        elsif rising_edge(clk) then
            if cnt = CLK_FREQ - 1 then
                cnt := 0;
                tick_1hz <= '1';
            else
                cnt := cnt + 1;
                tick_1hz <= '0';
            end if;
        end if;
    end process;

    process(clk, reset_n)
    begin
        if reset_n = '0' then
            seconds <= preset;
        elsif rising_edge(clk) then
            if pause_n = '1' and tick_1hz = '1' and seconds > 0 then
                seconds <= seconds - 1;
            end if;
        end if;
    end process;

    led_done <= '1' when seconds = 0 else '0';

    bcd_val <= int_to_bcd(seconds);

    hex0 <= bcd_to_7seg(bcd_val(3 downto 0));
    hex1 <= bcd_to_7seg(bcd_val(7 downto 4));
    hex2 <= bcd_to_7seg(bcd_val(11 downto 8));
    hex3 <= bcd_to_7seg(bcd_val(15 downto 12));

end architecture atividade7_arch;