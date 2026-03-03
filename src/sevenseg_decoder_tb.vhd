----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2026 10:30:49 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is
    component sevenseg_decoder
            Port ( i_Hex   : in  STD_LOGIC_VECTOR (3 downto 0);
                   o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
        end component;
        
        -- Test signals
    signal i_Hex   : STD_LOGIC_VECTOR (3 downto 0);
    signal o_seg_n : STD_LOGIC_VECTOR (6 downto 0);

begin
   -- PORT MAPS -----
     uut: sevenseg_decoder port map (
        i_Hex   => i_Hex,
        o_seg_n => o_seg_n
     );

-- Test Plan Process
	-- Implement the test plan here.  Body of process is continuously from time = 0  
	test_process : process 
	begin
	
        -- Test 0
        i_hex <= "0000"; wait for 10 ns;
        assert (o_seg_n = "0111111") report "Error with 0" severity failure;
        -- Test 1
        i_hex <= "0001"; wait for 10 ns;
        assert (o_seg_n = "0000110") report "Error with 1" severity failure;
        -- Test 2
        i_hex <= "0010"; wait for 10 ns;
        assert (o_seg_n = "1011011") report "Error with 2" severity failure;
        -- Test 3
        i_hex <= "0011"; wait for 10 ns;
        assert (o_seg_n = "1001111") report "Error with 3" severity failure;
        -- Test 4
        i_hex <= "0100"; wait for 10 ns;
        assert (o_seg_n = "1100110") report "Error with 4" severity failure;
        -- Test 5
        i_hex <= "0101"; wait for 10 ns;
        assert (o_seg_n = "1101101") report "Error with 5" severity failure;
        -- Test 6
        i_hex <= "0110"; wait for 10 ns;
        assert (o_seg_n = "1111101") report "Error with 6" severity failure;
        -- Test 7
        i_hex <= "0111"; wait for 10 ns;
        assert (o_seg_n = "0000111") report "Error with 7" severity failure;
        -- Test 8
        i_hex <= "1000"; wait for 10 ns;
        assert (o_seg_n = "1111111") report "Error with 8" severity failure;
        -- Test 9
        i_hex <= "1001"; wait for 10 ns;
        assert (o_seg_n = "1100011") report "Error with 9" severity failure;
        -- Test A
        i_hex <= "1010"; wait for 10 ns;
        assert (o_seg_n = "1110111") report "Error with A" severity failure;
        -- Test B
        i_hex <= "1011"; wait for 10 ns;
        assert (o_seg_n = "1111100") report "Error with B" severity failure;
        -- Test C
        i_hex <= "1100"; wait for 10 ns;
        assert (o_seg_n = "0111001") report "Error with C" severity failure;
        -- Test D
        i_hex <= "1101"; wait for 10 ns;
        assert (o_seg_n = "1011110") report "Error with D" severity failure;
        -- Test E
        i_hex <= "1110"; wait for 10 ns;
        assert (o_seg_n = "1111001") report "Error with E" severity failure;
        -- Test F
        i_hex <= "1111"; wait for 10 ns;
        assert (o_seg_n = "1110001") report "Error with F" severity failure;
        
	
		wait; -- wait forever
	end process;	
	-----------------------------------------------------	
	
end test_bench;