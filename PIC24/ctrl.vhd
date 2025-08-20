----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:55 01/12/2022 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( 
				OP 		 : in std_logic_vector (4 downto 0);
				ALUOP   : out std_logic_vector (2 downto 0);
				MemWr 	 : out std_logic;
				Mem2Reg : out std_logic;
				RegWr 	 : out std_logic;
				RegDest : out std_logic;
				RegBase : out std_logic;
				Branch  : out std_logic;
				CE_NF	 : out std_logic;
				CE_OVF	 : out std_logic;
				CE_ZF   : out std_logic;
				CE_CF   : out std_logic
			  );
end ctrl;

architecture Behavioral of ctrl is

begin
	
	MemWr <= '1' when OP = b"10001" else 'X'; -- MOV Wns, f
	
	Mem2Reg <= '1' when OP = b"10000" else '0'; -- MOV f, Wnd
				
	RegWr <= 'X' when OP = b"10001" or OP = b"00110" else -- MOV wns, f or BRA
				'1'; 
	
	with OP select
	RegDest <= '0' when b"10000", -- MOV f, wnd
				  'X' when b"10001", -- MOV wns, f
				  'X' when b"10100", -- BTST.Z Ws, #bit4
				  'X' when b"00110", -- BRA
				  '1' when others; 
				  
	with OP select		  
	RegBase <= '0' when b"11011", -- LSR Wb, #lit4, Wnd
				  '1' when b"01000", -- ADD Wb, Ws, Wd
				  '1' when b"01010", -- SUB Wb, Ws, Wd
				  '1' when b"01100", -- AND Wb, Ws, Wd
				  '1' when b"01110", -- IOR Wb, Ws, Wd
				  'X' when others; 
			
	CE_CF <= '1' when (OP = b"01000") or     -- ADD Wb, Ws, Wd
						   (OP = b"01010") or     -- SUB Wb, Ws, Wd
						   (OP = b"11111") or	  -- ZE Ws, Wnd
						   (OP = b"10100") or	  -- BTST.Z Ws, #bit4
						   (OP = b"11101") else	  -- INC Ws, Wd
				'X';
	
	CE_ZF <= '1' when (OP = b"01000") or     -- ADD Wb, Ws, Wd
	                  (OP = b"01010") or     -- SUB Wb, Ws, Wd
	                  (OP = b"01100") or     -- AND Wb, Ws, Wd
	                  (OP = b"01110") or     -- IOR Wb, Ws, Wd
	                  (OP = b"11011") or     -- LSR Wb,#lit4,Wnd
	                  (OP = b"11111") or     -- ZE Ws, Wnd 
	                  (OP = b"10100") or     -- BTST.Z Ws,#bit4
							(OP = b"11101") else   -- INC Ws, Wd
			  'X';
			  
			  
	CE_NF <= '1' when (OP = b"01000") or     -- ADD Wb, Ws, Wd
							(OP = b"01010") or     -- SUB Wb, Ws, Wd
	                  (OP = b"01100") or     -- AND Wb, Ws, Wd
	                  (OP = b"01110") or     -- IOR Wb, Ws, Wd
	                  (OP = b"11011") or     -- LSR Wb,#lit4,Wnd
	                  (OP = b"11111") or     -- ZE Ws, Wnd
							(OP = b"11101") else   -- INC Ws, Wd
			  'X';        

   CE_OVF <= '1' when (OP = b"01000") or     -- ADD Wb, Ws, Wd
						    (OP = b"01010") or     -- SUB Wb, Ws, Wd
						    (OP = b"11101") else   -- INC Ws, Wd
			  'X';
	
			
	ALUOP <= "000" when OP = b"01000" else  -- ADD Wb, Ws, Wd
			   "001" when OP = b"01010" else  -- SUB Wb, Ws, Wd
			   "010" when OP = b"01100" else  -- AND Wb, Ws, Wd
			   "011" when OP = b"01110" else  -- IOR Wb, Ws, Wd
			   "100" when OP = b"11011" else  -- LSR Wb,#lit4,Wnd
				
				"101" when OP = b"11111" else  -- ZE Ws, Wnd
				"110" when OP = b"10100" else  -- BTST.Z Ws, #bit4
			   "111" when OP = b"11101";      -- INC Ws, Wd
			
	Branch <= '1' when (OP = b"00110") else 
				 'X';

end Behavioral;

