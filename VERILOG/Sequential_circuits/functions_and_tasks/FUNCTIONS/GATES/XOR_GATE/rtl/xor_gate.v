//Abubakar Adam - 23-09-2026 - xor_gate.v

module xor_gate(
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

assign Y = mux_2x1(B,~B,A);

endmodule