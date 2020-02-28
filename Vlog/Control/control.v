module control(clk,c1,c2,start,q1,q2,a1,a2,m1,alu1, count);
input	clk,c1,c2,start; //c1 and c2 are q0 and q-1. start is the idle to on state  
output	q1,q2,a1,a2,m1, alu1,count; //q1 & q1 are ci and c2 for qregister and so on. 

//need to define state parameter and PS AND NS

parameter	Add=2'b01, Sub=2'b10, None1=2'b00, None2=2'b11;

  always @(c1 or c2 or start)
  
  begin
    S0: 
    begin
      if(start == 0)
        NS = S0;
      else
        NS = S1;
    end
    
    S1:
    begin//setup code which brings registers to inital variables
      q1 = 0;
      q2 = 1;
      a1 = 1;
      a2 = 1;
      m1 = 1;
      NS = S2;
    end  
    
    S2://interpret c1 and c2 to determine addition or subtraction
    begin

       case({c1,c2})
       Add: alu = 0;
       Sub: alu = 1;
       None1: ;
       None2: ;
       endcase
       
       q1 = 0;
       q2 = 0;
       a1 = 0;
       a2 = 0;
       m1 = 0;
       NS=S3;
          
     end
     S3: //Shift
     begin
       q1 = 1;
       q2 = 0;
       a1 = 1;
       a2 = 0;
       m1 = 0;
       
       //increment counter
       
       //next state
       NS=S2;
       
     
     
     
     
     end
     
  end
	
	always @( posedge clk)
	begin
	end

endmodule
