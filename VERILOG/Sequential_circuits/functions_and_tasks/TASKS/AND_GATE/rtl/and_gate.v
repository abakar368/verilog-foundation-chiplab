//Abubakar Adam - 23-09-2026 - and_gate.v

module and_gate_task(
    input A,
    input B,
    output reg Y
);

task and_task;
    input a;
    input b;
    output y;
    begin
        y = a & b;
    end
endtask

always @(*) begin
    and_task(A, B, Y);
end

endmodule