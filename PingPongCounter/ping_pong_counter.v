module ping_pong_counter(clk,rst_n,d0,d1,u0,u1);
	input clk,rst_n,u0,u1;
	output d0,d1;
	wire [3:0] u0,u1;
	wire [7:0]limit;
	reg [3:0] d0,d1,next_d0,next_d1;
	reg en,co0,s,state;
	assign limit = {u1,u0};
	always @(posedge clk or negedge rst_n )begin
		if (!rst_n) begin
			{d1,d0} <= 0;
		end else begin
			if ({d1,d0} == limit && state ==0)begin 
					state <= 1;
			end else  if ({d1,d0} == 0 && state ==1)begin
						state <= 0;
                        end
                        d0<=next_d0;
                        d1<=next_d1;
		end
			
	end
	always @(state)begin
		case(state)
		0:
		begin
			next_d0 <= (d0==9)?0:d0+1;
                        co0=(d0==9)? 1:0;
                        next_d1 = co0?((d1==9)?0:d1+1):d1;
			
		end
		1:
		begin
			next_d0 <= (d0==0)?9:d0-1;
                        co0=(d0==0)? 1:0;
                        next_d1 = co0?((d1==0)?9:d1-1):d1;
		end
		endcase
	end
endmodule
