module tb_half_subtractor;

    // Testbench signals
    reg A, B;
    wire Diff, Borr;

    // Instantiate the half subtractor
    half_subtractor uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borr(Borr)
    );

    // Test procedure
    initial begin
        // Display headers
        $display("A B | Diff Borr");
        $display("-------------------");

        // Test case 1: 0 0
        A = 0; B = 0;
        #10;  // Wait for 10 time units
        $display("%b %b | %b %b", A, B, Diff, Borr);

        // Test case 2: 0 1
        A = 0; B = 1;
        #10;
        $display("%b %b | %b %b", A, B, Diff, Borr);

        // Test case 3: 1 0
        A = 1; B = 0;
        #10;
        $display("%b %b | %b %b", A, B, Diff, Borr);

        // Test case 4: 1 1
        A = 1; B = 1;
        #10;
        $display("%b %b | %b %b", A, B, Diff, Borr);

        // End the simulation
        $finish;
    end
endmodule
