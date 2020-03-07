//
// Verilog description for cell mreg, 
// Sat Mar  7 17:52:09 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module mreg ( clk, c1, ia, q ) ;

    input clk ;
    input c1 ;
    input [3:0]ia ;
    output [3:0]q ;

    wire nx127, nx137, nx147, nx157;
    wire [3:0] \$dummy ;




    dff reg_q_0 (.Q (q[0]), .QB (\$dummy [0]), .D (nx127), .CLK (clk)) ;
    mux21_ni ix128 (.Y (nx127), .A0 (q[0]), .A1 (ia[0]), .S0 (c1)) ;
    dff reg_q_1 (.Q (q[1]), .QB (\$dummy [1]), .D (nx137), .CLK (clk)) ;
    mux21_ni ix138 (.Y (nx137), .A0 (q[1]), .A1 (ia[1]), .S0 (c1)) ;
    dff reg_q_2 (.Q (q[2]), .QB (\$dummy [2]), .D (nx147), .CLK (clk)) ;
    mux21_ni ix148 (.Y (nx147), .A0 (q[2]), .A1 (ia[2]), .S0 (c1)) ;
    dff reg_q_3 (.Q (q[3]), .QB (\$dummy [3]), .D (nx157), .CLK (clk)) ;
    mux21_ni ix158 (.Y (nx157), .A0 (q[3]), .A1 (ia[3]), .S0 (c1)) ;
endmodule

