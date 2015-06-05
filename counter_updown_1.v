module counter_updown_1(
	input wire[3:0] data,
	input wire write,
	input wire store,
	
	input wire reset,
	input wire clock,
	input wire updown, // 1 = up, 0 = down
	
	output reg[3:0] data_out,
	output wire clock_out
);

assign clock_out = updown ? (data_out[3] & data_out[2] & data_out[1] & data_out[0])
									: ~(data_out[3] | data_out[2] | data_out[1] | data_out[0]);

always @(posedge clock or posedge reset or posedge store or posedge write) begin
	if (reset)
		data_out = 0;
	else if (store | write) begin
		if (write)
			data_out = data;
	end
	else begin
		if (updown)
			data_out = data_out + 1;
		else
			data_out = data_out - 1;
	end
end

endmodule
