module clk_div(clk_22,clk,rst_n);
        output  clk_22;
	input clk,rst_n;
	wire [31:0] next_num;
        reg [31:0] num;
	assign next_num=num+1;
	assign clk_22=num[21];
	always@(posedge clk or negedge rst_n)begin
		num<=(!rst_n)?0:next_num;	
	end
endmodule

