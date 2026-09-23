//Abubakar Adam - 23-09-2026 - or_gate.v

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