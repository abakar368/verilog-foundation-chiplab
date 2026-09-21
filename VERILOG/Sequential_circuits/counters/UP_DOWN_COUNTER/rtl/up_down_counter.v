module up_down_counter(
    input clk,
    input rst_n,
    input up_down,
    output reg [3:0] counter
);

always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'd0;
    else if (up_down)
        counter <= counter + 4'd1;
    else
        counter <= counter - 4'd1;
end

endmodule