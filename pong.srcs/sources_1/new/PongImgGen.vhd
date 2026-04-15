-- Moduł: PongImgGen
-- Opis :
--   łączy logikę gry z generowaniem obrazu
--   przelicza pozycje obiektów gry na piksele ekranu i ustawia kolory pikseli dla piłki, paletki oraz ramki.
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PongImgGen is
    port (
        Clk        : in  std_logic;  -- zegar pikselowy 25 MHz
        ResetN     : in  std_logic;  -- reset systemu aktywny stanem niskim
        GameReset  : in  std_logic;  -- reset gry aktywny stanem wysokim
        MoveLeft   : in  std_logic;  -- sterowanie ruchem paletki w lewo
        MoveRight  : in  std_logic;  -- sterowanie ruchem paletki w prawo
        DE         : in  std_logic;  -- sygnał aktywnego obszaru obrazu z VideoTiming
        PosX       : in  std_logic_vector(9 downto 0); -- aktualna współrzędna X piksela
        PosY       : in  std_logic_vector(9 downto 0); -- aktualna współrzędna Y piksela
        R          : out std_logic_vector(7 downto 0); -- składowa czerwona koloru piksela
        G          : out std_logic_vector(7 downto 0); -- składowa zielona koloru piksela
        B          : out std_logic_vector(7 downto 0)  -- składowa niebieska koloru piksela

    );
end entity;

architecture rtl of PongImgGen is
    constant FIELD_W  : integer := 64;
    constant FIELD_H  : integer := 32;
    constant PADDLE_W : integer := 12;
    constant PADDLE_Y : integer := 30;
    
    -- szerokość jednej komórki gry w pikselach
    constant CELL_W : integer := 10; -- 640 / 64
    constant CELL_H : integer := 15; -- 480 / 32

    signal game_rst_s : std_logic;
    signal game_tick  : std_logic;

    signal ball_x_s   : integer range 0 to FIELD_W - 1;
    signal ball_y_s   : integer range 0 to FIELD_H - 1;
    signal paddle_x_s : integer range 0 to FIELD_W - 1;
    
 -- bieżąca pozycja piksela X, Y po konwersji z wektora
    signal px_x : integer range 0 to 1023;
    signal px_y : integer range 0 to 1023;
    
-- krawedzi piłki i paletki
    signal ball_left   : integer;
    signal ball_right  : integer;
    signal ball_top    : integer;
    signal ball_bottom : integer;

    signal pad_left    : integer;
    signal pad_right   : integer;
    signal pad_top     : integer;
    signal pad_bottom  : integer;
    
 -- sygnał informujący, że bieżący piksel należy do obiektu
    signal inside_ball   : std_logic;
    signal inside_paddle : std_logic;
    signal inside_border : std_logic;
begin
    -- Wspólny reset całego podsystemu gry:
    -- 1) brak gotowości systemu (ResetN = 0)
    -- 2) reset z przycisku gry (GameReset = 1)
    game_rst_s <= (not ResetN) or GameReset;
    
-- konwersja współrzędnej X, Y z wektora logicznego na integer
    px_x <= to_integer(unsigned(PosX));
    px_y <= to_integer(unsigned(PosY));

    u_div : entity work.freq_divider -- instancja dzielnika częstotliwości sterującego tempem gry
        generic map (
            CLK_FREQ_HZ  => 25_000_000,
            TICK_FREQ_HZ => 60
        )
        port map (
            clk_in   => Clk,
            reset    => game_rst_s,
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
            reset      => game_rst_s,
            tick       => game_tick,
            move_left  => MoveLeft,
            move_right => MoveRight,
            ball_x     => ball_x_s,
            ball_y     => ball_y_s,
            paddle_x   => paddle_x_s
        );

    -- Pozycja piłki w pikselach
    ball_left   <= ball_x_s * CELL_W;
    ball_right  <= ball_x_s * CELL_W + CELL_W - 1;
    ball_top    <= ball_y_s * CELL_H;
    ball_bottom <= ball_y_s * CELL_H + CELL_H - 1;

    -- Pozycja paletki w pikselach
    pad_left    <= paddle_x_s * CELL_W;
    pad_right   <= paddle_x_s * CELL_W + PADDLE_W * CELL_W - 1;
    pad_top     <= PADDLE_Y * CELL_H;
    pad_bottom  <= PADDLE_Y * CELL_H + CELL_H - 1;
    
-- sprawdzenie, czy bieżący piksel należy do obszaru obiektu
    inside_ball <= '1' when
        (px_x >= ball_left and px_x <= ball_right and
         px_y >= ball_top  and px_y <= ball_bottom)
        else '0';

    inside_paddle <= '1' when
        (px_x >= pad_left and px_x <= pad_right and
         px_y >= pad_top  and px_y <= pad_bottom)
        else '0';
        
-- sprawdzenie, czy bieżący piksel należy do zewnętrznej ramki obrazu
    inside_border <= '1' when
        (px_x < 2 or px_x >= 638 or px_y < 2 or px_y >= 478)
        else '0';
-- poprawiony proces generujący kolor bieżącego piksela
process(DE, inside_ball, inside_paddle, inside_border)
begin
    -- Domyślnie tło czarne
    R <= (others => '0');
    G <= (others => '0');
    B <= (others => '0');

    if DE = '1' then
        if inside_ball = '1' then
            R <= x"FF"; G <= x"FF"; B <= x"FF"; -- Piłka: Biała
        elsif inside_paddle = '1' then
            R <= x"00"; G <= x"FF"; B <= x"00"; -- Paletka: Zielona
        elsif inside_border = '1' then
            R <= x"00"; G <= x"20"; B <= x"80"; -- Ramka: Niebieska
        end if;
    end if;
end process;

end architecture;