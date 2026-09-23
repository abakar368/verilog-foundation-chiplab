//Abubakar Adam - 23-09-2026 - or_gate.v

module or_gate(
    input A,
    input B,  
    output Y
);

function mux_2x1;
input a,b,s;
begin
    mux_2x1 = (~s&a) | (s&b);
end
endfunction

assign Y = mux_2x1(A,1'b1,B);

endmodule