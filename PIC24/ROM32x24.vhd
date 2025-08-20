----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:21 01/12/2022 
-- Design Name: 
-- Module Name:    ROM32x24 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM32x24 is
    Port (
				Addr : in  STD_LOGIC_VECTOR (4 downto 0);
            Data : out  STD_LOGIC_VECTOR (23 downto 0)
			);
end ROM32x24;

architecture Behavioar of ROM32x24 is
	type tROM is array (0 to 31) of std_logic_vector(23 downto 0);
	constant ROM : tROM :=(
							x"808101", --0
							x"808112", --1
							x"E80181", --2
							x"E80202", --3
							x"37FFFB", --4
							x"000000", --5
							x"000000", --6
							x"000000", --7
							x"000000", --8
							x"000000", --9
							x"000000", --10
							x"000000", --11
							x"000000", --12
							x"000000", --13
							x"000000", --14
							x"000000", --15
							x"000000", --16
							x"000000", --17
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























 
 
 
 
 
 
 
 
 
 
 
 
 
 
