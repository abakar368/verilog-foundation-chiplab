//Abubakar Adam - 23-09-2026 - mux_2x1.v

module mux_2x1_task(
    input A,
    input B,
    input S,
    output reg Y
);

task mux_task;
    input a;
    input b;
    input s;
    output y;
    begin
        y = s ? b : a;
    end
endtask

always @(*) begin
    mux_task(A, B, S, Y);
end

endmodule