module xor_gate_task(
    input A,
    input B,
    output reg Y
);

task xor_task;
    input a;
    input b;
    output y;
    begin
        y = a ^ b;
    end
endtask

always @(*) begin
    xor_task(A, B, Y);
end

endmodule