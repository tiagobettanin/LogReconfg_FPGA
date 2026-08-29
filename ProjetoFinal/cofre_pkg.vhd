library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package cofre_pkg is

    -- Padroes para display de 7 segmentos em logica ativa baixa.
    -- Ordem utilizada: a b c d e f g.
    constant SEG_BLANK : std_logic_vector(6 downto 0) := "1111111";
    constant SEG_DASH  : std_logic_vector(6 downto 0) := "1111110";

    constant SEG_A : std_logic_vector(6 downto 0) := "0001000";
    constant SEG_C : std_logic_vector(6 downto 0) := "0110001";
    constant SEG_E : std_logic_vector(6 downto 0) := "0110000";
    constant SEG_F : std_logic_vector(6 downto 0) := "0111000";
    constant SEG_I : std_logic_vector(6 downto 0) := "1001111";
    constant SEG_K : std_logic_vector(6 downto 0) := "1001000"; -- aproximacao visual
    constant SEG_L : std_logic_vector(6 downto 0) := "1110001";
    constant SEG_N : std_logic_vector(6 downto 0) := "1101010"; -- n minusculo
    constant SEG_O : std_logic_vector(6 downto 0) := "0000001";
    constant SEG_P : std_logic_vector(6 downto 0) := "0011000";
    constant SEG_S : std_logic_vector(6 downto 0) := "0100100";
    constant SEG_T : std_logic_vector(6 downto 0) := "1110000"; -- t minusculo

    function bcd_to_7seg(bcd : std_logic_vector(3 downto 0)) return std_logic_vector;
    function digit_to_7seg(digit : integer) return std_logic_vector;

end package cofre_pkg;

package body cofre_pkg is

    function bcd_to_7seg(bcd : std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case bcd is
            when "0000" => return "0000001"; -- 0
            when "0001" => return "1001111"; -- 1
            when "0010" => return "0010010"; -- 2
            when "0011" => return "0000110"; -- 3
            when "0100" => return "1001100"; -- 4
            when "0101" => return "0100100"; -- 5
            when "0110" => return "0100000"; -- 6
            when "0111" => return "0001111"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0000100"; -- 9
            when others => return SEG_E;      -- erro
        end case;
    end function bcd_to_7seg;

    function digit_to_7seg(digit : integer) return std_logic_vector is
    begin
        if digit >= 0 and digit <= 9 then
            return bcd_to_7seg(std_logic_vector(to_unsigned(digit, 4)));
        else
            return SEG_E;
        end if;
    end function digit_to_7seg;

end package body cofre_pkg;