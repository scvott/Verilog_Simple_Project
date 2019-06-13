module ALU (state ,neg,A0,A1,S0,S1,X0,X1,Y0,Y1,clk,rst_n);
input [3:0] state,X0,X1,Y0,Y1;
output [3:0] A0,A1,S0,S1,neg;
input clk,rst_n;
reg c,d;
reg[4:0]A0,A1,S0,S1,neg;

always @(posedge clk or negedge rst_n)
begin
	if (!rst_n)
	begin
		c<=0;
		d<=0;
		neg<=15;
	end
	else
	begin 
	if (state==2)
	begin 
	   A0=X0+Y0;
		A1 =X1+Y1+c;
		if(A0>=10)
		begin 
		A0 <=A0-10;
		c <=1;
		end
		else c<=0;
		if(A1>=10)
		begin
		A1<=A1-10;
		neg<=1;
		end
	end
	else if (state==3)
		begin 
		neg<=15;
		if ({X1,X0}<{Y1,Y0})
			begin
				neg <=14;
				S1 <=Y1-X1-d;
				if (Y0>=X0)
				begin 
				S0<=Y0-X0;
				d<=0;
				end 
				else 
				begin
					S0<=(Y0+10)-X0;
					d<=1;
				end
			end
		else 
			begin
				neg <=15;
				S1 <=X1-Y1-d;
				if (X0>=Y0)
				begin 
				S0<=X0-Y0;
				d<=0;
				end 
				else 
				begin
					S0<=(X0+10)-Y0;
					d<=1;
				end
			end
	end
	else neg<=15;
	end
	
end
endmodule 