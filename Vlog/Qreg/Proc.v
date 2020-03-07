//
// Verilog description for cell qreg, 
// Sat Mar  7 18:42:45 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module qreg ( clk, c1, c2, cin, ia, q, q0, q1 ) ;

    input clk ;
    input c1 ;
    input c2 ;
    input cin ;
    input [3:0]ia ;
    output [4:0]q ;
    output q0 ;
    output q1 ;

    wire nx8, nx30, nx40, nx50, nx178, nx188, nx198, nx208, nx218, nx241, nx243, 
         nx250, nx252;
    wire [4:0] \$dummy ;




    assign q0 = q[0] ;
    assign q1 = q[1] ;
    dff reg_q_0 (.Q (q[0]), .QB (\$dummy [0]), .D (nx218), .CLK (clk)) ;
    ao32 ix219 (.Y (nx218), .A0 (c1), .A1 (q[1]), .A2 (nx250), .B0 (q[0]), .B1 (
         nx252)) ;
    dff reg_q_1 (.Q (q[1]), .QB (\$dummy [1]), .D (nx208), .CLK (clk)) ;
    mux21_ni ix209 (.Y (nx208), .A0 (q[1]), .A1 (nx50), .S0 (nx8)) ;
    mux21_ni ix51 (.Y (nx50), .A0 (ia[0]), .A1 (q[2]), .S0 (c1)) ;
    dff reg_q_2 (.Q (q[2]), .QB (\$dummy [2]), .D (nx198), .CLK (clk)) ;
    mux21_ni ix199 (.Y (nx198), .A0 (q[2]), .A1 (nx40), .S0 (nx8)) ;
    mux21_ni ix41 (.Y (nx40), .A0 (ia[1]), .A1 (q[3]), .S0 (c1)) ;
    dff reg_q_3 (.Q (q[3]), .QB (\$dummy [3]), .D (nx188), .CLK (clk)) ;
    mux21_ni ix189 (.Y (nx188), .A0 (q[3]), .A1 (nx30), .S0 (nx8)) ;
    mux21_ni ix31 (.Y (nx30), .A0 (ia[2]), .A1 (q[4]), .S0 (c1)) ;
    dff reg_q_4 (.Q (q[4]), .QB (\$dummy [4]), .D (nx178), .CLK (clk)) ;
    mux21_ni ix179 (.Y (nx178), .A0 (ia[3]), .A1 (q[4]), .S0 (nx241)) ;
    nand02_2x ix242 (.Y (nx241), .A0 (c2), .A1 (nx243)) ;
    inv02 ix244 (.Y (nx243), .A (c1)) ;
    oai21 ix9 (.Y (nx8), .A0 (c2), .A1 (nx243), .B0 (nx241)) ;
    inv02 ix251 (.Y (nx250), .A (c2)) ;
    inv02 ix253 (.Y (nx252), .A (nx8)) ;
endmodule
