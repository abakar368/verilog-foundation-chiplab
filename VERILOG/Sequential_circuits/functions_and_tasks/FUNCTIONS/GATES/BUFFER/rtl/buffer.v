//Abubakar Adam - 23-09-2026 - buffer.v

module buffer_mux(
    input A,
    output Y
);

function mux_2x1;
    input a,b,s;
    begin
        mux_2x1 = (~s&a) | (s&b);
    end
endfunction

assign Y = mux_2x1(1'b0,1'b1,A);

endmodule

