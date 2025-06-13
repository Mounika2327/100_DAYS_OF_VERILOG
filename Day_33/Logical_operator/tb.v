`timescale 1ns/1ps

module tb_logical_operator;
    reg a, b;
    wire and_out, or_out, not_a, not_b;

    // Instantiate the design
    logical_operator uut (
        .a(a), .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .not_a(not_a),
        .not_b(not_b)
    );

    initial begin
        $monitor("a=%b, b=%b | AND=%b, OR=%b, NOT_A=%b, NOT_B=%b",
                  a, b, and_out, or_out, not_a, not_b);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
