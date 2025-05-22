module tb_mux16to1;
    reg [15:0] in;
    reg [3:0] sel;
    wire out;

    mux16to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        in = 16'b0000000000000000;
        sel = 4'b0000;

        in = 16'b1010101010101010;
        sel = 4'd0; #10;
        sel = 4'd1; #10;
        sel = 4'd2; #10;
        sel = 4'd3; #10;
        sel = 4'd4; #10;
        sel = 4'd5; #10;
        sel = 4'd6; #10;
        sel = 4'd7; #10;
        sel = 4'd8; #10;
        sel = 4'd9; #10;
        sel = 4'd10; #10;
        sel = 4'd11; #10;
        sel = 4'd12; #10;
        sel = 4'd13; #10;
        sel = 4'd14; #10;
        sel = 4'd15; #10;

        $stop;
    end
endmodule
