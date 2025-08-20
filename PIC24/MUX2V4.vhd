----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:27 01/12/2022 
-- Design Name: 
-- Module Name:    MUX2V4 - Behavioral 
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


entity MUX2V4 is
    Port ( 
				I0 : in  STD_LOGIC_VECTOR (3 downto 0);
				I1 : in  STD_LOGIC_VECTOR (3 downto 0);
				Sel : in  STD_LOGIC;
				Y : out  STD_LOGIC_VECTOR (3 downto 0)
			);
end MUX2V4;

architecture Behavioral of MUX2V4 is

begin
	Y <= I1 when Sel = '1' else I0;

end Behavioral;

