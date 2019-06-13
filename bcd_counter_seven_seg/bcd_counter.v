module bcd_counter (rst_n,clk,btn1,btn2,oSEG7,oSEG71,oSEG72);
	input rst_n,clk,btn1,btn2;
	output [6:0] oSEG7,oSEG71,oSEG72;
 	wire [3:0]num2,num1,num0;
	wire [6:0]oSEG7,oSEG71,oSEG72;
	wire btn1,btn2;
	wire clk_24,rst_n;
	bcd_3digit M0 (num2,num1,num0,btn1,btn2,clk_24,rst_n);
	seven_seg S0 (oSEG7,oSEG71,oSEG72,num2,num1,num0);
	clk_div C0 (clk_24,clk,rst_n);
endmodule
