module counter_tb;

reg clock, write;
reg [3:0] data;
wire[3:0] data_out;

counter uut(
	.clock(clock),
	.write(write),
	.data(data),
	.data_out(data_out)
);

initial begin
	$monitor("%d %b %b %b", $time, clock, write, data_out);
	clock = 0; write = 0; data = 4'h5;
	#205 write = 1; #10; write = 0;
	#400 $finish;
end

always
	#10 clock = ~clock;

endmodule
