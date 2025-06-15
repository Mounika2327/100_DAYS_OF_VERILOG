`timescale 1ns/1ps

module tb_case_equality;
    reg [3:0] a, b;
    wire eq_case, neq_case;

    // Instantiate the module
    case_equality uut (
        .a(a), .b(b),
        .eq_case(eq_case),
        .neq_case(neq_case)
    );

    initial begin
        $monitor("Time=%0t | a=%b, b=%b | === %b, !== %b", 
                  $time, a, b, eq_case, neq_case);

        a = 4'b1010; b = 4'b1010; #10;  // equal
        a = 4'b1010; b = 4'b1110; #10;  // not equal
        a = 4'b1x10; b = 4'b1x10; #10;  // equal with X (=== is true)
        a = 4'b1x10; b = 4'b1010; #10;  // not equal (because of X)
        a = 4'bzzzz; b = 4'bzzzz; #10;  // equal with Z

        $finish;
    end
endmodule
