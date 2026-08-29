library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package timer_pkg is

    function int_to_bcd(value : integer) return std_logic_vector;

    function bcd_to_7seg(bcd : std_logic_vector(3 downto 0)) return std_logic_vector;

end package timer_pkg;


package body timer_pkg is

    function int_to_bcd(value : integer) return std_logic_vector is
        variable bcd : std_logic_vector(15 downto 0);
    begin
        bcd(3 downto 0)   := std_logic_vector(to_unsigned(value mod 10, 4));
        bcd(7 downto 4)   := std_logic_vector(to_unsigned((value / 10) mod 10, 4));
        bcd(11 downto 8)  := std_logic_vector(to_unsigned((value / 100) mod 10, 4));
        bcd(15 downto 12) := std_logic_vector(to_unsigned((value / 1000) mod 10, 4));
        return bcd;
    end function int_to_bcd;

    function bcd_to_7seg(bcd : std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case bcd is
            when "0000" => return "0000001"; --0
            when "0001" => return "1001111"; --1
            when "0010" => return "0010010"; --2
            when "0011" => return "0000110"; --3
            when "0100" => return "1001100"; --4
            when "0101" => return "0100100"; --5
            when "0110" => return "0100000"; --6
            when "0111" => return "0001111"; --7
            when "1000" => return "0000000"; --8
            when "1001" => return "0000100"; --9
            when others => return "0110000"; --
        end case;
    end function bcd_to_7seg;

end package body timer_pkg;