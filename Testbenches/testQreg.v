module testMreg(); 
	reg clk, c1, c2, cin;
	reg [3:0] ia;
	wire [3:0] q;


	qreg dut(.clk(clk), .c1(c1), .c2(c2), .cin(cin), .ia(ia), .q(q));


	initial 
	begin
		//Test Load
		cin = 0; //for shift later
		ia = 4'b0000;
		c1 = 0;
		c2 = 1;
		#10;
		//Test Hold
		ia = 4'b1010;
		c1 = 0;
		c2 = 0;
		#10;
		//Test Load
		c1 = 0;
		c2 = 1;
		#10
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

