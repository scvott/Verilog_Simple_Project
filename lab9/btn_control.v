module btn_control (clk,state, long, short,rst_n);
input long ,short,clk,rst_n;
output [3:0]state;
reg [3:0]state,next_state;
always @(state or long or short) begin
	case (state)
	0:
	begin 
		if(long == 0)begin 
			next_state = 6;
		end else if (short == 0)begin
			next_state = 1;
		end else next_state = state;
	end
	1:
	begin
                if(long == 0)begin
                        next_state = 4;
                end else if (short == 0)begin
                        next_state = 2;
                end else next_state = state;
	end
	2:
	begin
                if(long == 0)begin
                        next_state = 2;
                end else if (short == 0)begin
                        next_state = 3;
                end else next_state = state;
	end
	3:
	begin
		if(long ==0)begin
                        next_state = 3;
                end else if (short == 0)begin
                        next_state = 0;
                end else next_state = state;
	end
	4:
	begin
		if(long == 0)begin
                        next_state = 5;
                end else if (short == 0)begin
                        next_state = 2;
                end else next_state = state;
	end
	5:
	begin
                if(long == 0)begin
                        next_state = 1;
                end else if (short == 0)begin
                        next_state = 2;
                end else next_state = state;
	end
	6:
	begin
                if(long == 0)begin
                        next_state = 7;
                end else if (short == 0)begin
                        next_state = 1;
                end else next_state = state;
	end
	7:
	begin

                if(long == 0)begin
                        next_state = 0;
                end else if (short == 0)begin
                        next_state = 1;
                end else next_state = state;
	end

	endcase
end

always@(posedge clk or negedge rst_n )begin
	if(!rst_n) state <= 0;
	else state <= next_state;
end

endmodule
