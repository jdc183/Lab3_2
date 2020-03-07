
-- 
-- Definition of  areg
-- 
--      Sat Mar  7 18:38:07 2020
--      
--      LeonardoSpectrum Level 3, 2009a.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dff is
   port (
      Q : OUT std_logic ;
      QB : OUT std_logic ;
      D : IN std_logic ;
      CLK : IN std_logic) ;
end dff ;

architecture NETLIST of dff is
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
   signal \[869_\, nx2, nx4: std_logic ;

begin
   Q <= \[869_\ ;
   DFFPC (D,nx4,nx2,CLK,\[869_\) ;
   nx2 <= '0' ;
   nx4 <= '0' ;
   QB <= NOT \[869_\ ;
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

entity ao32 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      A2 : IN std_logic ;
      B0 : IN std_logic ;
      B1 : IN std_logic) ;
end ao32 ;

architecture NETLIST of ao32 is
   signal nx0, nx2, nx4: std_logic ;

begin
   nx0 <= A0 AND A1 ;
   nx2 <= nx0 AND A2 ;
   nx4 <= B0 AND B1 ;
   Y <= nx2 OR nx4 ;
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

entity and03 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      A2 : IN std_logic) ;
end and03 ;

architecture NETLIST of and03 is
   signal nx0: std_logic ;

begin
   nx0 <= A0 AND A1 ;
   Y <= nx0 AND A2 ;
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

entity areg is
   port (
      clk : IN std_logic ;
      c1 : IN std_logic ;
      c2 : IN std_logic ;
      ia : IN std_logic_vector (3 DOWNTO 0) ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      q0 : OUT std_logic) ;
end areg ;

architecture INTERFACE of areg is
   signal q_3_EXMPLR, q_2_EXMPLR, q_1_EXMPLR, q0_EXMPLR, nx20, nx24, nx36, 
      nx48, nx157, nx159, nx169, nx179, nx189, nx210, nx213, nx217: 
   std_logic ;

begin
   q(3) <= q_3_EXMPLR ;
   q(2) <= q_2_EXMPLR ;
   q(1) <= q_1_EXMPLR ;
   q(0) <= q0_EXMPLR ;
   q0 <= q0_EXMPLR ;
   reg_q_0 : dff port map ( Q=>q0_EXMPLR, QB=>OPEN, D=>nx189, CLK=>clk);
   ix190 : mux21_ni port map ( Y=>nx189, A0=>nx48, A1=>q0_EXMPLR, S0=>nx217
   );
   ix49 : ao32 port map ( Y=>nx48, A0=>q_1_EXMPLR, A1=>nx210, A2=>c1, B0=>
      ia(0), B1=>nx20);
   reg_q_1 : dff port map ( Q=>q_1_EXMPLR, QB=>OPEN, D=>nx179, CLK=>clk);
   ix180 : mux21_ni port map ( Y=>nx179, A0=>nx36, A1=>q_1_EXMPLR, S0=>nx217
   );
   ix37 : ao32 port map ( Y=>nx36, A0=>q_2_EXMPLR, A1=>nx210, A2=>c1, B0=>
      ia(1), B1=>nx20);
   reg_q_2 : dff port map ( Q=>q_2_EXMPLR, QB=>OPEN, D=>nx169, CLK=>clk);
   ix170 : mux21_ni port map ( Y=>nx169, A0=>nx24, A1=>q_2_EXMPLR, S0=>nx217
   );
   ix25 : ao32 port map ( Y=>nx24, A0=>q_3_EXMPLR, A1=>nx210, A2=>c1, B0=>
      ia(2), B1=>nx20);
   reg_q_3 : dff port map ( Q=>q_3_EXMPLR, QB=>OPEN, D=>nx159, CLK=>clk);
   ix160 : ao21 port map ( Y=>nx159, A0=>q_3_EXMPLR, A1=>nx210, B0=>nx157);
   ix211 : inv02 port map ( Y=>nx210, A=>c2);
   ix158 : and03 port map ( Y=>nx157, A0=>ia(3), A1=>nx213, A2=>c2);
   ix214 : inv02 port map ( Y=>nx213, A=>c1);
   ix21 : nor02_2x port map ( Y=>nx20, A0=>c1, A1=>nx217);
   ix218 : nor02_2x port map ( Y=>nx217, A0=>c2, A1=>c1);
end INTERFACE ;

