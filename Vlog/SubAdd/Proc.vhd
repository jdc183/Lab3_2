
-- 
-- Definition of  alu
-- 
--      Sat Mar  7 17:56:17 2020
--      
--      LeonardoSpectrum Level 3, 2009a.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor2 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end xor2 ;

architecture NETLIST of xor2 is
begin
   Y <= A0 XOR A1 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xnor2 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end xnor2 ;

architecture NETLIST of xnor2 is
begin
   Y <= NOT (A0 XOR A1) ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux21_ni is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      S0 : IN std_logic) ;
end mux21_ni ;

architecture NETLIST of mux21_ni is
   signal NOT_S0, nx2, nx4: std_logic ;

begin
   NOT_S0 <= NOT S0 ;
   nx2 <= A0 AND NOT_S0 ;
   nx4 <= A1 AND S0 ;
   Y <= nx2 OR nx4 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nand02_2x is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic) ;
end nand02_2x ;

architecture NETLIST of nand02_2x is
   signal NOT_A1, NOT_A0: std_logic ;

begin
   NOT_A1 <= NOT A1 ;
   NOT_A0 <= NOT A0 ;
   Y <= NOT_A1 OR NOT_A0 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity inv02 is
   port (
      Y : OUT std_logic ;
      A : IN std_logic) ;
end inv02 ;

architecture NETLIST of inv02 is
begin
   Y <= NOT A ;
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

entity nor03 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      A2 : IN std_logic) ;
end nor03 ;

architecture NETLIST of nor03 is
   signal NOT_A0, NOT_A1, nx4, NOT_A2: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   NOT_A1 <= NOT A1 ;
   nx4 <= NOT_A0 AND NOT_A1 ;
   NOT_A2 <= NOT A2 ;
   Y <= nx4 AND NOT_A2 ;
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

entity aoi32 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      A2 : IN std_logic ;
      B0 : IN std_logic ;
      B1 : IN std_logic) ;
end aoi32 ;

architecture NETLIST of aoi32 is
   signal NOT_A2, NOT_B1, nx4, NOT_A1, nx8, nx10, NOT_A0, nx14, nx16, NOT_B0, 
      nx20, nx22, nx24, nx26, nx28: std_logic ;

begin
   NOT_A2 <= NOT A2 ;
   NOT_B1 <= NOT B1 ;
   nx4 <= NOT_A2 AND NOT_B1 ;
   NOT_A1 <= NOT A1 ;
   nx8 <= NOT_A1 AND NOT_B1 ;
   nx10 <= nx4 OR nx8 ;
   NOT_A0 <= NOT A0 ;
   nx14 <= NOT_A0 AND NOT_B1 ;
   nx16 <= nx10 OR nx14 ;
   NOT_B0 <= NOT B0 ;
   nx20 <= NOT_A2 AND NOT_B0 ;
   nx22 <= nx16 OR nx20 ;
   nx24 <= NOT_A1 AND NOT_B0 ;
   nx26 <= nx22 OR nx24 ;
   nx28 <= NOT_A0 AND NOT_B0 ;
   Y <= nx26 OR nx28 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity aoi22 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic ;
      B1 : IN std_logic) ;
end aoi22 ;

architecture NETLIST of aoi22 is
   signal NOT_A1, NOT_B1, nx4, NOT_A0, nx8, nx10, NOT_B0, nx14, nx16, nx18: 
   std_logic ;

begin
   NOT_A1 <= NOT A1 ;
   NOT_B1 <= NOT B1 ;
   nx4 <= NOT_A1 AND NOT_B1 ;
   NOT_A0 <= NOT A0 ;
   nx8 <= NOT_A0 AND NOT_B1 ;
   nx10 <= nx4 OR nx8 ;
   NOT_B0 <= NOT B0 ;
   nx14 <= NOT_A1 AND NOT_B0 ;
   nx16 <= nx10 OR nx14 ;
   nx18 <= NOT_A0 AND NOT_B0 ;
   Y <= nx16 OR nx18 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity buf02 is
   port (
      Y : OUT std_logic ;
      A : IN std_logic) ;
end buf02 ;

architecture NETLIST of buf02 is
begin
   Y <= A ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity alu is
   port (
      c : IN std_logic ;
      ia : IN std_logic_vector (3 DOWNTO 0) ;
      ib : IN std_logic_vector (3 DOWNTO 0) ;
      sum : OUT std_logic_vector (3 DOWNTO 0) ;
      cout : OUT std_logic) ;
end alu ;

architecture INTERFACE of alu is
   signal nx8, nx16, nx26, nx36, nx38, nx42, nx44, nx58, nx62, nx64, nx78, 
      nx82, nx84, nx102, nx108, nx110, nx118, nx122, nx126, nx142, nx197, 
      nx199, nx201, nx206, nx213, nx216, nx222, nx224, nx227, nx230, nx236, 
      nx239, nx242, nx246, nx248, nx255, nx257: std_logic ;

