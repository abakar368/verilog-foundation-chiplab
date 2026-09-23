//Abubakar Adam - 23-09-2026 - mealy.v

module mealy_1011_nonoverlap (
    input clk,
    input rst,
    input din,
    output reg detect
);

reg [1:0] state, next_state;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

// State Register
always @(posedge clk or posedge rst)
begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end

// Next State Logic + Output Logic
always @(*)
begin
    detect = 0;

    case(state)

        S0:
        begin
            if(din)
                next_state = S1;
            else
                next_state = S0;
        end

        S1:
        begin
            if(din)
                next_state = S1;
            else
                next_state = S2;
        end

        S2:
        begin
            if(din)
                next_state = S3;
            else
                next_state = S0;
        end

        S3:
        begin
            if(din)
            begin
                detect = 1;
                next_state = S0;   // Non-overlapping
            end
            else
                next_state = S2;
        end

        default:
            next_state = S0;

    endcase
end

endmodule