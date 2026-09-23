//Abubakar Adam - 23-09-2026 - half_adder.v

module half_adder_task(
    input A,
    input B,
    output reg SUM,
    output reg CARRY
);

task half_adder;
    input a;
    input b;
    output sum;
    output carry;
    begin
        sum   = a ^ b;
        carry = a & b;
    end
endtask

always @(*) begin
    half_adder(A, B, SUM, CARRY);
end

endmodule