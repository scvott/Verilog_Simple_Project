module seven_seg ( oSEG7,  d1 ) ;
	input [3:0]   d1 ;
	output [6:0] oSEG7;
	reg [6:0] oSEG7 ;
	
	always @ (*) begin
		if 	( d1 == 0 ) oSEG7 = 7'b1000000 ;
		else if ( d1 == 1 ) oSEG7 = 7'b1111001 ;
		else if ( d1 == 2 ) oSEG7 = 7'b0100100 ;
		else if ( d1 == 3 ) oSEG7 = 7'b0110000 ;
		else if ( d1 == 4 ) oSEG7 = 7'b0011001 ;
		else if ( d1 == 5 ) oSEG7 = 7'b0010010 ;
		else if ( d1 == 6 ) oSEG7 = 7'b0000010 ;
		else if ( d1 == 7 ) oSEG7 = 7'b1111000 ;
		else if ( d1 == 8 ) oSEG7 = 7'b0000000 ;
		else if ( d1 == 9 ) oSEG7 = 7'b0010000 ;
		else if (d1 == 10) oSEG7 = 7'b0001001;
		else if (d1 == 11) oSEG7 = 7'b0010001;
		else if (d1 == 12) oSEG7 = 7'b0001000;
		else if (d1 == 13) oSEG7 = 7'b0010010;
		else if (d1 == 14) oSEG7 = 7'b0111111;
		else if (d1 == 15) oSEG7 = 7'b1111111;
		else oSEG7 = 7'b1111111 ;
	end
	
endmodule
