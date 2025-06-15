`timescale 1ns/1ps

module tb_reduction_operator;
    reg [3:0] in;
    wire red_and, red_or, red_xor, red_nand, red_nor, red_xnor;

    // Instantiate the design
    reduction_operator uut (
        .in(in),
        .red_and(red_and),
        .red_or(red_or),
        .red_xor(red_xor),
        .red_nand(red_nand),
        .red_nor(red_nor),
        .red_xnor(red_xnor)
    );

    initial begin
        $monitor("in=%b | &=%b | |=%b | ^=%b | ~&=%b | ~|=%b | ~^=%b", 
                  in, red_and, red_or, red_xor, red_nand, red_nor, red_xnor);

        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0011; #10;
        in = 4'b1111; #10;
        in = 4'b1010; #10;
        in = 4'b0101; #10;

        $finish;
    end
endmodule
