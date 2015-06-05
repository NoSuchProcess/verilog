module decoder_1to2(
	input wire enable,
	input wire in,
	output wire[1:0] out
);

reg[1:0] data;
assign out = data;

always @(enable or in) begin
	if (enable)
		case (in)
			0: data = 2'b_z0;
			1: data = 2'b_0z;
		endcase
	else
		data = 2'b_zz;
end

endmodule
