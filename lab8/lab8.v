module lab8(btn, clk, rst_n, oSEG7);
	input btn, clk, rst_n;
	output [6:0]oSEG7;
	wire [6:0]oSEG7;
	wire [3:0]state;
	wire long, short;
	debouncing D0 (btn, clk, rst_n, long, short);
	btn_control B0 (clk,state, long, short,rst_n);
	seven_seg S0 ( oSEG7, state);
	
endmodule
