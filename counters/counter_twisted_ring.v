module counter_twisted_ring
#(
	parameter WIDTH = 8
)
(
	input wire clock,
	input wire reset,
	output reg[WIDTH-1:0] data
);

initial
	data = 0;

always @(posedge clock or posedge reset)
	if (reset)
		data <= 0;
	else
		data <= {data[WIDTH-2:0], ~data[WIDTH-1]};

endmodule
 