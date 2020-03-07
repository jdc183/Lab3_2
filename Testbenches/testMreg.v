module testMreg(); 
	reg clk, c1;
	reg [3:0] ia;
	wire [3:0] q;


	mreg dut(.clk(clk), .c1(c1), .ia(ia), .q(q));


	initial 
	begin
		ia = 4'b0000;
		c1 = 1;
		#10;
		ia = 4'b1111;
		c1 = 0;
		#10;
		c1 = 1;
		#10;
	end
	
	always 
	begin
		clk = 0;
		#5;
		clk = 1;
		#5;
	end
endmodule

