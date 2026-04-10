library ieee;
use ieee.std_logic_1164.all;

entity ResetCombiner is
    port (
        ClkLocked : in  std_logic;
        PL_USER_PB_0 : in  std_logic;
        RstN      : out std_logic
    );
end entity;

architecture rtl of ResetCombiner is
begin
    -- reset aktywny niski:
    -- gdy Clock Wizard nie jest locked albo przycisk wciśnięty -> reset aktywny
    RstN <= ClkLocked and (not PL_USER_PB_0);
end architecture;