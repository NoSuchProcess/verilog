module keyboard_16keys(
    input wire key_0,
    input wire key_1,
    input wire key_2,
    input wire key_3,
    input wire key_4,
    input wire key_5,
    input wire key_6,
    input wire key_7,
    input wire key_8,
    input wire key_9,
    input wire key_a,
    input wire key_b,
    input wire key_c,
    input wire key_d,
    input wire key_e,
    input wire key_f,
    output reg[3:0] out
);

always @(*) begin
    if (key_0) out = 0;
    if (key_1) out = 1;
    if (key_2) out = 2;
    if (key_3) out = 3;
    if (key_4) out = 4;
    if (key_5) out = 5;
    if (key_6) out = 6;
    if (key_7) out = 7;
    if (key_8) out = 8;
    if (key_9) out = 9;
    if (key_a) out = 10;
    if (key_b) out = 11;
    if (key_c) out = 12;
    if (key_d) out = 13;
    if (key_e) out = 14;
    if (key_f) out = 15;
end

endmodule
