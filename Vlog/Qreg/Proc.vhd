
-- 
-- Definition of  qreg
-- 
--      Fri Feb 28 14:01:01 2020
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

entity oai21 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic) ;
end oai21 ;

architecture NETLIST of oai21 is
   signal NOT_A0, NOT_A1, nx4, NOT_B0: std_logic ;

begin
   NOT_A0 <= NOT A0 ;
   NOT_A1 <= NOT A1 ;
   nx4 <= NOT_A0 AND NOT_A1 ;
   NOT_B0 <= NOT B0 ;
   Y <= nx4 OR NOT_B0 ;
end NETLIST ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity qreg is
   port (
      clk : IN std_logic ;
      c1 : IN std_logic ;
      c2 : IN std_logic ;
      cin : IN std_logic ;
      ia : IN std_logic_vector (3 DOWNTO 0) ;
      q : OUT std_logic_vector (4 DOWNTO 0)) ;
end qreg ;

architecture INTERFACE of qreg is
   signal q_4_EXMPLR, q_3_EXMPLR, q_2_EXMPLR, q_1_EXMPLR, q_0_EXMPLR, nx8, 
      nx30, nx40, nx50, nx178, nx188, nx198, nx208, nx218, nx241, nx243, 
      nx250, nx252: std_logic ;

begin
   q(4) <= q_4_EXMPLR ;
   q(3) <= q_3_EXMPLR ;
   q(2) <= q_2_EXMPLR ;
   q(1) <= q_1_EXMPLR ;
   q(0) <= q_0_EXMPLR ;
   reg_q_0 : dff port map ( Q=>q_0_EXMPLR, QB=>OPEN, D=>nx218, CLK=>clk);
   ix219 : ao32 port map ( Y=>nx218, A0=>c1, A1=>q_1_EXMPLR, A2=>nx250, B0=>
      q_0_EXMPLR, B1=>nx252);
   reg_q_1 : dff port map ( Q=>q_1_EXMPLR, QB=>OPEN, D=>nx208, CLK=>clk);
   ix209 : mux21_ni port map ( Y=>nx208, A0=>q_1_EXMPLR, A1=>nx50, S0=>nx8);
   ix51 : mux21_ni port map ( Y=>nx50, A0=>ia(0), A1=>q_2_EXMPLR, S0=>c1);
   reg_q_2 : dff port map ( Q=>q_2_EXMPLR, QB=>OPEN, D=>nx198, CLK=>clk);
   ix199 : mux21_ni port map ( Y=>nx198, A0=>q_2_EXMPLR, A1=>nx40, S0=>nx8);
   ix41 : mux21_ni port map ( Y=>nx40, A0=>ia(1), A1=>q_3_EXMPLR, S0=>c1);
   reg_q_3 : dff port map ( Q=>q_3_EXMPLR, QB=>OPEN, D=>nx188, CLK=>clk);
   ix189 : mux21_ni port map ( Y=>nx188, A0=>q_3_EXMPLR, A1=>nx30, S0=>nx8);
   ix31 : mux21_ni port map ( Y=>nx30, A0=>ia(2), A1=>q_4_EXMPLR, S0=>c1);
   reg_q_4 : dff port map ( Q=>q_4_EXMPLR, QB=>OPEN, D=>nx178, CLK=>clk);
   ix179 : mux21_ni port map ( Y=>nx178, A0=>ia(3), A1=>q_4_EXMPLR, S0=>
      nx241);
   ix242 : nand02_2x port map ( Y=>nx241, A0=>c2, A1=>nx243);
   ix244 : inv02 port map ( Y=>nx243, A=>c1);
   ix9 : oai21 port map ( Y=>nx8, A0=>c2, A1=>nx243, B0=>nx241);
   ix251 : inv02 port map ( Y=>nx250, A=>c2);
   ix253 : inv02 port map ( Y=>nx252, A=>nx8);
end INTERFACE ;

