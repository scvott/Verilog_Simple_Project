module dff_16bit(Q, D, clk, rst_n);
        input [15:0]D;
	input clk,rst_n;
        output [15:0]Q;
        reg [15:0]Q;
        always@(posedge clk or negedge rst_n) begin
                Q <= (!rst_n)? 0:D;
        end
endmodule

