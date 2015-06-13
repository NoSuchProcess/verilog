module decode_7seg(
    input wire[3:0] data,
    input wire select,
    output reg a, b, c, d, e, f, g
);

always @(data or select) begin
    if (select)
        case (data)
            /* '0' */ 0: begin a = 1; b = 1; c = 1; d = 1; e = 1; f = 1; g = 0; end
            /* '1' */ 1: begin a = 0; b = 1; c = 1; d = 0; e = 0; f = 0; g = 0; end
            /* '2' */ 2: begin a = 1; b = 1; c = 0; d = 1; e = 1; f = 0; g = 1; end
            /* '3' */ 3: begin a = 1; b = 1; c = 1; d = 1; e = 0; f = 0; g = 1; end
            /* '4' */ 4: begin a = 0; b = 1; c = 1; d = 0; e = 0; f = 1; g = 1; end
            /* '5' */ 5: begin a = 1; b = 0; c = 1; d = 1; e = 0; f = 1; g = 1; end
            /* '6' */ 6: begin a = 1; b = 0; c = 1; d = 1; e = 1; f = 1; g = 1; end
            /* '7' */ 7: begin a = 1; b = 1; c = 1; d = 0; e = 0; f = 0; g = 0; end
            /* '8' */ 8: begin a = 1; b = 1; c = 1; d = 1; e = 1; f = 1; g = 1; end
            /* '9' */ 9: begin a = 1; b = 1; c = 1; d = 1; e = 0; f = 1; g = 1; end
            /* extra */
            /* '-' */ 10: begin a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 1; end
            /* 'L' */ 11: begin a = 0; b = 0; c = 0; d = 1; e = 1; f = 1; g = 0; end
            /* 'C' */ 12: begin a = 1; b = 0; c = 0; d = 1; e = 1; f = 1; g = 0; end
            /* 'r' */ 13: begin a = 1; b = 0; c = 0; d = 0; e = 1; f = 1; g = 0; end
            /* 'E' */ 14: begin a = 1; b = 0; c = 0; d = 1; e = 1; f = 1; g = 1; end
            /* ' ' */ 15: begin a = 0; b = 0; c = 0; d = 0; e = 0; f = 0; g = 0; end
        endcase
    else begin
        a = 1'bz; b = 1'bz; c = 1'bz; d = 1'bz; e = 1'bz; f = 1'bz; g = 1'bz;
    end
end

endmodule
