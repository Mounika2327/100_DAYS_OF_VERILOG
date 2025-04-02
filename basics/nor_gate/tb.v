module nor_gate_tb;

    // Declare input and output registers/wires
    reg A;    // Input A
    reg B;    // Input B
    wire Y;   // Output Y

    // Instantiate the NOR gate module
    nor_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Apply test vectors to the NOR gate
    initial begin
        // Initialize inputs
        A = 0;
        B = 0;

        // Wait for some time, then change inputs
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;

        // Finish the simulation
        #10 $finish;
    end

    // Monitor output to display in simulation
    initial begin
        $monitor("Time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
    end

endmodule
