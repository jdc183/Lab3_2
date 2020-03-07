module testAreg(); 
	reg clk, c1, c2;
	reg [3:0] ia;
	wire [3:0] q;


	areg dut(.clk(clk), .c1(c1), .c2(c2), .ia(ia), .q(q));


	initial 
	begin
		//Test Load
		ia = 4'b0000;
		c1 = 0;
		c2 = 1;
		#10;
		//Test Hold
		ia = 4'b1111;
		c1 = 0;
		c2 = 0;
		#10;
		//Test Load
		c1 = 0;
		c2 = 1;
		#10
		//Test Reset
		c1 = 1;
		c2 = 1;
		#10;
		//Test Load
		ia = 4'b1010;
		c1 = 0;
		c2 = 1;
		#10;
		//Test Shift
		c1 = 1;
		c2 = 0;
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

