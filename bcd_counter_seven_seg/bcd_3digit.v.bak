module bcd_3digit(num2, num1, num0, en1,en2, clk, rst_n);
 	output [3:0] num0,num1,num2;
        input clk, rst_n, en1,en2;
        reg [3:0] num0,num1,num2;
        wire [3:0] next_num0, next_num1 , next_num2 ,co0,co1;
        
	always(*)begin
		if(en2 == 1)begin
		next_num0 = en1?((num0==9)?0:num0+1):num0;
        	co0=(num0==9)? 1:0;
        	next_num1 = co0?((num1==9)?0:num1+1):num1;
        	co1=(num1==9)? 1:0;
        	next_num2 = (co1&&co0)?((num2==9)?0:num2+1):num2;
		end else
		next_num0 = en1?((num0==0)?0:num0-1):num0;
                co0=(num0==0)? 1:0;
                next_num1 = co0?((num1==0)?0:num1-1):num1;
                co1=(num1==0)? 1:0;
                next_num2 = (co1&&co0)?((num2==0)?0:num2-1):num2;

	end

        always@(posedge clk or negedge rst_n)
                begin
                        num0<=(!rst_n)?0:next_num0;
                        num1<=(!rst_n)?0:next_num1;
                        num2<=(!rst_n)?0:next_num2;
                end
	
	
endmodule

