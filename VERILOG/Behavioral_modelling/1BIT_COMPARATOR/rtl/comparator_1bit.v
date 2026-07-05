module comparator_1bit(
    input A,
    input B,
    output reg Greater,
    output reg Equal,
    output reg Less
);

always @(*) begin
    Greater = 0;
    Equal   = 0;
    Less    = 0;

    if(A > B)
        Greater = 1;
    else if(A < B)
        Less = 1;
    else
        Equal = 1;
end

endmodule
