module decoder_2to4(
	input wire enable,
	input wire[1:0] in,
	output wire[3:0] out
);

assign enable_low = enable & ~in[1];
assign enable_high = enable & in[1];

decoder_1to2 lo(.enable(enable_low), .in(in[0]), .out(out[1:0]));
decoder_1to2 hi(.enable(enable_high), .in(in[0]), .out(out[3:2]));

endmodule
