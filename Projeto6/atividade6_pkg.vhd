library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------
package atividade6_pkg is
    
    type slv_array is array (natural range <>) of std_logic_vector;
    
    procedure find_min_max (
        signal x       : in  int_array;
        signal min_val : out integer;
        signal max_val : out integer
    );

end package atividade6_pkg;
-------------------------------------------------------------------------------

package body atividade6_pkg is

    procedure find_min_max (
        signal x       : in  int_array;
        signal min_val : out integer;
        signal max_val : out integer
    ) is
        
        variable temp_min : integer;
        variable temp_max : integer;
    begin
        
        temp_min := x(x'low);
        temp_max := x(x'low);

       
        for i in x'low + 1 to x'high loop
            if unsigned(x(i)) < unsigned(temp_min) then
                temp_min := x(i);
            end if;
            if unsigned(x(i)) > unsigned(temp_max) then
                temp_max := x(i);
            end if;
        end loop;

       
        min_val <= temp_min;
        max_val <= temp_max;
    end procedure find_min_max;

end package body atividade6_pkg;