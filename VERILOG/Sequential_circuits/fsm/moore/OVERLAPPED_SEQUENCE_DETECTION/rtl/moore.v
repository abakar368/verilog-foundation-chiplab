module moore_1011 (
    input clk,
    input rst,
    input din,
    output reg detect
);

reg [2:0] state, next_state;

parameter S0 = 3'd0,
          S1 = 3'd1,
          S2 = 3'd2,
          S3 = 3'd3,
          S4 = 3'd4;

// State Register
always @(posedge clk or posedge rst)
begin
    if(rst)
        state <= S0;
    else
        state <= next_state;
end

// Next State Logic
always @(*)
begin
    case(state)

        S0:
            if(din)
                next_state = S1;
            else
                next_state = S0;

        S1:
            if(din)
                next_state = S1;
            else
                next_state = S2;

        S2:
            if(din)
                next_state = S3;
            else
                next_state = S0;

        S3:
            if(din)
                next_state = S4;
            else
                next_state = S2;

        S4:
            if(din)
                next_state = S1;
            else
                next_state = S2;

        default:
            next_state = S0;

    endcase
end

// Output Logic
always @(*)
begin
    if(state == S4)
        detect = 1;
    else
        detect = 0;
end

endmodule