//
// Verilog description for cell mreg, 
// Fri Feb 28 13:33:14 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module mreg ( clk, c1, ia, q ) ;

    input clk ;
    input c1 ;
    input [3:0]ia ;
    output [3:0]q ;

    wire nx115, nx125, nx135, nx145;
    wire [3:0] \$dummy ;




    dff reg_q_0 (.Q (q[0]), .QB (\$dummy [0]), .D (nx115), .CLK (clk)) ;
    mux21_ni ix116 (.Y (nx115), .A0 (q[0]), .A1 (ia[0]), .S0 (c1)) ;
    dff reg_q_1 (.Q (q[1]), .QB (\$dummy [1]), .D (nx125), .CLK (clk)) ;
    mux21_ni ix126 (.Y (nx125), .A0 (q[1]), .A1 (ia[1]), .S0 (c1)) ;
    dff reg_q_2 (.Q (q[2]), .QB (\$dummy [2]), .D (nx135), .CLK (clk)) ;
    mux21_ni ix136 (.Y (nx135), .A0 (q[2]), .A1 (ia[2]), .S0 (c1)) ;
    dff reg_q_3 (.Q (q[3]), .QB (\$dummy [3]), .D (nx145), .CLK (clk)) ;
    mux21_ni ix146 (.Y (nx145), .A0 (q[3]), .A1 (ia[3]), .S0 (c1)) ;
endmodule


