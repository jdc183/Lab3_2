//
// Verilog description for cell areg, 
// Sat Mar  7 18:38:07 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module areg ( clk, c1, c2, ia, q, q0 ) ;

    input clk ;
    input c1 ;
    input c2 ;
    input [3:0]ia ;
    output [3:0]q ;
    output q0 ;

    wire nx20, nx24, nx36, nx48, nx157, nx159, nx169, nx179, nx189, nx210, nx213, 
         nx217;
    wire [3:0] \$dummy ;




    assign q0 = q[0] ;
    dff reg_q_0 (.Q (q[0]), .QB (\$dummy [0]), .D (nx189), .CLK (clk)) ;
    mux21_ni ix190 (.Y (nx189), .A0 (nx48), .A1 (q[0]), .S0 (nx217)) ;
    ao32 ix49 (.Y (nx48), .A0 (q[1]), .A1 (nx210), .A2 (c1), .B0 (ia[0]), .B1 (
         nx20)) ;
    dff reg_q_1 (.Q (q[1]), .QB (\$dummy [1]), .D (nx179), .CLK (clk)) ;
    mux21_ni ix180 (.Y (nx179), .A0 (nx36), .A1 (q[1]), .S0 (nx217)) ;
    ao32 ix37 (.Y (nx36), .A0 (q[2]), .A1 (nx210), .A2 (c1), .B0 (ia[1]), .B1 (
         nx20)) ;
    dff reg_q_2 (.Q (q[2]), .QB (\$dummy [2]), .D (nx169), .CLK (clk)) ;
    mux21_ni ix170 (.Y (nx169), .A0 (nx24), .A1 (q[2]), .S0 (nx217)) ;
    ao32 ix25 (.Y (nx24), .A0 (q[3]), .A1 (nx210), .A2 (c1), .B0 (ia[2]), .B1 (
         nx20)) ;
    dff reg_q_3 (.Q (q[3]), .QB (\$dummy [3]), .D (nx159), .CLK (clk)) ;
    ao21 ix160 (.Y (nx159), .A0 (q[3]), .A1 (nx210), .B0 (nx157)) ;
    inv02 ix211 (.Y (nx210), .A (c2)) ;
    and03 ix158 (.Y (nx157), .A0 (ia[3]), .A1 (nx213), .A2 (c2)) ;
    inv02 ix214 (.Y (nx213), .A (c1)) ;
    nor02_2x ix21 (.Y (nx20), .A0 (c1), .A1 (nx217)) ;
    nor02_2x ix218 (.Y (nx217), .A0 (c2), .A1 (c1)) ;
endmodule

