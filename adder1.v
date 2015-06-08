module adder1(
    input wire a, b,
    input wire carry_in,
    output wire result,
    output wire carry_out
);

assign {carry_out, result} = {1'b0, a} + {1'b0, b} + {1'b0, carry_in};

endmodule
