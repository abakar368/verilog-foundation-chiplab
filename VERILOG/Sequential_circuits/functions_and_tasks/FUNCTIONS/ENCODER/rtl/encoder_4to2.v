//Abubakar Adam - 23-09-2026 - encoder_4to2.v

module encoder_4to2_mux(
    input  [3:0] in,
    output [1:0] out
);

function mux_2x1;
    input a,b,s;
    begin
        mux_2x1 = s ? b : a;
    end
endfunction

// out[0] = in1 OR in3
assign out[0] = mux_2x1(in[3], 1'b1, in[1]);

// out[1] = in2 OR in3
assign out[1] = mux_2x1(in[3], 1'b1, in[2]);

endmodule

