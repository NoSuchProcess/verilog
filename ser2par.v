module ser2par(
	input wire clock,
	input wire data_in,
	output reg[7:0] data_out
);

always @(posedge clock) begin
	data_out = {data_out[6:0], data_in};
end

endmodule
