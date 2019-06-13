module bcd_counter (rst_n,clk,btn1,btn2,oSEG7,oSEG71);
	input rst_n,clk,btn1,btn2;
	output [6:0] oSEG7,oSEG71;
 	wire [3:0]num1,num0;
	wire [6:0]oSEG7,oSEG71;
	wire btn1,btn2,sp_btn1,sp_btn2;
	wire rst_n;
	reg en1,en2;
	debouncing D0 (sp_btn1,rst_n,clk,btn1);
	debouncing D1 (sp_btn2,rst_n,clk,btn2);
	always@(sp_btn1 or sp_btn2)
	begin
	en1<=sp_btn1&&sp_btn2;
	en2<=sp_btn2;
	end 
	bcd_3digit B0 (num1,num0,en1,en2,clk,rst_n);
	seven_seg S0 (oSEG7,oSEG71,num1,num0);
endmodule
