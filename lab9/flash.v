module flash (p0,p1,clk_22, X0,X1,Y0, Y1,A0,A1,S0,S1, state);
output [3:0] p0,p1;
input [3:0] state ;
input [6:0] X0, X1, Y0, Y1 ,S0,S1,A0,A1;
input clk_22;
reg [3:0]p0,p1;
always@(*)
begin 
	case(state)
		0:
		begin
		p0=X0;
		p1=X1; 
		end
		6:
		begin 
		p0=(clk_22)?15: X0;
		p1=X1;
		end
		7:
		begin 
		p0=X0;
		p1=( clk_22)?15:X1;
		end
		1:
		begin 
		p0=Y0;
		p1=Y1;
		end
		4:
		begin 
		p0=(clk_22)?15:Y0;
		p1=Y1;
		end
		5:
		begin 
		p0=Y0;
		p1=(clk_22 )?15:Y1;
		end
		2:
		begin 
		p0=A0;
		p1=A1;
		end
		3:
		begin 
		p0=S0;
		p1=S1;
		end

endcase
end
endmodule
