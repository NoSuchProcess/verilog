module counter_ring
#(
	parameter WIDTH = 8
)
(
	input wire clock,
	input wire reset,
	output reg[WIDTH-1:0] data
);

initial
	data = 1;

always @(posedge clock or posedge reset)
	if (reset)
		data <= 1;
	else
		data <= {data[WIDTH-2:0], data[WIDTH-1]};

endmodule
