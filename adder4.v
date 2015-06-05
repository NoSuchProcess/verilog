module adder4(
    input wire[3:0] a, b,
    input wire carry_in,
    output wire[3:0] result,
    output wire carry_out
);

assign {carry_out, result} = {1'b0, a} + {1'b0, b} + {4'b0, carry_in};

endmodule
