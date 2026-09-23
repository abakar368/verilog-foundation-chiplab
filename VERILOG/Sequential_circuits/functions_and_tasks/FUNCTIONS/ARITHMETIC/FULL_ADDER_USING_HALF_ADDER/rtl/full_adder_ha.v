//Abubakar Adam - 23-09-2026 - full_adder_ha.v

module full_adder_ha(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

function [1:0] half_adder;
    input x, y;
    begin
        half_adder[0] = x ^ y; // Sum
        half_adder[1] = x & y; // Carry
    end
endfunction

wire [1:0] ha;

assign ha = half_adder(a, b);

assign sum  = ha[0] ^ cin;
assign cout = ha[1] | (ha[0] & cin);

endmodule

