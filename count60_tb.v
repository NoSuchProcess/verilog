module count60_tb;

reg clock;
wire[6:0] data;

count60 uut(
	.clock(clock),
	.val10(data[6:4]),
	.val(data[3:0])
);

initial begin
	$monitor("%d %b %x", $time, clock, data);
	clock = 0;
	#620 $finish;
end

always
	#5 clock = ~clock;

endmodule
