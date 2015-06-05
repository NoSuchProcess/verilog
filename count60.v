module count60(
	input wire clock,
	output reg[2:0] val10,
	output reg[3:0] val
);

initial begin
	val = 0;
	val10 = 0;
end

always @(negedge clock) begin
	if ({val10,val} == 7'h59)
		{val10,val} <= 0;
	else
		if (val == 4'h9)
			{val10,val} <= {val10,val} + 7'h07;
		else
			{val10,val} <= {val10,val} + 7'h01;
/*
	case ({val10,val})
	7'h_00: {val10,val} <= 7'h_01;
	7'h_01: {val10,val} <= 7'h_02;
	7'h_02: {val10,val} <= 7'h_03;
	7'h_03: {val10,val} <= 7'h_04;
	7'h_04: {val10,val} <= 7'h_05;
	7'h_05: {val10,val} <= 7'h_06;
	7'h_06: {val10,val} <= 7'h_07;
	7'h_07: {val10,val} <= 7'h_08;
	7'h_08: {val10,val} <= 7'h_09;
	7'h_09: {val10,val} <= 7'h_10;

	7'h_10: {val10,val} <= 7'h_11;
	7'h_11: {val10,val} <= 7'h_12;
	7'h_12: {val10,val} <= 7'h_13;
	7'h_13: {val10,val} <= 7'h_14;
	7'h_14: {val10,val} <= 7'h_15;
	7'h_15: {val10,val} <= 7'h_16;
	7'h_16: {val10,val} <= 7'h_17;
	7'h_17: {val10,val} <= 7'h_18;
	7'h_18: {val10,val} <= 7'h_19;
	7'h_19: {val10,val} <= 7'h_20;

	7'h_20: {val10,val} <= 7'h_21;
	7'h_21: {val10,val} <= 7'h_22;
	7'h_22: {val10,val} <= 7'h_23;
	7'h_23: {val10,val} <= 7'h_24;
	7'h_24: {val10,val} <= 7'h_25;
	7'h_25: {val10,val} <= 7'h_26;
	7'h_26: {val10,val} <= 7'h_27;
	7'h_27: {val10,val} <= 7'h_28;
	7'h_28: {val10,val} <= 7'h_29;
	7'h_29: {val10,val} <= 7'h_30;

	7'h_30: {val10,val} <= 7'h_31;
	7'h_31: {val10,val} <= 7'h_32;
	7'h_32: {val10,val} <= 7'h_33;
	7'h_33: {val10,val} <= 7'h_34;
	7'h_34: {val10,val} <= 7'h_35;
	7'h_35: {val10,val} <= 7'h_36;
	7'h_36: {val10,val} <= 7'h_37;
	7'h_37: {val10,val} <= 7'h_38;
	7'h_38: {val10,val} <= 7'h_39;
	7'h_39: {val10,val} <= 7'h_40;

	7'h_40: {val10,val} <= 7'h_41;
	7'h_41: {val10,val} <= 7'h_42;
	7'h_42: {val10,val} <= 7'h_43;
	7'h_43: {val10,val} <= 7'h_44;
	7'h_44: {val10,val} <= 7'h_45;
	7'h_45: {val10,val} <= 7'h_46;
	7'h_46: {val10,val} <= 7'h_47;
	7'h_47: {val10,val} <= 7'h_48;
	7'h_48: {val10,val} <= 7'h_49;
	7'h_49: {val10,val} <= 7'h_50;

	7'h_50: {val10,val} <= 7'h_51;
	7'h_51: {val10,val} <= 7'h_52;
	7'h_52: {val10,val} <= 7'h_53;
	7'h_53: {val10,val} <= 7'h_54;
	7'h_54: {val10,val} <= 7'h_55;
	7'h_55: {val10,val} <= 7'h_56;
	7'h_56: {val10,val} <= 7'h_57;
	7'h_57: {val10,val} <= 7'h_58;
	7'h_58: {val10,val} <= 7'h_59;
	7'h_59: {val10,val} <= 7'h_00;

	default: {val10,val} <= 7'h_00;
	endcase
*/
end
	
endmodule
