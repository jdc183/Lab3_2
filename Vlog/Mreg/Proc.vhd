
-- 
-- Definition of  mreg
-- 
--      Sat Mar  7 17:52:09 2020
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

entity mreg is
   port (
      clk : IN std_logic ;
      c1 : IN std_logic ;
      ia : IN std_logic_vector (3 DOWNTO 0) ;
      q : OUT std_logic_vector (3 DOWNTO 0)) ;
end mreg ;

architecture INTERFACE of mreg is
   signal q_3_EXMPLR, q_2_EXMPLR, q_1_EXMPLR, q_0_EXMPLR, nx127, nx137, 
      nx147, nx157: std_logic ;

begin
   q(3) <= q_3_EXMPLR ;
   q(2) <= q_2_EXMPLR ;
   q(1) <= q_1_EXMPLR ;
   q(0) <= q_0_EXMPLR ;
   reg_q_0 : dff port map ( Q=>q_0_EXMPLR, QB=>OPEN, D=>nx127, CLK=>clk);
   ix128 : mux21_ni port map ( Y=>nx127, A0=>q_0_EXMPLR, A1=>ia(0), S0=>c1);
   reg_q_1 : dff port map ( Q=>q_1_EXMPLR, QB=>OPEN, D=>nx137, CLK=>clk);
   ix138 : mux21_ni port map ( Y=>nx137, A0=>q_1_EXMPLR, A1=>ia(1), S0=>c1);
   reg_q_2 : dff port map ( Q=>q_2_EXMPLR, QB=>OPEN, D=>nx147, CLK=>clk);
   ix148 : mux21_ni port map ( Y=>nx147, A0=>q_2_EXMPLR, A1=>ia(2), S0=>c1);
   reg_q_3 : dff port map ( Q=>q_3_EXMPLR, QB=>OPEN, D=>nx157, CLK=>clk);
   ix158 : mux21_ni port map ( Y=>nx157, A0=>q_3_EXMPLR, A1=>ia(3), S0=>c1);

end INTERFACE ;

