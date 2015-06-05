module counter_updown(
	input wire clock,
	input wire enable,
	input wire updown,
	input wire load,
	input wire set,
	input wire reset,
	input wire[3:0] data,
	output wire[3:0] data_out,
	output wire carry_out
);

reg[3:0] count;
assign data_out = count;
assign carry_out = updown ? ~|count : &count;

always @(negedge clock or posedge reset or posedge set) begin
	if (reset)
		count = 4'h0;
	else if (set)
		count = 4'hF;
	else if (load)
		count = data;
	else if (enable) begin
		if (updown)
			count = data_out - 1;
		else
			count = data_out + 1;
	end
end

endmodule
