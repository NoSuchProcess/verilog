module decoder_4to16(
	input wire enable,
	input wire[3:0] in,
	output wire[15:0] out
);

assign enable_low = enable & ~in[3];
assign enable_high = enable & in[3];

decoder_3to8 lo(.enable(enable_low), .in(in[2:0]), .out(out[7:0]));
decoder_3to8 hi(.enable(enable_high), .in(in[2:0]), .out(out[15:8]));

endmodule
