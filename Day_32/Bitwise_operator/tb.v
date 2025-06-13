`timescale 1ns/1ps

module tb_bitwise_operator;
    reg [3:0] a, b;
    wire [3:0] and_out, or_out, xor_out, not_a, not_b;

    // Instantiate the design
    bitwise_operator uut (
        .a(a), .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .xor_out(xor_out),
        .not_a(not_a),
        .not_b(not_b)
    );

    initial begin
        $monitor("a=%b, b=%b | AND=%b, OR=%b, XOR=%b, NOT_A=%b, NOT_B=%b", 
                  a, b, and_out, or_out, xor_out, not_a, not_b);

        a = 4'b1010; b = 4'b1100; #10;
        a = 4'b1111; b = 4'b0000; #10;
        a = 4'b0101; b = 4'b0011; #10;
        a = 4'b1001; b = 4'b0110; #10;

        $finish;
    end
endmodule
