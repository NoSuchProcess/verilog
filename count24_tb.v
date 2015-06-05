module count24_tb;

reg clock;
wire[5:0] data;

count24 uut(
	.clock(clock),
	.hour10(data[5:4]),
	.hour(data[3:0])
);

initial begin
	$monitor("%d %b %x", $time, clock, data);
	clock = 0;
	#400 $finish;
end

always
	#5 clock = ~clock;

endmodule
