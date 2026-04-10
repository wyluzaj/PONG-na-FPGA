library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pong_core_tb is
end entity;

architecture sim of pong_core_tb is
    constant CLK_PERIOD : time := 40 ns;

    constant FIELD_W  : integer := 64;
    constant FIELD_H  : integer := 32;
    constant PADDLE_W : integer := 12;
    constant PADDLE_Y : integer := 30;

    signal clk        : std_logic := '0';
    signal reset      : std_logic := '0';
    signal tick       : std_logic := '0';
    signal move_left  : std_logic := '0';
    signal move_right : std_logic := '0';

    signal ball_x   : integer range 0 to FIELD_W-1;
    signal ball_y   : integer range 0 to FIELD_H-1;
    signal paddle_x : integer range 0 to FIELD_W-1;

    procedure do_tick(signal tick_sig : out std_logic) is
    begin
        tick_sig <= '1';
        wait for CLK_PERIOD;
        tick_sig <= '0';
        wait for CLK_PERIOD;
    end procedure;

begin
    uut : entity work.pong_core
        generic map (
            FIELD_W  => FIELD_W,
            FIELD_H  => FIELD_H,
            PADDLE_W => PADDLE_W,
            PADDLE_Y => PADDLE_Y
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

    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    stim_proc : process
    begin
        -- reset startowy
        reset <= '1';
        wait for 5*CLK_PERIOD;
        reset <= '0';
        wait for 5*CLK_PERIOD;

        -- kilka ruchów piłki
        do_tick(tick);
        do_tick(tick);
        do_tick(tick);
        do_tick(tick);

        -- ruch paletki w prawo
        move_right <= '1';
        do_tick(tick);
        do_tick(tick);
        do_tick(tick);
        move_right <= '0';

        -- ruch paletki w lewo
        move_left <= '1';
        do_tick(tick);
        do_tick(tick);
        move_left <= '0';

        -- reset gry w trakcie działania
        wait for 5*CLK_PERIOD;
        reset <= '1';
        wait for 2*CLK_PERIOD;
        reset <= '0';

        -- kilka ticków po resecie
        do_tick(tick);
        do_tick(tick);
        do_tick(tick);

        report "Koniec symulacji" severity note;
        wait;
    end process;

end architecture;