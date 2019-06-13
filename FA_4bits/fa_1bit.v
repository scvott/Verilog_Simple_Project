module fa_1bit(S, C_out, A, B, C_in);
	output S, C_out;
	input A, B, C_in;
	wire w1,w2,w3;
	xor (w1,A,B);
	and (w2,A,B);
	and (w3,w1,C_in);
	xor (S,w1,C_in);
	or (C_out,w3,w2);
endmodule
