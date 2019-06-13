module counter_4bit_test;
	reg clk, rst_n;
	wire [3:0]num;

	counter_4bit U1(.num(num), .clk(clk), .rst_n(rst_n));

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
		#300
		$finish;
	end

	initial begin
		$monitor("time=%5d, num=%d(%b)", $time, num, num );
	end
	
endmodule

