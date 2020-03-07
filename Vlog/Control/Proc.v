//
// Verilog description for cell control, 
// Sat Mar  7 16:38:48 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module control ( clk, c1, c2, start, q1, q2, a1, a2, m1, alu, count ) ;

    input clk ;
    input c1 ;
    input c2 ;
    input start ;
    output q1 ;
    output q2 ;
    output a1 ;
    output a2 ;
    output m1 ;
    output alu ;
    output count ;

    wire PS_0, nx0, PS_1, nx12, nx26, nx30, nx206, nx208, nx210;



    assign m1 = q2 ;
    dff reg_PS_1 (.Q (PS_1), .QB (nx208), .D (nx12), .CLK (clk)) ;
    nor02ii ix13 (.Y (nx12), .A0 (a1), .A1 (start)) ;
    ao21 ix9 (.Y (a1), .A0 (PS_1), .A1 (PS_0), .B0 (q2)) ;
    nor02ii ix31 (.Y (nx30), .A0 (nx26), .A1 (start)) ;
    nor03 ix27 (.Y (nx26), .A0 (nx0), .A1 (PS_1), .A2 (nx206)) ;
    xnor2 ix1 (.Y (nx0), .A0 (c2), .A1 (c1)) ;
    dff reg_PS_0 (.Q (PS_0), .QB (nx206), .D (nx30), .CLK (clk)) ;
    aoi21 ix43 (.Y (a2), .A0 (nx208), .A1 (nx210), .B0 (PS_0)) ;
    inv02 ix211 (.Y (nx210), .A (start)) ;
    latch lat_count (.Q (count), .D (PS_1), .CLK (PS_0)) ;
    latch lat_alu (.Q (alu), .D (c1), .CLK (nx26)) ;
    nor02ii ix7 (.Y (q2), .A0 (PS_1), .A1 (a2)) ;
    nor02_2x ix3 (.Y (q1), .A0 (nx208), .A1 (nx206)) ;
endmodule

