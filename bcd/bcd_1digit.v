module bcd_1digit(num, co, en, clk, rst_n);
	output [3:0] num;
	output co;
	input clk, rst_n, en;
	reg [3:0]num;
	wire [3:0]next_num;
	assign co = (num == 9)? 1:0;
	assign next_num = en?((num==9)? 0:num+1):num;
	always @(posedge clk or negedge rst_n) begin
		num <= (!rst_n)? 0:next_num;
	end
endmodule

