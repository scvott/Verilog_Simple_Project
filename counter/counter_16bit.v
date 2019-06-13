module counter_16bit(num, clk, rst_n);
	output [15:0] num;
	input clk, rst_n;
	wire [15:0] next_num;
        wire [15:0] Q,D;
        dff_16bit D0 (Q, D, clk, rst_n);
	assign D = Q + 1;
	assign num = D; 
endmodule

