
-- 
-- Definition of  control
-- 
--      Sat Mar  7 16:38:48 2020
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

entity aoi21 is
   port (
      Y : OUT std_logic ;
      A0 : IN std_logic ;
      A1 : IN std_logic ;
      B0 : IN std_logic) ;
end aoi21 ;

architecture NETLIST of aoi21 is
   signal NOT_A1, NOT_B0, nx4, NOT_A0, nx8: std_logic ;

begin
   NOT_A1 <= NOT A1 ;
   NOT_B0 <= NOT B0 ;
   nx4 <= NOT_A1 AND NOT_B0 ;
   NOT_A0 <= NOT A0 ;
   nx8 <= NOT_A0 AND NOT_B0 ;
   Y <= nx4 OR nx8 ;
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

entity latch is
   port (
      Q : OUT std_logic ;
      D : IN std_logic ;
      CLK : IN std_logic) ;
end latch ;

architecture NETLIST of latch is
   procedure DLATCHPC (
      constant data  : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant gate   : in std_logic;
      signal q        : out std_logic)
   is begin
       assert (gate /= 'Z')
           report "On dlatchpc : Found high-Z ('Z') on enable gate"
           severity error ;
   
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (gate = '1') then
           q <= data ;
       end if;
       if ((preset/='1' or clear/='1') and gate/='0' and gate/='1') then
           q <= 'X' ;
       end if ;
   end DLATCHPC ;
   signal nx2, nx4: std_logic ;

begin
   DLATCHPC (D,nx4,nx2,CLK,Q) ;
   nx2 <= '0' ;
   nx4 <= '0' ;
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

entity control is
   port (
      clk : IN std_logic ;
      c1 : IN std_logic ;
      c2 : IN std_logic ;
      start : IN std_logic ;
      q1 : OUT std_logic ;
      q2 : OUT std_logic ;
      a1 : OUT std_logic ;
      a2 : OUT std_logic ;
      m1 : OUT std_logic ;
      alu : OUT std_logic ;
      count : OUT std_logic) ;
end control ;

architecture INTERFACE of control is
   signal a1_EXMPLR, a2_EXMPLR, m1_EXMPLR, PS_0, nx0, PS_1, nx12, nx26, nx30, 
      nx206, nx208, nx210: std_logic ;

begin
   q2 <= m1_EXMPLR ;
   a1 <= a1_EXMPLR ;
   a2 <= a2_EXMPLR ;
   m1 <= m1_EXMPLR ;
   reg_PS_1 : dff port map ( Q=>PS_1, QB=>nx208, D=>nx12, CLK=>clk);
   ix13 : nor02ii port map ( Y=>nx12, A0=>a1_EXMPLR, A1=>start);
   ix9 : ao21 port map ( Y=>a1_EXMPLR, A0=>PS_1, A1=>PS_0, B0=>m1_EXMPLR);
   ix31 : nor02ii port map ( Y=>nx30, A0=>nx26, A1=>start);
   ix27 : nor03 port map ( Y=>nx26, A0=>nx0, A1=>PS_1, A2=>nx206);
   ix1 : xnor2 port map ( Y=>nx0, A0=>c2, A1=>c1);
   reg_PS_0 : dff port map ( Q=>PS_0, QB=>nx206, D=>nx30, CLK=>clk);
   ix43 : aoi21 port map ( Y=>a2_EXMPLR, A0=>nx208, A1=>nx210, B0=>PS_0);
   ix211 : inv02 port map ( Y=>nx210, A=>start);
   lat_count : latch port map ( Q=>count, D=>PS_1, CLK=>PS_0);
   lat_alu : latch port map ( Q=>alu, D=>c1, CLK=>nx26);
   ix7 : nor02ii port map ( Y=>m1_EXMPLR, A0=>PS_1, A1=>a2_EXMPLR);
   ix3 : nor02_2x port map ( Y=>q1, A0=>nx208, A1=>nx206);
end INTERFACE ;

