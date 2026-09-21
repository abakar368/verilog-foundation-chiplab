module half_subtractor_task(
    input A,
    input B,
    output reg DIFF,
    output reg BORROW
);

task half_subtractor;
    input a;
    input b;
    output diff;
    output borrow;
    begin
        diff   = a ^ b;
        borrow = ~a & b;
    end
endtask

always @(*) begin
    half_subtractor(A, B, DIFF, BORROW);
end

endmodule