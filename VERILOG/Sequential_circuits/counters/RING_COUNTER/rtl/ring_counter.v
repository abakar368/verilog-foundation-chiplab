//Abubakar Adam - 22-09-2026 - ring_counter.v

module ring_counter(
    input clk,
    input rst_n,
    output reg [3:0] counter
);

always @(posedge clk) begin
    if (!rst_n)
        counter <= 4'b1000;
    else
        counter <= {counter[0], counter[3:1]};
end

endmodule