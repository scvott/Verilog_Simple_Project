module bcd_3digit(num2, num1, num0, en, clk, rst_n);
	input en,clk,rst_n;
	output[3:0] num1,num2,num0;
	wire [3:0] num1,num2,num0;
	wire co1,co2,co0,co;
	bcd_1digit A0 (num0, co0, en, clk, rst_n);
	bcd_1digit A1 (num1, co1, co0, clk, rst_n);
	bcd_1digit A2 (num2, co2,co , clk, rst_n);
	assign co = co1 && co0;
endmodule



