//Abubakar Adam - 23-09-2026 - half_subtractor.v

module half_subtractor_mux(

input A,
input B,

output Difference,
output Borrow

);

function mux_2x1;

input a,b,s;

begin
    mux_2x1 = (~s&a) | (s&b);
end

endfunction

assign Difference = mux_2x1(B, ~B, A);

assign Borrow = mux_2x1(B, 1'b0, A);

endmodule

