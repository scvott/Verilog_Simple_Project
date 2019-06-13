module seven_seg ( oSEG7 , oSEG71, d2 , d1 ) ;
	input [3:0]   d2, d1 ;
	output [6:0] oSEG7,oSEG71 ;
	reg [6:0] oSEG7,oSEG71 ;
	
	always @ (*) begin
		if 		( d1 == 0 ) oSEG7 = 7'b1000000 ;
		else if ( d1 == 1 ) oSEG7 = 7'b1111001 ;
		else if ( d1 == 2 ) oSEG7 = 7'b0100100 ;
		else if ( d1 == 3 ) oSEG7 = 7'b0110000 ;
		else if ( d1 == 4 ) oSEG7 = 7'b0011001 ;
		else if ( d1 == 5 ) oSEG7 = 7'b0010010 ;
		else if ( d1 == 6 ) oSEG7 = 7'b0000010 ;
		else if ( d1 == 7 ) oSEG7 = 7'b1111000 ;
		else if ( d1 == 8 ) oSEG7 = 7'b0000000 ;
		else if ( d1 == 9 ) oSEG7 = 7'b0010000 ;
		else oSEG7 = 7'b1111111 ;
	end
	always @ (*) begin
                if              ( d2 == 0 ) oSEG71 = 7'b1000000 ;
                else if ( d2 == 1 ) oSEG71 = 7'b1111001 ;
                else if ( d2 == 2 ) oSEG71 = 7'b0100100 ;
                else if ( d2 == 3 ) oSEG71 = 7'b0110000 ;
                else if ( d2 == 4 ) oSEG71 = 7'b0011001 ;
                else if ( d2 == 5 ) oSEG71 = 7'b0010010 ;
                else if ( d2 == 6 ) oSEG71 = 7'b0000010 ;
                else if ( d2 == 7 ) oSEG71 = 7'b1111000 ;
                else if ( d2 == 8 ) oSEG71 = 7'b0000000 ;
                else if ( d2 == 9 ) oSEG71 = 7'b0010000 ;
                else oSEG71 = 7'b1111111 ;
        end

endmodule
