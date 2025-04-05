module tb_full_subtractor;

    // Inputs
    reg A;
    reg B;
    reg Bin;
    
    // Outputs
    wire D;
    wire Bout;
    
    // Instantiate the Full Subtractor
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );
    
    // Test stimulus
    initial begin
        // Display format for the simulation
        $monitor("A = %b, B = %b, Bin = %b | D = %b, Bout = %b", A, B, Bin, D, Bout);
        
        // Test all combinations of A, B, Bin
        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;
        
        // End the simulation
        $finish;
    end

endmodule
