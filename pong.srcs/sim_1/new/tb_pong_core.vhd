library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_pong_core is
end;

architecture test of tb_pong_core is
    signal clk        : std_logic := '0';
    signal reset      : std_logic := '1';
    signal tick       : std_logic := '0';
    signal move_left  : std_logic := '0';
    signal move_right : std_logic := '0';

    signal ball_x   : integer range 0 to 63;
    signal ball_y   : integer range 0 to 31;
    signal paddle_x : integer range 0 to 63;

    constant CLK_PERIOD : time := 10 ns;
begin

    uut : entity work.pong_core
        generic map (
            FIELD_W  => 64,
            FIELD_H  => 32,
            PADDLE_W => 12,
            PADDLE_Y => 30
        )
        port map (
            clk        => clk,
            reset      => reset,
            tick       => tick,
            move_left  => move_left,
            move_right => move_right,
            ball_x     => ball_x,
            ball_y     => ball_y,
            paddle_x   => paddle_x
        );

    clk_gen : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    tick_gen : process
    begin
        while true loop
            tick <= '0';
            wait for 90 ns;
            tick <= '1';
            wait for 10 ns;
        end loop;
    end process;

    stimulus : process
    begin
        wait for 50 ns;
        reset <= '0';

        wait for 500 ns;

        move_left <= '1';
        wait for 300 ns;
        move_left <= '0';

        wait for 300 ns;

        move_right <= '1';
        wait for 400 ns;
        move_right <= '0';

        wait;
    end process;
--Sprawdzenie granic paletki
--    stimulus : process
--    begin
--        -- reset
--        wait for 50 ns;
--        reset <= '0';
    
--        -- jedź długo w lewo
--        move_left <= '1';
--        wait for 10 us;
--        move_left <= '0';
    
--        -- chwila przerwy
--        wait for 2 us;
    
--        -- jedź długo w prawo
--        move_right <= '1';
--        wait for 15 us;
--        move_right <= '0';

--        wait;
--    end process;

end;