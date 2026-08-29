library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.cofre_pkg.all;

entity projeto is
    generic (
        CLK_FREQ      : integer := 50000000; -- clock da DE10-Lite: 50 MHz
        LOCK_TIME     : integer := 10;       -- tempo de bloqueio em segundos
        KEY_SAMPLE_HZ : integer := 20        -- amostragem dos botoes: 20 Hz
    );
    port (
        CLOCK_50 : in  std_logic;
        KEY      : in  std_logic_vector(1 downto 0); -- botoes ativos em nivel baixo
        SW       : in  std_logic_vector(9 downto 0);
        LEDR     : out std_logic_vector(9 downto 0);
        HEX0     : out std_logic_vector(6 downto 0);
        HEX1     : out std_logic_vector(6 downto 0);
        HEX2     : out std_logic_vector(6 downto 0);
        HEX3     : out std_logic_vector(6 downto 0);
        HEX4     : out std_logic_vector(6 downto 0);
        HEX5     : out std_logic_vector(6 downto 0)
    );
end entity projeto;

architecture projeto of projeto is

    type estado_type is (
        ST_CLOSE,
        ST_INPUT,
        ST_VERIFY,
        ST_OPEN,
        ST_SET,
        ST_FAIL,
        ST_LOCK
    );

    -- Cada posicao da senha agora pode usar uma combinacao de SW0 ate SW8.
    -- SW[8:0] gera valores de 0 ate 511.
    type senha_type is array (0 to 3) of integer range 0 to 511;

    constant KEY_DIV : integer := CLK_FREQ / KEY_SAMPLE_HZ;

    signal estado         : estado_type := ST_CLOSE;

    -- Senha inicial continua sendo (1, 2, 3, 4), mas agora cada numero
    -- representa uma combinacao binaria em SW[8:0].
    signal senha_salva    : senha_type := (1, 2, 3, 4);
    signal senha_digitada : senha_type := (0, 0, 0, 0);

    signal digit_index    : integer range 0 to 3 := 0;
    signal erros          : integer range 0 to 5 := 0;
    signal lock_seconds   : integer range 0 to 99 := LOCK_TIME;

    signal tick_1hz       : std_logic := '0';
    signal blink          : std_logic := '0';
    signal key0_press     : std_logic := '0';
    signal key1_press     : std_logic := '0';
    signal key0_sample    : std_logic := '1';
    signal key1_sample    : std_logic := '1';

    -- Agora o valor digitado vem de SW0 ate SW8.
    signal digito_atual   : integer range 0 to 511;
    signal digito_valido  : std_logic;

