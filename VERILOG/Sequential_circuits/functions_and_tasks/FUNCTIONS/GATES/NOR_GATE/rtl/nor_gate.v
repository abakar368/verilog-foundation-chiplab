module nor_gate(
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

assign Y = mux_2x1(1'b0,~B,A);

endmodule


