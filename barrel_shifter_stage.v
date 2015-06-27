module barrel_shifter_case(
    input wire[7:0] a,
    input wire[2:0] amt,
    output reg[7:0] y
);

wire[7:0] s0, s1;

// stage 0, shift 0 or 1 bit
assign s0 = amt[0] ? {a[0], a[7:1]} : a;
// stage 1, shift 0 or 2 bits
assign s1 = amt[0] ? {a[1:0], a[7:2]} : s0;
// stage 2, shift 0 or 4 bits
assign y = {a[3:0], a[7:4]} : s1;

endmodule
