`timescale 1ns/1ps

module tb_relational_operator;
    reg [3:0] a, b;
    wire eq, neq, lt, gt, lte, gte;

    // Instantiate the design
    relational_operator uut (
        .a(a), .b(b),
        .eq(eq), .neq(neq),
        .lt(lt), .gt(gt),
        .lte(lte), .gte(gte)
    );

    initial begin
        $monitor("a=%d, b=%d | ==%b !=%b <%b >%b <=%b >=%b", 
                  a, b, eq, neq, lt, gt, lte, gte);

        a = 4'd5; b = 4'd5; #10;
        a = 4'd3; b = 4'd7; #10;
        a = 4'd9; b = 4'd2; #10;
        a = 4'd4; b = 4'd6; #10;
        a = 4'd8; b = 4'd8; #10;

        $finish;
    end
endmodule
