module counter_4bit(num, clk, rst_n);
	output [3:0] num;
	input clk, rst_n;
	wire [3:0] next_num;
	wire C_out, C_in;
	wire [3:0] A,B,S,Q,D;
	fa_4bit F0 (S, C_out, Q, 4'b0001, 1'b0);
	dff_1bit D0 (Q[0], S[0], clk, rst_n);
	dff_1bit D1 (Q[1], S[1], clk, rst_n);
	dff_1bit D2 (Q[2], S[2], clk, rst_n);
	dff_1bit D3 (Q[3], S[3], clk, rst_n);
	assign num = Q;	
endmodule

