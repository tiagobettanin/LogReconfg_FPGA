library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.atividade6_pkg.all;     
-------------------------------------------------------------------------------

entity atividade6 is
    generic (
        num_inputs : positive := 4;
        num_bits   : positive := 8   
    );
    port (
        entrada1, entrada2, entrada3, entrada4 :
            in unsigned(num_bits-1 downto 0);

        min_out : out integer range 0 to 2**num_bits - 1;
        max_out : out integer range 0 to 2**num_bits - 1
    );
end entity atividade6;
-------------------------------------------------------------------------------

architecture atividade6_arch of atividade6 is
    signal x : int_array(0 to num_inputs - 1);

begin

    x <= (entrada1, entrada2, entrada3, entrada4);

    find_min_max(x, min_out, max_out);

end architecture atividade6_arch;