module fa_4bit(S, C_out, A, B, C_in);
	output [3:0]S;
	output C_out;
	input [3:0]A,B;
	input C_in;
	assign{C_out,S}=A+B+C_in;
endmodule