begin
   ix153 : xor2 port map ( Y=>sum(0), A0=>ia(0), A1=>ib(0));
   ix151 : xnor2 port map ( Y=>sum(1), A0=>nx197, A1=>nx84);
   ix198 : mux21_ni port map ( Y=>nx197, A0=>nx199, A1=>nx257, S0=>nx110);
   ix200 : nand02_2x port map ( Y=>nx199, A0=>ib(0), A1=>nx257);
   ix202 : inv02 port map ( Y=>nx201, A=>c);
   ix111 : xnor2 port map ( Y=>nx110, A0=>nx108, A1=>nx199);
   ix109 : ao21 port map ( Y=>nx108, A0=>nx257, A1=>ia(0), B0=>nx102);
   ix103 : nor03 port map ( Y=>nx102, A0=>nx206, A1=>nx257, A2=>nx255);
   ix207 : nor02ii port map ( Y=>nx206, A0=>ib(0), A1=>ia(0));
   ix27 : nor02ii port map ( Y=>nx26, A0=>ia(0), A1=>ib(0));
   ix85 : xnor2 port map ( Y=>nx84, A0=>nx82, A1=>nx213);
   ix83 : mux21_ni port map ( Y=>nx82, A0=>ia(1), A1=>nx78, S0=>c);
   ix79 : xor2 port map ( Y=>nx78, A0=>nx255, A1=>nx16);
   ix17 : xnor2 port map ( Y=>nx16, A0=>ib(1), A1=>ia(1));
   ix214 : nand02_2x port map ( Y=>nx213, A0=>ib(1), A1=>nx257);
   ix149 : xnor2 port map ( Y=>sum(2), A0=>nx216, A1=>nx64);
   ix217 : aoi32 port map ( Y=>nx216, A0=>ib(1), A1=>nx257, A2=>ia(1), B0=>
      nx118, B1=>nx84);
   ix65 : xnor2 port map ( Y=>nx64, A0=>nx62, A1=>nx227);
   ix63 : mux21_ni port map ( Y=>nx62, A0=>ia(2), A1=>nx58, S0=>c);
   ix59 : xnor2 port map ( Y=>nx58, A0=>nx222, A1=>nx8);
   ix223 : aoi22 port map ( Y=>nx222, A0=>nx224, A1=>ib(1), B0=>nx255, B1=>
      nx16);
   ix225 : inv02 port map ( Y=>nx224, A=>ia(1));
   ix9 : xnor2 port map ( Y=>nx8, A0=>ib(2), A1=>ia(2));
   ix228 : nand02_2x port map ( Y=>nx227, A0=>ib(2), A1=>nx257);
   ix147 : xnor2 port map ( Y=>sum(3), A0=>nx230, A1=>nx44);
   ix231 : aoi32 port map ( Y=>nx230, A0=>ib(2), A1=>nx201, A2=>ia(2), B0=>
      nx122, B1=>nx64);
   ix45 : xnor2 port map ( Y=>nx44, A0=>nx42, A1=>nx239);
   ix43 : mux21_ni port map ( Y=>nx42, A0=>ia(3), A1=>nx38, S0=>c);
   ix39 : xnor2 port map ( Y=>nx38, A0=>nx236, A1=>nx36);
   ix237 : mux21_ni port map ( Y=>nx236, A0=>ia(2), A1=>nx222, S0=>nx8);
   ix37 : xnor2 port map ( Y=>nx36, A0=>ib(3), A1=>ia(3));
   ix240 : nand02_2x port map ( Y=>nx239, A0=>ib(3), A1=>nx201);
   ix145 : xnor2 port map ( Y=>cout, A0=>nx242, A1=>nx142);
   ix243 : aoi32 port map ( Y=>nx242, A0=>ib(3), A1=>nx201, A2=>ia(3), B0=>
      nx126, B1=>nx44);
   ix247 : aoi22 port map ( Y=>nx246, A0=>ia(3), A1=>nx248, B0=>nx236, B1=>
      nx36);
   ix249 : inv02 port map ( Y=>nx248, A=>ib(3));
   ix127 : inv02 port map ( Y=>nx126, A=>nx230);
   ix123 : inv02 port map ( Y=>nx122, A=>nx216);
   ix119 : inv02 port map ( Y=>nx118, A=>nx197);
   ix254 : buf02 port map ( Y=>nx255, A=>nx26);
   ix256 : inv02 port map ( Y=>nx257, A=>c);
   ix143 : nor02ii port map ( Y=>nx142, A0=>nx246, A1=>c);
end INTERFACE ;

