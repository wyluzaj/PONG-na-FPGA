library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity top_pong is
    port (
        CLK_100MHz_P : in  std_logic;
        CLK_100MHz_N : in  std_logic;
        ROT_A        : in  std_logic;
        ROT_B        : in  std_logic;
        PL_USER_PB   : in  std_logic_vector(3 downto 0)
    );
end entity top_pong;

architecture Behavioral of top_pong is
    signal clk_100    : std_logic;
    signal reset_s    : std_logic;
    signal game_tick  : std_logic;

    signal move_left_s  : std_logic;
    signal move_right_s : std_logic;

    signal ball_x_s   : integer range 0 to 63;
    signal ball_y_s   : integer range 0 to 31;
    signal paddle_x_s : integer range 0 to 63;
begin

    clk_buf : IBUFDS
        port map (
            I  => CLK_100MHz_P,
            IB => CLK_100MHz_N,
            O  => clk_100
        );

    reset_s      <= PL_USER_PB(0);
    move_left_s  <= PL_USER_PB(1);
    move_right_s <= PL_USER_PB(2);

    u_div : entity work.freq_divider
        generic map (
            CLK_FREQ_HZ  => 100_000_000,
            TICK_FREQ_HZ => 60
        )
        port map (
            clk_in   => clk_100,
            reset    => reset_s,
            tick_out => game_tick
        );

    u_pong : entity work.pong_core
        generic map (
            FIELD_W  => 64,
            FIELD_H  => 32,
            PADDLE_W => 12,
            PADDLE_Y => 30
        )
        port map (
            clk        => clk_100,
            reset      => reset_s,
            tick       => game_tick,
            move_left  => move_left_s,
            move_right => move_right_s,
            ball_x     => ball_x_s,
            ball_y     => ball_y_s,
            paddle_x   => paddle_x_s
        );

end architecture Behavioral;