begin

    -------------------------------------------------------------------------
    -- Entrada da senha.
    -- Antes: SW(3 downto 0), valores de 0 a 15.
    -- Agora: SW(8 downto 0), valores de 0 a 511.
    --
    -- SW9 continua separado, funcionando como reset geral, igual ao original.
    -------------------------------------------------------------------------
    digito_atual  <= to_integer(unsigned(SW(8 downto 0)));
    digito_valido <= '1';

    -------------------------------------------------------------------------
    -- Divisao de clock para 1 Hz e leitura mais lenta dos botoes.
    -- A leitura em 20 Hz reduz o efeito de repiques mecanicos simples.
    -------------------------------------------------------------------------
    process(CLOCK_50)
        variable cnt_1hz : integer range 0 to CLK_FREQ - 1 := 0;
        variable cnt_key : integer range 0 to KEY_DIV - 1 := 0;
    begin
        if rising_edge(CLOCK_50) then
            tick_1hz   <= '0';
            key0_press <= '0';
            key1_press <= '0';

            if cnt_1hz = CLK_FREQ - 1 then
                cnt_1hz := 0;
                tick_1hz <= '1';
                blink <= not blink;
            else
                cnt_1hz := cnt_1hz + 1;
            end if;

            if cnt_key = KEY_DIV - 1 then
                cnt_key := 0;

                if key0_sample = '1' and KEY(0) = '0' then
                    key0_press <= '1';
                end if;

                if key1_sample = '1' and KEY(1) = '0' then
                    key1_press <= '1';
                end if;

                key0_sample <= KEY(0);
                key1_sample <= KEY(1);
            else
                cnt_key := cnt_key + 1;
            end if;
        end if;
    end process;

    -------------------------------------------------------------------------
    -- Maquina de estados principal do cofre.
    -- SW(9) funciona como reset geral: retorna para CLOSE e senha inicial.
    -------------------------------------------------------------------------
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then

            if SW(9) = '1' then
                estado         <= ST_CLOSE;
                senha_salva    <= (1, 2, 3, 4);
                senha_digitada <= (0, 0, 0, 0);
                digit_index    <= 0;
                erros          <= 0;
                lock_seconds   <= LOCK_TIME;

            else
                case estado is

                    when ST_CLOSE =>
                        digit_index <= 0;

                        if key0_press = '1' and digito_valido = '1' then
                            senha_digitada(0) <= digito_atual;
                            digit_index <= 1;
                            estado <= ST_INPUT;
                        end if;

                    when ST_INPUT =>
                        if key1_press = '1' then
                            digit_index <= 0;
                            estado <= ST_CLOSE;

                        elsif key0_press = '1' and digito_valido = '1' then
                            senha_digitada(digit_index) <= digito_atual;

                            if digit_index = 3 then
                                digit_index <= 0;
                                estado <= ST_VERIFY;
                            else
                                digit_index <= digit_index + 1;
                            end if;
                        end if;

                    when ST_VERIFY =>
                        if senha_digitada = senha_salva then
                            erros <= 0;
                            estado <= ST_OPEN;
                        else
                            if erros = 4 then
                                erros <= 5;
                                lock_seconds <= LOCK_TIME;
                                estado <= ST_LOCK;
                            else
                                erros <= erros + 1;
                                estado <= ST_FAIL;
                            end if;
                        end if;

                    when ST_FAIL =>
                        if tick_1hz = '1' then
                            estado <= ST_CLOSE;
                        end if;

                    when ST_OPEN =>
                        -- KEY0 fecha o cofre. KEY1 entra no modo de redefinicao.
                        if key0_press = '1' then
                            estado <= ST_CLOSE;
                        elsif key1_press = '1' then
                            digit_index <= 0;
                            estado <= ST_SET;
                        end if;

                    when ST_SET =>
                        -- KEY1 cancela a redefinicao e volta para OPEN.
                        if key1_press = '1' then
                            digit_index <= 0;
                            estado <= ST_OPEN;

                        elsif key0_press = '1' and digito_valido = '1' then
                            senha_digitada(digit_index) <= digito_atual;

                            if digit_index = 3 then
										  senha_salva(0) <= senha_digitada(0);
                                senha_salva(1) <= senha_digitada(1);
                                senha_salva(2) <= senha_digitada(2);
                                senha_salva(3) <= digito_atual;
											
                                digit_index <= 0;
                                erros <= 0;
                                estado <= ST_OPEN;
                            else
                                digit_index <= digit_index + 1;
                            end if;
                        end if;

                    when ST_LOCK =>
                        -- Durante o bloqueio, as tentativas sao ignoradas.
                        if tick_1hz = '1' then
                            if lock_seconds <= 1 then
                                lock_seconds <= 0;
                                erros <= 0;
                                estado <= ST_CLOSE;
                            else
                                lock_seconds <= lock_seconds - 1;
                            end if;
                        end if;

                end case;
            end if;
        end if;
    end process;

    -------------------------------------------------------------------------
    -- Controle dos LEDs.
    -------------------------------------------------------------------------
    process(estado, erros, digit_index, blink)
        variable leds : std_logic_vector(9 downto 0);
    begin
        leds := (others => '0');

        case estado is
            when ST_OPEN =>
                leds(0) := '1'; -- cofre aberto

            when ST_CLOSE | ST_INPUT | ST_VERIFY =>
                leds(1) := '1'; -- cofre fechado

            when ST_FAIL =>
                leds(2) := '1'; -- erro

            when ST_LOCK =>
                leds := (others => blink); -- bloqueado: LEDs piscando

            when ST_SET =>
                leds(3) := '1'; -- modo de redefinicao
        end case;

        if estado /= ST_LOCK then
            for i in 0 to 4 loop
                if erros > i then
                    leds(4 + i) := '1';
                end if;
            end loop;
        end if;

        LEDR <= leds;
    end process;

    -------------------------------------------------------------------------
    -- Controle dos displays HEX.
    -------------------------------------------------------------------------
    process(estado, lock_seconds)
    begin
        HEX5 <= SEG_BLANK;
        HEX4 <= SEG_BLANK;
        HEX3 <= SEG_BLANK;
        HEX2 <= SEG_BLANK;
        HEX1 <= SEG_BLANK;
        HEX0 <= SEG_BLANK;

        case estado is
            when ST_CLOSE =>
                -- CLOSE
                HEX4 <= SEG_C;
                HEX3 <= SEG_L;
                HEX2 <= SEG_O;
                HEX1 <= SEG_S;
                HEX0 <= SEG_E;

            when ST_INPUT | ST_VERIFY =>
                -- PASS
                HEX3 <= SEG_P;
                HEX2 <= SEG_A;
                HEX1 <= SEG_S;
                HEX0 <= SEG_S;

            when ST_OPEN =>
                -- OPEN
                HEX3 <= SEG_O;
                HEX2 <= SEG_P;
                HEX1 <= SEG_E;
                HEX0 <= SEG_N;

            when ST_SET =>
                -- SET
                HEX2 <= SEG_S;
                HEX1 <= SEG_E;
                HEX0 <= SEG_T;

            when ST_FAIL =>
                -- FAIL
                HEX3 <= SEG_F;
                HEX2 <= SEG_A;
                HEX1 <= SEG_I;
                HEX0 <= SEG_L;

            when ST_LOCK =>
                -- LOCK + contador de segundos
                HEX5 <= SEG_L;
                HEX4 <= SEG_O;
                HEX3 <= SEG_C;
                HEX2 <= SEG_K;
                HEX1 <= digit_to_7seg(lock_seconds / 10);
                HEX0 <= digit_to_7seg(lock_seconds mod 10);
        end case;
    end process;

end architecture projeto;