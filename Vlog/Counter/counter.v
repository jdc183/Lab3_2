//Creates a counter that goes high when it has run 4 sucessful sessions

module counter(c, out, start);
input	c, start;
output	out;
reg	[1:0] count;
reg out;

always @(posedge start, posedge c)
begin
    if(start == 1)//resets state of register on input of start signal
	begin
		count = 2'b00;
		out = 0;
	end
    if(c == 1)
	begin
		if(count == 2'b11)
			begin
				count = 2'b00;
				out = 1;
			end
		else
			count = count + 2'b01;
	end
	
end

endmodule
