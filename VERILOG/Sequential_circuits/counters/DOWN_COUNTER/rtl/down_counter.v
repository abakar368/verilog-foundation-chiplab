module down_counter(
    input clk,
    input rst_n,    
    output reg [3:0] counter
);

always @(posedge clk) begin
    if(!rst_n)
        counter <= 4'b0000;
    else
        counter <= counter - 1'b1;
end

endmodule
