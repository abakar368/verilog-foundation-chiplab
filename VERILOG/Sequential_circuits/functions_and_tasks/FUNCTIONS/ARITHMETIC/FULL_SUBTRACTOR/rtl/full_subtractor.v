module full_subtractor_mux(

input A,
input B,
input Bin,

output Difference,
output Borrow

);

function mux_2x1;

input a,b,s;

begin
    mux_2x1 = (~s&a) | (s&b);
end

endfunction

assign Difference = mux_2x1(
    (B ^ Bin),
    ~(B ^ Bin),
    A
);

assign Borrow = mux_2x1(
    (B | Bin),
    (B & Bin),
    A
);

endmodule


