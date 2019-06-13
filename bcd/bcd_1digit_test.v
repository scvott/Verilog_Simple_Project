module bcd_1digit_test;
	reg clk, rst_n, en;
	wire [3:0]num;
	wire co;
	//1. Instantiate "your bcd_1digit" here.
	 bcd_1digit M0 (num, co, en, clk, rst_n);		

	//2. Use this always block, generate a clk signal which flip every 5 time units.
	//   Use clk = ~clk to flip the clock signal
	//   Use #5 to delay 5 time units.
	always begin
		#5 clk = ~clk;
	end

	initial begin
		// Must remember to initialize the input signals. Otherwise, you'll get "x".
		clk = 0 ;
		en = 1 ;
		rst_n = 0 ;
		//3. Set the rst_n signal and en signal and let your design run for a period of time.
		//   use #xx (xx is numbers) to insert delay values.
		#10 rst_n = 1;
		#200 en = 0;
		#100 en = 1;
		// Finally, end the simulation.
		$finish;
	end

	initial begin
		$monitor("time=%d, en=%b, num=%d(%b), co=%b", $time, en, num, num, co );
	end
	
	initial begin
		$fsdbDumpfile ( "bcd_1digit.fsdb" ) ;
		$fsdbDumpvars ;
	end

	

endmodule

