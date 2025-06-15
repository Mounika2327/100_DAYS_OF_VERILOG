`timescale 1ns/1ps

module tb_concat_replicate;
    reg [3:0] a;
    reg [1:0] b;
    wire [5:0] concat_out;
    wire [7:0] replicate_a;
    wire [5:0] replicate_b;

    // Instantiate the design
    concat_replicate uut (
        .a(a), .b(b),
        .concat_out(concat_out),
        .replicate_a(replicate_a),
        .replicate_b(replicate_b)
    );

    initial begin
        $monitor("a=%b, b=%b | {a,b}=%b | {2{a}}=%b | {3{b}}=%b",
                  a, b, concat_out, replicate_a, replicate_b);

        a = 4'b1010; b = 2'b11; #10;
        a = 4'b0101; b = 2'b01; #10;
        a = 4'b1111; b = 2'b00; #10;
        a = 4'b0000; b = 2'b10; #10;

        $finish;
    end
endmodule
