module count24(
	input wire clock,
	output reg[1:0] hour10,
	output reg[3:0] hour
);

initial begin
	hour = 0;
	hour10 = 0;
end

always @(negedge clock) begin
	if ({hour10,hour} == 6'h23)
		{hour10,hour} <= 0;
	else
		if (hour == 4'h9)
			{hour10,hour} <= {hour10,hour} + 6'h07;
		else
			{hour10,hour} <= {hour10,hour} + 6'h01;
/*
	case ({hour10,hour})
	6'h_00: {hour10,hour} <= 6'h_01;
	6'h_01: {hour10,hour} <= 6'h_02;
	6'h_02: {hour10,hour} <= 6'h_03;
	6'h_03: {hour10,hour} <= 6'h_04;
	6'h_04: {hour10,hour} <= 6'h_05;
	6'h_05: {hour10,hour} <= 6'h_06;
	6'h_06: {hour10,hour} <= 6'h_07;
	6'h_07: {hour10,hour} <= 6'h_08;
	6'h_08: {hour10,hour} <= 6'h_09;
	6'h_09: {hour10,hour} <= 6'h_10;
	6'h_10: {hour10,hour} <= 6'h_11;
	6'h_11: {hour10,hour} <= 6'h_12;
	6'h_12: {hour10,hour} <= 6'h_13;
	6'h_13: {hour10,hour} <= 6'h_14;
	6'h_14: {hour10,hour} <= 6'h_15;
	6'h_15: {hour10,hour} <= 6'h_16;
	6'h_16: {hour10,hour} <= 6'h_17;
	6'h_17: {hour10,hour} <= 6'h_18;
	6'h_18: {hour10,hour} <= 6'h_19;
	6'h_19: {hour10,hour} <= 6'h_20;
	6'h_20: {hour10,hour} <= 6'h_21;
	6'h_21: {hour10,hour} <= 6'h_22;
	6'h_22: {hour10,hour} <= 6'h_23;
	6'h_23: {hour10,hour} <= 6'h_00;
	default: {hour10,hour} <= 6'h_00;
	endcase
*/
end
	
endmodule
