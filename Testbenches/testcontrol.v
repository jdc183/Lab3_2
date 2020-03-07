module testMreg(); 
	reg clk,c1,c2,start;
	wire q1,q2,a1,a2,m1,alu,count;


	control dut(.clk(clk), .c1(c1), .c2(c2), .start(start), .q1(q1), .q2(q2), .a1(a1), .a2(a2), .m1(m1), .alu(alu), .count(count));


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

