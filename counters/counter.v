module counter(
	input wire clock,
	input wire write,
	input wire[3:0] data,
	output reg[3:0] data_out
);

initial
	data_out = 0;

always @(posedge clock or posedge write)
	if (write)
		data_out <= data;
	else
		data_out <= data_out + 1;

endmodule
