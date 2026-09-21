module half_adder_mux(

    input A,
    input B,

    output SUM,
    output CARRY

);

function mux_2x1;

input a,b,s;

begin

    mux_2x1 = (~s&a) | (s&b);

end

endfunction

assign SUM = mux_2x1(B, ~B, A);

assign CARRY = mux_2x1(1'b0, B, A);

endmodule

