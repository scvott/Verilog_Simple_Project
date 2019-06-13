module debouncing(btn, clk, rst_n, long, short);
output long, short;
input  rst_n,clk,btn;
reg [25:0]num1;
reg [15:0]num2;
wire pbd_btn;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) num1 <= 0;
	else begin
		if ( btn == 1 ) num1 <= 0 ;
		else begin 
			if (num1 < 50000 )
			begin
				 num1 <= num1+1;
			end
		end
	end
end
assign pbd_btn = (num1 ==50000 ) ? 0 : 1 ;

always @(posedge clk or negedge rst_n) begin 
	if(!rst_n) num2 <= 0;
	else begin 
		if ( pbd_btn == 1 ) num2 <= 0 ;
                else begin
                        if (num2 < 50000001 )
                        begin
                                 num2 <= num2+1;
                        end
                end	
end
end
assign long = (num2 == 50000000)? 0 : 1;
assign short = (num2 > 0 && num2 < 50000000 && pbd_btn == 0)? 0: 1;

endmodule
