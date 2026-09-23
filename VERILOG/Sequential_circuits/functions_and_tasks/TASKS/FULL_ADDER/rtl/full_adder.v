//Abubakar Adam - 23-09-2026 - full_adder.v

module full_adder_task(
    input A,
    input B,
    input CIN,
    output reg SUM,
    output reg COUT
);

task full_adder;
    input a;
    input b;
    input cin;
    output sum;
    output cout;
    begin
        sum  = a ^ b ^ cin;
        cout = (a & b) | (a & cin) | (b & cin);
    end
endtask

always @(*) begin
    full_adder(A, B, CIN, SUM, COUT);
end

endmodule