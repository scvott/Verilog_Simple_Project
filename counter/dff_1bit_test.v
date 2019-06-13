module dff_test();
	reg rst_n,clk,D;
	wire Q;
	 dff_1bit M0 (Q, D, clk, rst_n);
	
	always begin
		#5 clk = ~clk ;
	end

	initial begin
		D = 0;
		clk = 0 ;
		rst_n = 1;
		#10
		rst_n = 0;
		$display("Q = %d",Q); 
		#5
		rst_n = 1;
		#5
		D = 1;
		#20
                $display("Q = %d",Q);
		#300
		$finish;
	end
endmodule
