module tb_full_adder;

reg a;
reg b;
reg cin;

wire sum;
wire carry;

full_adder dut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

integer i;

initial begin

    $display("A B CIN | SUM CARRY");
    $display("-------------------");

    for(i=0;i<8;i=i+1)
    begin
        {a,b,cin}=i;
        #10;

        $display("%b %b  %b  |  %b    %b",
                  a,b,cin,sum,carry);
    end

    $finish;

end

endmodule
