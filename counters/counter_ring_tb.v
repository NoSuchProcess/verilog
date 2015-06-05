module counter_ring_tb;

parameter WIDTH = 8;

reg clock;
reg reset;
wire[WIDTH-1:0] data;

counter_ring uut(
	.clock(clock),
	.reset(reset),
	.data(data)
);

initial begin
	$monitor("%d %b %b %b", $time, clock, reset, data);
	clock = 0; reset = 0;
	#15; reset = 1; #10; reset = 0;
	#250 reset = 1; #10; reset = 0;
	#400 $finish;
end

always
	#10 clock = ~clock;

endmodule
