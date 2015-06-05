module adder1(
    input wire a, b,
    input wire carry_in,
    output wire result,
    output wire carry_out
);

//assign half_carry_ab = a & b;
//assign half_sum = a ^ b;
//assign half_carry_in = half_sum & carry_in;
//assign result = half_sum ^ carry_in;
//assign carry_out = half_carry_ab | half_carry_in;

assign {carry_out, result} = {1'b0, a} + {1'b0, b} + {1'b0, carry_in};

endmodule
