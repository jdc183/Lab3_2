
-- 
-- Definition of  counter
-- 
--      Sat Mar  7 17:46:05 2020
--      
--      LeonardoSpectrum Level 3, 2009a.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fake_gnd is
   port (
      Y : OUT std_logic) ;
end fake_gnd ;

architecture NETLIST of fake_gnd is
begin
   Y <= '0' ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ao21 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic) ;
end ao21 ;

architecture NETLIST of ao21 is
   signal nx0: std_logic ;

begin
   nx0 <= A0 AND A1 ;
   Y <= nx0 OR B0 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dffsr_ni is
   port (
      Q : OUT std_logic ;
      QB : OUT std_logic ;
      D : IN std_logic ;
      CLK : IN std_logic ;
      S : IN std_logic ;
      R : IN std_logic) ;
end dffsr_ni ;

architecture NETLIST of dffsr_ni is
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal \[906_\: std_logic ;

begin
   Q <= \[906_\ ;
   DFFPC (D,S,R,CLK,\[906_\) ;
   QB <= NOT \[906_\ ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity and02 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end and02 ;

architecture NETLIST of and02 is
begin
   Y <= A0 AND A1 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nor02_2x is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end nor02_2x ;

architecture NETLIST of nor02_2x is
   signal NOT_A0, NOT_A1: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   NOT_A1 <= NOT A1 ;
   Y <= NOT_A0 AND NOT_A1 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nor02ii is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end nor02ii ;

architecture NETLIST of nor02ii is
   signal NOT_A0: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   Y <= NOT_A0 AND A1 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity counter is
   port (
      c : IN std_logic ;
      \out\ : OUT std_logic ;
      start : IN std_logic) ;
end counter ;

architecture INTERFACE of counter is
   signal \out__EXMPLR\, nx69, nx0, nx4, nx18, nx20, nx84, nx86, nx91: 
   std_logic ;

begin
   \out\ <= \out__EXMPLR\ ;
   ix70 : fake_gnd port map ( Y=>nx69);
   ix85 : ao21 port map ( Y=>nx84, A0=>nx86, A1=>nx91, B0=>\out__EXMPLR\);
   reg_count_0 : dffsr_ni port map ( Q=>OPEN, QB=>nx86, D=>nx69, CLK=>start, 
      S=>nx4, R=>nx0);
   reg_count_1 : dffsr_ni port map ( Q=>OPEN, QB=>nx91, D=>nx69, CLK=>start, 
      S=>nx20, R=>nx18);
   ix19 : and02 port map ( Y=>nx18, A0=>c, A1=>nx84);
   ix25 : nor02_2x port map ( Y=>\out__EXMPLR\, A0=>nx91, A1=>nx86);
   ix21 : nor02ii port map ( Y=>nx20, A0=>nx84, A1=>c);
   ix5 : and02 port map ( Y=>nx4, A0=>c, A1=>nx86);
   ix1 : nor02ii port map ( Y=>nx0, A0=>nx86, A1=>c);
end INTERFACE ;

