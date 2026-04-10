library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PongImgGen is
    port (
        Clk        : in  std_logic;  -- pixel clock, np. 25 MHz
        RstN       : in  std_logic;  -- active low
        MoveLeft   : in  std_logic;
        MoveRight  : in  std_logic;
        PosX       : in  std_logic_vector(9 downto 0);
        PosY       : in  std_logic_vector(9 downto 0);
        R          : out std_logic_vector(7 downto 0);
        G          : out std_logic_vector(7 downto 0);
        B          : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of PongImgGen is
    -- Logiczna plansza gry
    constant FIELD_W  : integer := 64;
    constant FIELD_H  : integer := 32;
    constant PADDLE_W : integer := 12;
    constant PADDLE_Y : integer := 30;

    -- Skalowanie logicznej planszy na 640x480
    constant CELL_W : integer := 10; -- 640 / 64
    constant CELL_H : integer := 15; -- 480 / 32

    signal reset_s    : std_logic;
    signal game_tick  : std_logic;

    signal ball_x_s   : integer range 0 to FIELD_W - 1;
    signal ball_y_s   : integer range 0 to FIELD_H - 1;
    signal paddle_x_s : integer range 0 to FIELD_W - 1;

    signal px_x : integer range 0 to 1023;
    signal px_y : integer range 0 to 1023;

    signal ball_left   : integer;
    signal ball_right  : integer;
    signal ball_top    : integer;
    signal ball_bottom : integer;

    signal pad_left    : integer;
    signal pad_right   : integer;
    signal pad_top     : integer;
    signal pad_bottom  : integer;

    signal inside_ball   : std_logic;
    signal inside_paddle : std_logic;
    signal inside_border : std_logic;
begin
    reset_s <= not RstN;

    px_x <= to_integer(unsigned(PosX));
    px_y <= to_integer(unsigned(PosY));

    -- Ruch gry: 60 aktualizacji na sekundę
    u_div : entity work.freq_divider
        generic map (
            CLK_FREQ_HZ  => 25_000_000,
            TICK_FREQ_HZ => 60
        )
        port map (
            clk_in   => Clk,
            reset    => reset_s,
            tick_out => game_tick
        );

    u_pong : entity work.pong_core
        generic map (
            FIELD_W  => FIELD_W,
            FIELD_H  => FIELD_H,
            PADDLE_W => PADDLE_W,
            PADDLE_Y => PADDLE_Y
        )
        port map (
            clk        => Clk,
            reset      => reset_s,
            tick       => game_tick,
            move_left  => MoveLeft,
            move_right => MoveRight,
            ball_x     => ball_x_s,
            ball_y     => ball_y_s,
            paddle_x   => paddle_x_s
        );

    -- Przeliczenie współrzędnych logicznych na piksele ekranu
    ball_left   <= ball_x_s * CELL_W;
    ball_right  <= ball_x_s * CELL_W + CELL_W - 1;
    ball_top    <= ball_y_s * CELL_H;
    ball_bottom <= ball_y_s * CELL_H + CELL_H - 1;

    pad_left    <= paddle_x_s * CELL_W;
    pad_right   <= paddle_x_s * CELL_W + PADDLE_W * CELL_W - 1;
    pad_top     <= PADDLE_Y * CELL_H;
    pad_bottom  <= PADDLE_Y * CELL_H + CELL_H - 1;

    inside_ball <= '1' when
        (px_x >= ball_left and px_x <= ball_right and
         px_y >= ball_top  and px_y <= ball_bottom)
        else '0';

    inside_paddle <= '1' when
        (px_x >= pad_left and px_x <= pad_right and
         px_y >= pad_top  and px_y <= pad_bottom)
        else '0';

    -- cienka ramka wokół pola gry
    inside_border <= '1' when
        (px_x < 2 or px_x >= 638 or px_y < 2 or px_y >= 478)
        else '0';

    process(px_x, px_y, inside_ball, inside_paddle, inside_border)
    begin
        -- tło: czarne
        R <= (others => '0');
        G <= (others => '0');
        B <= (others => '0');

        if inside_border = '1' then
            -- ramka: ciemnoniebieska
            R <= x"00";
            G <= x"20";
            B <= x"80";
        end if;

        if inside_paddle = '1' then
            -- paletka: zielona
            R <= x"00";
            G <= x"FF";
            B <= x"00";
        end if;

        if inside_ball = '1' then
            -- piłka: biała
            R <= x"FF";
            G <= x"FF";
            B <= x"FF";
        end if;
    end process;

end architecture;