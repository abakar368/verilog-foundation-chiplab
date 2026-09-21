module or_gate_task(
    input A,
    input B,
    output reg Y
);

task or_task;
    input a;
    input b;
    output y;
    begin
        y = a | b;
    end
endtask

always @(*) begin
    or_task(A, B, Y);
end

endmodule