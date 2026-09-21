module t_ff(
    input clk,
    input rst_n,
    output reg q
);

always @(negedge clk or negedge rst_n) begin
    if(!rst_n)
        q <= 1'b0;
    else
        q <= ~q;
end

endmodule


module ripple_counter(
    input clk,
    input rst_n,
    output [3:0] counter
);

wire q0;
wire q1;
wire q2;
wire q3;

// First flip-flop gets the external clock
t_ff ff0(
    .clk(clk),
    .rst_n(rst_n),
    .q(q0)
);

// Second flip-flop is clocked by q0
t_ff ff1(
    .clk(q0),
    .rst_n(rst_n),
    .q(q1)
);

// Third flip-flop is clocked by q1
t_ff ff2(
    .clk(q1),
    .rst_n(rst_n),
    .q(q2)
);

// Fourth flip-flop is clocked by q2
t_ff ff3(
    .clk(q2),
    .rst_n(rst_n),
    .q(q3)
);

assign counter = {q3,q2,q1,q0};

endmodule