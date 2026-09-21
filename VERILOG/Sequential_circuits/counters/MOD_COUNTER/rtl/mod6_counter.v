module mod6_counter(
    input clk,
    input rst_n,
    output reg [2:0] counter
);

always @(posedge clk) begin
    if (!rst_n)
        counter <= 0;
    else if (counter == 3'b101)
        counter <= 0;
    else
        counter <= counter + 3'b001;
end

endmodule