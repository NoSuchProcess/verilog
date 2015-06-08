module coder_10to4(
    input wire[9:0] in,
    output reg[3:0] out
);

always @(in) begin
    case (in)
    10'b_00000_00001: out = 0;
    10'b_00000_00010: out = 1;
    10'b_00000_00100: out = 2;
    10'b_00000_01000: out = 3;
    10'b_00000_10000: out = 4;
    10'b_00001_00000: out = 5;
    10'b_00010_00000: out = 6;
    10'b_00100_00000: out = 7;
    10'b_01000_00000: out = 8;
    10'b_10000_00000: out = 9;
    default: out = 4'h_x;
    endcase
end

endmodule
