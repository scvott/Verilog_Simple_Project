module counter_16bit_test;
	reg clk, rst_n;
	wire [15:0]num;

	counter_16bit U1(.num(num), .clk(clk), .rst_n(rst_n));

	always begin
		#5
		clk=~clk;
	end

	initial begin
		clk=0; 
		rst_n=0;
		#4
		rst_n=1;
		#1
		#655380
		$finish;
	end

	initial begin
		$monitor("time=%5d, num=%d(%b)", $time, num, num );
	end
	initial begin
        	$fsdbDumpfile ( " counter_16bit.fsdb" ) ;
        	$fsdbDumpvars ;
	end
endmodule

