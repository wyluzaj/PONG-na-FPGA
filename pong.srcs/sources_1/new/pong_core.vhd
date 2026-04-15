-- Moduł: pong_core
-- Opis :
--   Główna logika gry Pong.
--   Odpowiada za ruch piłki, sterowanie paletką oraz detekcję kolizji.
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pong_core is
    generic (
        FIELD_W  : integer := 64;
        FIELD_H  : integer := 32;
        PADDLE_W : integer := 12;
        PADDLE_Y : integer := 30
    );
    port (
        clk        : in  std_logic;
        reset      : in  std_logic; -- reset gry
        tick       : in  std_logic; -- tempo animacji piłki
        move_left  : in  std_logic; -- impuls z enkodera (lewo)
        move_right : in  std_logic; -- impuls z enkodera (prawo)

        ball_x     : out integer range 0 to FIELD_W-1;
        ball_y     : out integer range 0 to FIELD_H-1;
        paddle_x   : out integer range 0 to FIELD_W-1
    );
end pong_core;

architecture Behavioral of pong_core is
    -- Rejestry pozycji
    signal ball_x_reg   : integer range 0 to FIELD_W-1 := FIELD_W/2;
    signal ball_y_reg   : integer range 0 to FIELD_H-1 := FIELD_H/2;
    signal paddle_x_reg : integer range 0 to FIELD_W-1 := (FIELD_W - PADDLE_W)/2;

    -- Kierunek ruchu
    signal dx : integer range -1 to 1 := 1;
    signal dy : integer range -1 to 1 := -1;

    -- Flaga stanu gry (czy piłka ma się ruszać)
    signal game_started : std_logic := '0';

begin
    -- Wystawienie sygnałów na porty
    ball_x   <= ball_x_reg;
    ball_y   <= ball_y_reg;
    paddle_x <= paddle_x_reg;

    process(clk)
        variable next_x : integer;
        variable next_y : integer;
        variable new_dx : integer range -1 to 1;
        variable new_dy : integer range -1 to 1;
    begin
        if rising_edge(clk) then
            if reset = '1' then
                ball_x_reg   <= FIELD_W/2;
                ball_y_reg   <= FIELD_H/2;
                paddle_x_reg <= (FIELD_W - PADDLE_W)/2;
                dx <= 1;
                dy <= -1;
                game_started <= '0'; -- Piłka stoi po resecie
            else
                -- 1. OBSŁUGA PALETKI (krok = 3, reaguje natychmiast)
                if move_left = '1' then
                    game_started <= '1'; -- Pierwszy ruch uruchamia grę
                    if paddle_x_reg >= 3 then
                        paddle_x_reg <= paddle_x_reg - 3;
                    else
                        paddle_x_reg <= 0;
                    end if;
                elsif move_right = '1' then
                    game_started <= '1'; -- Pierwszy ruch uruchamia grę
                    if paddle_x_reg <= (FIELD_W - PADDLE_W - 3) then
                        paddle_x_reg <= paddle_x_reg + 3;
                    else
                        paddle_x_reg <= FIELD_W - PADDLE_W;
                    end if;
                end if;

                -- 2. LOGIKA PIŁKI (tylko gdy tick='1' i gra trwa)
                if tick = '1' and game_started = '1' then
                    next_x := ball_x_reg + dx;
                    next_y := ball_y_reg + dy;
                    new_dx := dx;
                    new_dy := dy;

                    -- Kolizje ze ścianami bocznymi
                    if next_x <= 0 then 
                        new_dx := 1;
                    elsif next_x >= FIELD_W - 1 then
                        new_dx := -1;
                    end if;

                    -- Kolizja z górną ścianą
                    if next_y <= 0 then 
                        new_dy := 1;
                    end if;

                    -- Odbicie od paletki
                    if next_y = PADDLE_Y and dy = 1 then  
                        if next_x >= paddle_x_reg and next_x < paddle_x_reg + PADDLE_W then
                            new_dy := -1;
                        end if;
                    end if;

                    -- Sprawdzenie wypadnięcia piłki (skucha)
                    if next_y >= FIELD_H - 1 then
                        ball_x_reg   <= FIELD_W/2;
                        ball_y_reg   <= FIELD_H/2;
                        dx           <= 1;
                        dy           <= -1;
                        game_started <= '0'; -- Zatrzymaj piłkę po skusze
                    else
                        ball_x_reg <= ball_x_reg + new_dx;
                        ball_y_reg <= ball_y_reg + new_dy;
                        dx <= new_dx;
                        dy <= new_dy;
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;