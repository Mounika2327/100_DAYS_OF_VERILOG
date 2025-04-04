module tb_full_adder;

    // Testbench signals
    reg A, B, Cin;
    wire Sum, Cout;

    // Instantiate the full adder
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Test procedure
    initial begin
        // Display headers
        $display("A B Cin | Sum Cout");
        $display("--------------------");

        // Test case 1: 0 0 0
        A = 0; B = 0; Cin = 0;
        #10;  // Wait for 10 time units
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 2: 0 0 1
        A = 0; B = 0; Cin = 1;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 3: 0 1 0
        A = 0; B = 1; Cin = 0;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 4: 0 1 1
        A = 0; B = 1; Cin = 1;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 5: 1 0 0
        A = 1; B = 0; Cin = 0;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 6: 1 0 1
        A = 1; B = 0; Cin = 1;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 7: 1 1 0
        A = 1; B = 1; Cin = 0;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // Test case 8: 1 1 1
        A = 1; B = 1; Cin = 1;
        #10;
        $display("%b %b %b | %b %b", A, B, Cin, Sum, Cout);

        // End the simulation
        $finish;
    end
endmodule
