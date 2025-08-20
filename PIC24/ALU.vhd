----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:43 01/12/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( 
				Clk        : in  STD_LOGIC; 
				RdData1	 : in  STD_LOGIC_VECTOR (15 downto 0);
				RdData2	 : in  STD_LOGIC_VECTOR (15 downto 0);
				LSR_lit4 : STD_LOGIC_VECTOR (3 downto 0);
				BTSTZ_bit4 : STD_LOGIC_VECTOR (3 downto 0);
				ALUOP      : in  STD_LOGIC_VECTOR (2 downto 0);
				CE_CF 	 	 : in  STD_LOGIC;
				CE_NF 	 	 : in  STD_LOGIC;
				CE_OVF	 	 : in  STD_LOGIC;
				CE_ZF 	 	 : in  STD_LOGIC;
				C 		    : out STD_LOGIC;		-- Carry flag
				N 		    : out STD_LOGIC;		-- Negate flag
				OV 		    : out STD_LOGIC;		-- Overflow flag
				Z 		 	 : out STD_LOGIC;		-- Zero flag
				Y 		 	 : out STD_LOGIC_VECTOR (15 downto 0)
			  );
end ALU;

architecture Behavioral of ALU is
	signal result	 	: std_logic_vector(16 downto 0);
	signal temp_LSR 	: std_logic_vector(15 downto 0);
	signal temp_Z 		: std_logic;
	signal overflow 	: std_logic;
	signal temp_ZE		: std_logic_vector(15 downto 0);
begin
	temp_LSR <= (15 downto 15 - conv_integer(LSR_lit4)+1 => '0')&RdData1(15 downto conv_integer(LSR_lit4));
	temp_ZE <= x"00"&RdData2(7 downto 0);

	with ALUOP select
	result <= ((b"0"&RdData1) + (b"0"&RdData2)) when "000",									-- ADD Wb ,Ws, Wd
			    (('0'&RdData1) + ('0'&(not RdData2)) + 1) when "001",						-- SUB Wb, Ws, Wd	
				 ((b"0"&RdData1) and (b"0"&RdData2)) when "010",								-- AND Wb, Ws, Wd
				 ((b"0"&RdData1) or (b"0"&RdData2)) when "011",									-- IOR Wb, Ws, Wd
				 b"0"&temp_LSR when "100",																-- LSR Wb,#lit4,Wnd
				 --TODO
				 b"0"&temp_ZE when "101",																-- ZE Ws, Wnd
				((b"0"&RdData2) + (x"0000"&b"1")) when "111",								   -- INC Ws, Wd
				 x"0000"&b"0" when others;
				 
	Y <= result(15 downto 0);
	
	C <= result(16) when (rising_edge(Clk) and CE_CF = '1');
	
	--TO CHECK
	temp_Z <= not(RdData2(conv_integer(BTSTZ_bit4))) when ALUOP = "110" else -- BTST.Z Ws,#bit4
				 '1' when (result(15 downto 0) = x"0000") else
				 '0';
		  
	Z <= temp_Z when(rising_edge(Clk) and CE_ZF = '1');
	
	--TODO
	overflow <= '1' when ((ALUOP = "000" and RdData1(15) = RdData2(15) and result(15) = (not RdData1(15))) or		-- ADD Wb ,Ws, Wd
								 (ALUOP = "001" and RdData1(15) = (not RdData2(15)) and result(15) = RdData2(15)) or		-- SUB Wb, Ws, Wd
								 (ALUOP = "111" and (RdData2(15)) = '0' and result(15) = (not RdData2(15)))) else			-- INC Ws, Wd
					'0';
	
	OV <= overflow when (rising_edge(Clk) and CE_OVF = '1');
	
	N  <= result(15) when (rising_edge(Clk) and CE_NF = '1');

end Behavioral;
