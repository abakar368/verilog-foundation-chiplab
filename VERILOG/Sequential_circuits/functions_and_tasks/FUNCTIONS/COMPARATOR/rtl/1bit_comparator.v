//Abubakar Adam - 23-09-2026 - 1bit_comparator.v

module comparator_mux(

input A,
input B,

output Greater,
output Equal,
output Less

);

function mux_2x1;

input a,b,s;

begin
    mux_2x1 = (~s&a) | (s&b);
end

endfunction

assign Greater = mux_2x1(
    1'b0,
    ~B,
    A
);

assign Equal = mux_2x1(
    ~B,
    B,
    A
);

assign Less = mux_2x1(
    B,
    1'b0,
    A
);

endmodule


