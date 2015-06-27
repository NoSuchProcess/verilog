module encode8to3(
	input wire enable,
	input wire[7:0] in,
	output reg[2:0] out,
	output wire select
);

assign select = enable ? |in : 1'bz;

always @(*) begin
	if (enable) begin
		if (in[7])
			out = 3'd7;
		else if (in[6])
			out = 3'd6;
		else if (in[5])
			out = 3'd5;
		else if (in[4])
			out = 3'd4;
		else if (in[3])
			out = 3'd3;
		else if (in[2])
			out = 3'd2;
		else if (in[1])
			out = 3'd1;
		else if (in[0])
			out = 3'd0;
		else
			out = 3'dx;
	end
	else begin
		out = 3'bzzz;
	end
end

endmodule
