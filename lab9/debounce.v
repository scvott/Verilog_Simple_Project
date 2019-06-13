module debounce(sp_btn,rst_n,clk,btn);
output sp_btn;
input  rst_n,clk,btn;
reg [15:0]num;
reg [1:0]st;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) num <= 0;
	else begin
		if ( btn == 1 ) num <= 0 ;
		else begin 
			if (num < 50000 )
			begin
				 num <= num+1;
			end
		end
	end
end
assign pbd_btn = (num ==50000 ) ? 0 : 1 ;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) st <= 2'b00;
	else begin
		if ( st == 2'b00)
		 begin
			if ( pbd_btn == 1'b0)
			begin
				st=2'b01;
			end
			else st=2'b00; 
		 end 
		else if ( st == 2'b01) 
		begin
			if ( pbd_btn == 1'b0) st=2'b10;
			else st=2'b00;
		 end 
		else 
		begin
			if ( pbd_btn == 1'b0)st=2'b10;  
			else st=2'b00;
		 end
	end
end
assign sp_btn = (st ==2'b01 ) ? 1'b0 : 1'b1 ;
endmodule

