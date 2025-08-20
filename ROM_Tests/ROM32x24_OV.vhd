library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM32x24 is
    Port (
				Addr : in  STD_LOGIC_VECTOR (4 downto 0);
            Data : out  STD_LOGIC_VECTOR (23 downto 0)
			);
end ROM32x24;

architecture Behavioar of ROM32x24 is
	type tROM is array (0 to 31) of std_logic_vector(23 downto 0);
	constant ROM : tROM :=(
						x"", --0
						x"808101", --1
						x"808112", --2
						x"408182", --3
						x"410402", --4
						x"418203", --5
						x"418402", --6
						x"510283", --7
						x"508402", --8
						x"528381", --9
						x"608282", --10
						x"708302", --11
						x"888121", --12
						x"888122", --13
						x"888123", --14
						x"888124", --15
						x"888125", --16
						x"37FFEF", --17
						x"000000", --18
						x"000000", --19
						x"000000", --20
						x"000000", --21
						x"000000", --22
						x"000000", --23
						x"000000", --24
						x"000000", --25
						x"000000", --26
						x"000000", --27
						x"000000", --28
						x"000000", --29
						x"000000", --30
						x"000000"  --31
						);
begin
	Data <= ROM(conv_integer(Addr));

end Behavioar;

















