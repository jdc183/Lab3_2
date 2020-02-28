module alu(c, ia, ib, sum, cout);
input	c;
input   [3:0]  ia, ib;
output	[3:0]	sum;
reg	[3:0]	sum;
output   cout;
reg   cout;


	parameter	Add=1'b0, Sub=1'b1;

	always @(c or ia or ib)
	begin
		case(c)
			Add: {cout,sum} = ia + ib;
			Sub: {cout,sum} = ~ia + ib + 4'b0001;
		endcase
	end

endmodule
