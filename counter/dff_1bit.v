module dff_1bit(Q, D, clk, rst_n);
	input D,clk,rst_n;
	output Q;
	reg Q;
	always@(posedge clk or negedge rst_n) begin
		Q <= (!rst_n)? 0:D;
	end
endmodule

