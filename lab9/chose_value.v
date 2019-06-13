module choose_value(final1,final2,final3,final4,s1,s2,s3,s4,x1,x2,y1,y2,state);
input [3:0] s1,s2,s3,s4,x1,x2,y1,y2;
input [3:0] state;
output [3:0] final1,final2,final3,final4;
reg [3:0]final1,final2;
reg [3:0] flash1,flash2,final3,final4;
always @(*) begin
	case(state)
	0,6,7:
	begin
		{final2,final1} = {x2,x1};	
	end
	1,4,5:
	begin
		{final2,final1} = {y2,y1};
	end
	2:
	begin
		{final2,final1} = {s2,s1};
	end
	3:
	begin
		{final2,final1} = {s4,s3};
	end
	endcase
end

always @(*)
	begin
		if(state == 5 && state ==7) flash1 = 1;
		else if(state == 4 && state ==6) flash2 = 1;
		else
		begin
		flash1 = 0;
		flash2 = 0;
		end
		if(state == 3 || state == 2)begin
			if({x2 ,x1}<{y2,y1}) final3 = 14;
		end else final3 = 15;
		if({x2 ,x1}<{y2,y1}) final3 = 14;
		if(state ==0) final4 = 10;
		else if(state == 1) final4 =11;
		else if(state == 2) final4 =12;
		else if(state ==3) final4 =13;
	end
endmodule
