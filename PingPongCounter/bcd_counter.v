module bcd_counter (rst_n,clk,btn1,btn2,oSEG7,oSEG71,oSEG72,oSEG73);
	input rst_n,clk,btn1,btn2;
	output [6:0] oSEG7,oSEG71,oSEG72,oSEG73;
 	wire [3:0]u1,u0,d1,d0;
	wire [6:0]oSEG7,oSEG71,oSEG72,oSEG73;
	wire btn1,btn2,sp_btn1,sp_btn2;
	wire rst_n,clk_22;
	reg en1,en2;
	clk_div S1 (clk_22,clk,rst_n);
	debouncing D0 (sp_btn1,rst_n,clk,btn1);
	debouncing D1 (sp_btn2,rst_n,clk,btn2);
	bcd_3digit B0 (u1,u0,en1,en2,clk,rst_n);
	always@(sp_btn1 or sp_btn2)
	begin
	en1<=sp_btn1&&sp_btn2;
	en2<=sp_btn2;
	end 
	ping_pong_counter P0 ( clk_22,rst_n,d0,d1,u0,u1);
	seven_seg S0 (oSEG7,oSEG71,oSEG72,oSEG73,u1,u0,d1,d0);
endmodule
