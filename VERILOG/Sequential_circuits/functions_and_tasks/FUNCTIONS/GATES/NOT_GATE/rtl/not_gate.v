//Abubakar Adam - 23-09-2026 - not_gate.v

module not_gate(
    input A,
    output Y
);

function mux_2x1;
input a,b,s;
begin
    mux_2x1 = (~s&a) | (s&b); 
end
endfunction

assign Y = mux_2x1(1'b1,1'b0,A);

endmodule