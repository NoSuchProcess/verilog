module encode10to4(
	input wire enable,
	input wire[9:0] in,
	output reg[3:0] out,
	output wire select
);

assign select = enable ? |in : 1'bz;

always @(*) begin
	if (enable) begin
		if (in[9])
			out = 4'd9;
		else if (in[8])
			out = 4'd8;
		else if (in[7])
			out = 4'd7;
		else if (in[6])
			out = 4'd6;
		else if (in[5])
			out = 4'd5;
		else if (in[4])
			out = 4'd4;
		else if (in[3])
			out = 4'd3;
		else if (in[2])
			out = 4'd2;
		else if (in[1])
			out = 4'd1;
		else if (in[0])
			out = 4'd0;
		else
			out = 4'dx;
	end
	else begin
		out = 4'bzzzz;
	end
end

endmodule
