module fa_4bit(S, C_out, A, B, C_in);
	output [3:0]S;
	output C_out;
	input [3:0] A, B;
	input C_in;
	wire [2:0] C;
	fa_1bit a0(S[0],C[0],A[0],B[0],C_in);
	fa_1bit a1(S[1],C[1],A[1],B[1],C[0]);
	fa_1bit a2(S[2],C[2],A[2],B[2],C[1]);
	fa_1bit a3(S[3],C_out,A[3],B[3],C[2]);
	endmodule
