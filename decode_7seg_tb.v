module decode_7seg_tb;

reg[3:0] data;
reg select;
wire a, b, c, d, e, f, g;

decode_7seg decoder(
    .*
);

initial begin
    select = 1;
    #10; data = 8;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 9;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 10;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 11;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 12;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 13;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 14;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
    #10; data = 15;
    $display("%d%d%d%d%d%d%d", a, b, c, d, e, f, g);
end

endmodule
