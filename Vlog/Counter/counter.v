//Creates a counter that goes high when it has run 4 sucessful sessions

module counter(c, out, start);
input	c, start;
output	out;
reg	[1:0] count;
assign out = count[0] && count[1];
always @(posedge start or posedge c)
begin
    if(c == 1'b1)
	begin
		if(count == 2'b11)
			begin
				count = 2'b00;
			end
		else
			count = count + 2'b01;
	end
    else if(start == 1'b1)//resets state of register on input of start signal
	begin
		count = 2'b00;
	end
	
end

endmodule/*

always @(posedge c)
begin
	count = count + 2'b01;
	if (count == 2'b11) out = 1'b1;
	else out = 1'b0;
end
endmodule*/
