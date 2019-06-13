module bcd_digit( num1, num0, en1,en2, clk, rst_n,state);
 	output [3:0] num0,num1;
        input clk, rst_n, en1,en2;
		  input [3:0] state;
        reg [3:0] num0,num1;
        reg [3:0] next_num0, next_num1 , next_num2 ,co0;
always@(*)begin
	if ( state ==6)
	begin 
	if(en2==1)
	begin 
         next_num0 = !en1?((num0==9)?0:num0+1):num0;
	end
	else
	begin
         next_num0 = !en1?((num0==0)?9:num0-1):num0;
        end
	end
	else if (state==7)
	begin 
	if(en2==1)
	begin 
         next_num1 = !en1?((num1==9)?0:num1+1):num1;
	end
	else
	begin
         next_num1 = !en1?((num1==0)?9:num1-1):num1;
        end
	end	
end
        always@(posedge clk or negedge rst_n)
                begin
                        num0<=(!rst_n)?0:next_num0;
                        num1<=(!rst_n)?0:next_num1;
                end

endmodule

