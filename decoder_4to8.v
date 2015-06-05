module decoder_4to8(
	input wire enable,
	input wire[2:0] in,
	output wire[7:0] out
);

assign enable_low = enable & ~in[2];
assign enable_high = enable & in[2];

decoder_2to4 lo(.enable(enable_low), .in(in[1:0]), .out(out[3:0]));
decoder_2to4 hi(.enable(enable_high), .in(in[1:0]), .out(out[7:4]));

endmodule
