//
// Verilog description for cell counter, 
// Sat Mar  7 17:46:05 2020
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module counter ( c, out, start ) ;

    input c ;
    output out ;
    input start ;

    wire nx69, nx0, nx4, nx18, nx20, nx84, nx86, nx91;
    wire [1:0] \$dummy ;




    fake_gnd ix70 (.Y (nx69)) ;
    ao21 ix85 (.Y (nx84), .A0 (nx86), .A1 (nx91), .B0 (out)) ;
    dffsr_ni reg_count_0 (.Q (\$dummy [0]), .QB (nx86), .D (nx69), .CLK (start)
             , .S (nx4), .R (nx0)) ;
    dffsr_ni reg_count_1 (.Q (\$dummy [1]), .QB (nx91), .D (nx69), .CLK (start)
             , .S (nx20), .R (nx18)) ;
    and02 ix19 (.Y (nx18), .A0 (c), .A1 (nx84)) ;
    nor02_2x ix25 (.Y (out), .A0 (nx91), .A1 (nx86)) ;
    nor02ii ix21 (.Y (nx20), .A0 (nx84), .A1 (c)) ;
    and02 ix5 (.Y (nx4), .A0 (c), .A1 (nx86)) ;
    nor02ii ix1 (.Y (nx0), .A0 (nx86), .A1 (c)) ;
endmodule

