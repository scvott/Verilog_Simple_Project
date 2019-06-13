module bcd_1digit_test;
        reg clk, rst_n, en;
        wire [3:0]num0,num1,num2;
        wire co;
	bcd_3digit M1 (num2, num1, num0, en, clk, rst_n);	
	always begin
                #5 clk = ~clk;
        	end
	
        initial begin
		clk = 0 ;
                en = 1 ;
                rst_n = 0 ;
		#10 rst_n = 1;
                #2000 en = 0;
                #1000 en = 1;
                $finish;
                
	 end

        initial begin
                $monitor("time=%d, en=%b, num=%d%d%d, co=%b", $time, en, num2, num1,num0, co );
        end

        initial begin
                $fsdbDumpfile ( "bcd_1digit.fsdb" ) ;
                $fsdbDumpvars ;
        end



endmodule

