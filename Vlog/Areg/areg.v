module areg(clk,c1,c2, ia, q, q0);
input	clk,c1,c2;
input   [3:0]  ia;
output	[3:0]	q;
output  q0;
reg	[3:0]	q;
	
	assign q0 = q[0];


	parameter	Hold=2'b00, Load=2'b01, Shift=2'b10, Reset=2'b11;
	
	always @( posedge clk)
	begin

		case({c1,c2})
		Load: q=ia;
		Shift: q={q[3],q}>>1;
		Hold: ;
		Reset: q=1'b0000;
		endcase
	end

endmodule
