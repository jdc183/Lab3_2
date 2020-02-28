module qreg(clk,c1,c2, cin, ia, q);
input	clk,c1,c2,cin;
input   [3:0]  ia;
output	[4:0]	q;
reg	[4:0]	q;



	parameter	Hold=2'b00, Load=2'b01, Shift=2'b10;
	
	always @( posedge clk)
	begin

		case({c1,c2})
		Load: q={ia,1'b0};
		Shift: q={cin,{q[4],q}>>1};
		Hold: ;
		endcase
	end

endmodule

