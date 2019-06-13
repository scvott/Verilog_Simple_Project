module seven_seg ( oSEG7,oSEG71,oSEG72,oSEG73,u1,u0,d1,d0) ;
	input [3:0]   u1,u0,d1,d0 ;
	output [6:0] oSEG7,oSEG71 ,oSEG72,oSEG73;
	reg [6:0] oSEG7,oSEG71 ,oSEG72,oSEG73;
	
	always @ (*) begin
		if 		( d0 == 0 ) oSEG7 = 7'b1000000 ;
		else if ( d0 == 1 ) oSEG7 = 7'b1111001 ;
		else if ( d0 == 2 ) oSEG7 = 7'b0100100 ;
		else if ( d0 == 3 ) oSEG7 = 7'b0110000 ;
		else if ( d0 == 4 ) oSEG7 = 7'b0011001 ;
		else if ( d0 == 5 ) oSEG7 = 7'b0010010 ;
		else if ( d0 == 6 ) oSEG7 = 7'b0000010 ;
		else if ( d0 == 7 ) oSEG7 = 7'b1111000 ;
		else if ( d0 == 8 ) oSEG7 = 7'b0000000 ;
		else if ( d0 == 9 ) oSEG7 = 7'b0010000 ;
		else oSEG7 = 7'b1111111 ;
	end
	always @ (*) begin
                if              ( d1 == 0 ) oSEG71 = 7'b1000000 ;
                else if ( d1 == 1 ) oSEG71 = 7'b1111001 ;
                else if ( d1 == 2 ) oSEG71 = 7'b0100100 ;
                else if ( d1 == 3 ) oSEG71 = 7'b0110000 ;
                else if ( d1 == 4 ) oSEG71 = 7'b0011001 ;
                else if ( d1 == 5 ) oSEG71 = 7'b0010010 ;
                else if ( d1 == 6 ) oSEG71 = 7'b0000010 ;
                else if ( d1 == 7 ) oSEG71 = 7'b1111000 ;
                else if ( d1 == 8 ) oSEG71 = 7'b0000000 ;
                else if ( d1 == 9 ) oSEG71 = 7'b0010000 ;
                else oSEG71 = 7'b1111111 ;
        end
	always @ (*) begin
                if              ( u0 == 0 ) oSEG72 = 7'b1000000 ;
                else if ( u0 == 1 ) oSEG72 = 7'b1111001 ;
                else if ( u0 == 2 ) oSEG72 = 7'b0100100 ;
                else if ( u0 == 3 ) oSEG72 = 7'b0110000 ;
                else if ( u0 == 4 ) oSEG72 = 7'b0011001 ;
                else if ( u0 == 5 ) oSEG72 = 7'b0010010 ;
                else if ( u0 == 6 ) oSEG72 = 7'b0000010 ;
                else if ( u0 == 7 ) oSEG72 = 7'b1111000 ;
                else if ( u0 == 8 ) oSEG72 = 7'b0000000 ;
                else if ( u0 == 9 ) oSEG72 = 7'b0010000 ;
                else oSEG72 = 7'b1111111 ;
        end

	always @ (*) begin
                if              ( u1 == 0 ) oSEG73 = 7'b1000000 ;
                else if ( u1 == 1 ) oSEG73 = 7'b1111001 ;
                else if ( u1 == 2 ) oSEG73 = 7'b0100100 ;
                else if ( u1 == 3 ) oSEG73 = 7'b0110000 ;
                else if ( u1 == 4 ) oSEG73 = 7'b0011001 ;
                else if ( u1 == 5 ) oSEG73 = 7'b0010010 ;
                else if ( u1 == 6 ) oSEG73 = 7'b0000010 ;
                else if ( u1 == 7 ) oSEG73 = 7'b1111000 ;
                else if ( u1 == 8 ) oSEG73 = 7'b0000000 ;
                else if ( u1 == 9 ) oSEG73 = 7'b0010000 ;
                else oSEG73 = 7'b1111111 ;
        end
endmodule
