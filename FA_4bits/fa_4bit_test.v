module fa_4bit_test;
	reg [3:0] A, B;
	reg C_in;
	reg empty;
	reg err;
	reg [4:0] golden;
	wire [3:0] S;
	wire C_out;

	fa_4bit M0(S, C_out, A, B, C_in);

	initial begin
		A=0;
		B=0;
		C_in=0;
		err=0;
		for( {empty, C_in, A, B}=0 ; {empty, C_in, A, B} < 10'b10_0000_0000 ; {empty, C_in, A, B}={empty, C_in, A, B}+1 ) begin: for_loop
			#5
			golden=C_in+A+B;
			#5
			$display( "A=%b(%2d), B=%b(%2d), C_in=%b. Your results: %b,%b (%2d)" , A, A, B, B, C_in, C_out, S, {C_out,S});
			if (golden!=={C_out, S}) begin
				err=1;
				$display( "\nXXXXXXXXXXXXX ERROR XXXXXXXXXXXXX") ;
				$display( "A=%b(%2d), B=%b(%2d), C_in=%b. Your results: %b,%b (%2d) where golden is %b(%d)",
					A, A, B, B, C_in, C_out, S, {C_out,S}, golden, golden);
				empty=1;
			end
		end
		if (err == 0) begin
			$display( "\n============= PASS =============") ;
		end
	end

endmodule


