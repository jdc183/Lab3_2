module testMreg(); 
	reg c;
	reg [3:0] ia. ib;
	wire cout;
	wire [3:0] sum;


	alu dut(.c(c), .ia(ia), .ib(ib), .sum(sum), .cout(cout));


	initial 
	begin
		//Test Add
		ia = 4'b0000;
		ib = 4'b1111;
		c = 0;
		#10;
		//Test Add
		ia = 4'b0101;
		ib = 4'b0101;
		c = 0;
		#10;
		//Test Sub
		ia = 4'b0001;
		ib = 4'b1000;
		c = 1;
		#10;
		//Test Sub
		ia = 4'b0101;
		ib = 4'b0101;
		c = 1;
		#10;
	end
	
endmodule

