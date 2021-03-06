module control(clk,c1,c2,countin,start,q1,q2,a1,a2,m1,alu, count);
input	clk,c1,c2,start,countin; //c1 and c2 are q0 and q-1. start is the idle to on state. Countin goes high when the correct number of iteration have occured 
output	q1,q2,a1,a2,m1, alu,count; //q1 & q1 are ci and c2 for qregister and so on. 
reg[1:0] PS,NS;
reg q1,q2,a1,a2,m1, alu,count;
	//need to define state parameter and PS AND NS

	parameter	Add=2'b01, Sub=2'b10, None1=2'b00, None2=2'b11, S0=2'b00, S1=2'b01,S2=2'b10,S3=2'b11;

	always @(c1 or c2 or start)
	begin
	
	case ({PS})
	    S0: 
	    begin
		    if(start == 0 or countin == 1) //If no start, hold
	      begin
		NS = S0;
		q1 = 1'b0;
		q2 = 1'b0;
		a1 = 1'b0;
		a2 = 1'b0;
		m1 = 1'b0;
	      end
	      else
	      begin	//If start, load all registers
		NS = S1;
		q1 = 1'b0;
		q2 = 1'b1;
		a1 = 1'b1;
		a2 = 1'b1;
		m1 = 1'b1;
		
	      end
	    end
	    
	    S1://interpret c1 and c2 to determine addition or subtraction
	    begin

	       case({c1,c2})
	       Add: begin
			alu = 1'b0;
			NS = S2;
		end
	       Sub: begin
	       		alu = 1'b1;
	       		NS = S2;
	       end
	       None1: NS = S3;
	       None2: NS = S3;
	       endcase
	       
	       q1 = 1'b0;
	       q2 = 1'b0;
	       a1 = 1'b0;
	       a2 = 1'b0;
	       m1 = 1'b0;
	       count = 1'b0;
		  
	     end
	     S2: //Load A
	     begin
	     	q1 = 1'b0;
	     	q2 = 1'b0;
	     	a1 = 1'b0;
	     	a2 = 1'b1;
	     	m1 = 1'b0;
	     	NS = S3;
	     end
	     S3: //Shift
	     begin
	       q1 = 1'b1;
	       q2 = 1'b0;
	       a1 = 1'b1;
	       a2 = 1'b0;
	       m1 = 1'b0;
	       count = 1'b1;
	       
	       //increment counter
	       
	       //next state
	       NS=S1;
	     end
	     
	endcase
	end
	always @( posedge clk)
	begin
		PS = NS;
		if(start == 0 or countin == 0)
		begin
			PS = S0;
		end
	end

endmodule
