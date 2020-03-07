module mreg(clk,c1, ia, q);
input	clk,c1;
input   [3:0]  ia;
output	[3:0]	q;
reg	[3:0]	q;



	parameter	Hold=1'b0, Load=1'b1;
	
	always @( posedge clk)
	begin

		case({c1})
		Hold: ;
		Load: q=ia;
		endcase
	end

endmodule
