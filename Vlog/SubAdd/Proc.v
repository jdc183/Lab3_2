//
// Verilog description for cell alu, 
// Sat Mar  7 17:56:17 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module alu ( c, ia, ib, sum, cout ) ;

    input c ;
    input [3:0]ia ;
    input [3:0]ib ;
    output [3:0]sum ;
    output cout ;

    wire nx8, nx16, nx26, nx36, nx38, nx42, nx44, nx58, nx62, nx64, nx78, nx82, 
         nx84, nx102, nx108, nx110, nx118, nx122, nx126, nx142, nx197, nx199, 
         nx201, nx206, nx213, nx216, nx222, nx224, nx227, nx230, nx236, nx239, 
         nx242, nx246, nx248, nx255, nx257;



    xor2 ix153 (.Y (sum[0]), .A0 (ia[0]), .A1 (ib[0])) ;
    xnor2 ix151 (.Y (sum[1]), .A0 (nx197), .A1 (nx84)) ;
    mux21_ni ix198 (.Y (nx197), .A0 (nx199), .A1 (nx257), .S0 (nx110)) ;
    nand02_2x ix200 (.Y (nx199), .A0 (ib[0]), .A1 (nx257)) ;
    inv02 ix202 (.Y (nx201), .A (c)) ;
    xnor2 ix111 (.Y (nx110), .A0 (nx108), .A1 (nx199)) ;
    ao21 ix109 (.Y (nx108), .A0 (nx257), .A1 (ia[0]), .B0 (nx102)) ;
    nor03 ix103 (.Y (nx102), .A0 (nx206), .A1 (nx257), .A2 (nx255)) ;
    nor02ii ix207 (.Y (nx206), .A0 (ib[0]), .A1 (ia[0])) ;
    nor02ii ix27 (.Y (nx26), .A0 (ia[0]), .A1 (ib[0])) ;
    xnor2 ix85 (.Y (nx84), .A0 (nx82), .A1 (nx213)) ;
    mux21_ni ix83 (.Y (nx82), .A0 (ia[1]), .A1 (nx78), .S0 (c)) ;
    xor2 ix79 (.Y (nx78), .A0 (nx255), .A1 (nx16)) ;
    xnor2 ix17 (.Y (nx16), .A0 (ib[1]), .A1 (ia[1])) ;
    nand02_2x ix214 (.Y (nx213), .A0 (ib[1]), .A1 (nx257)) ;
    xnor2 ix149 (.Y (sum[2]), .A0 (nx216), .A1 (nx64)) ;
    aoi32 ix217 (.Y (nx216), .A0 (ib[1]), .A1 (nx257), .A2 (ia[1]), .B0 (nx118)
          , .B1 (nx84)) ;
    xnor2 ix65 (.Y (nx64), .A0 (nx62), .A1 (nx227)) ;
    mux21_ni ix63 (.Y (nx62), .A0 (ia[2]), .A1 (nx58), .S0 (c)) ;
    xnor2 ix59 (.Y (nx58), .A0 (nx222), .A1 (nx8)) ;
    aoi22 ix223 (.Y (nx222), .A0 (nx224), .A1 (ib[1]), .B0 (nx255), .B1 (nx16)
          ) ;
    inv02 ix225 (.Y (nx224), .A (ia[1])) ;
    xnor2 ix9 (.Y (nx8), .A0 (ib[2]), .A1 (ia[2])) ;
    nand02_2x ix228 (.Y (nx227), .A0 (ib[2]), .A1 (nx257)) ;
    xnor2 ix147 (.Y (sum[3]), .A0 (nx230), .A1 (nx44)) ;
    aoi32 ix231 (.Y (nx230), .A0 (ib[2]), .A1 (nx201), .A2 (ia[2]), .B0 (nx122)
          , .B1 (nx64)) ;
    xnor2 ix45 (.Y (nx44), .A0 (nx42), .A1 (nx239)) ;
    mux21_ni ix43 (.Y (nx42), .A0 (ia[3]), .A1 (nx38), .S0 (c)) ;
    xnor2 ix39 (.Y (nx38), .A0 (nx236), .A1 (nx36)) ;
    mux21_ni ix237 (.Y (nx236), .A0 (ia[2]), .A1 (nx222), .S0 (nx8)) ;
    xnor2 ix37 (.Y (nx36), .A0 (ib[3]), .A1 (ia[3])) ;
    nand02_2x ix240 (.Y (nx239), .A0 (ib[3]), .A1 (nx201)) ;
    xnor2 ix145 (.Y (cout), .A0 (nx242), .A1 (nx142)) ;
    aoi32 ix243 (.Y (nx242), .A0 (ib[3]), .A1 (nx201), .A2 (ia[3]), .B0 (nx126)
          , .B1 (nx44)) ;
    aoi22 ix247 (.Y (nx246), .A0 (ia[3]), .A1 (nx248), .B0 (nx236), .B1 (nx36)
          ) ;
    inv02 ix249 (.Y (nx248), .A (ib[3])) ;
    inv02 ix127 (.Y (nx126), .A (nx230)) ;
    inv02 ix123 (.Y (nx122), .A (nx216)) ;
    inv02 ix119 (.Y (nx118), .A (nx197)) ;
    buf02 ix254 (.Y (nx255), .A (nx26)) ;
    inv02 ix256 (.Y (nx257), .A (c)) ;
    nor02ii ix143 (.Y (nx142), .A0 (nx246), .A1 (c)) ;
endmodule


