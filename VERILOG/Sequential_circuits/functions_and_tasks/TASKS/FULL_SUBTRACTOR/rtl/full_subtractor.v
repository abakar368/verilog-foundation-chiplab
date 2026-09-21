module full_subtractor_task(
    input A,
    input B,
    input BIN,
    output reg DIFF,
    output reg BORROW
);

task full_subtractor;
    input a;
    input b;
    input bin;
    output diff;
    output borrow;
    begin
        diff   = a ^ b ^ bin;
        borrow = (~a & b) | (~a & bin) | (b & bin);
    end
endtask

always @(*) begin
    full_subtractor(A, B, BIN, DIFF, BORROW);
end

endmodule