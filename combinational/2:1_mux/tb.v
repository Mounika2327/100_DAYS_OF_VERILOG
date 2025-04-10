module tb_mux2to1;

    // Inputs
    reg a;
    reg b;
    reg sel;

    // Output
    wire y;
    mux2to1 u1 (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .y(y)
    );
    initial begin
        // Monitor the output
        $monitor("Time = %0t | a = %b, b = %b, sel = %b => y = %b", $time, a, b, sel, y);
        // Test all combinations
        a = 0; b = 0; sel = 0; #10;
        a = 0; b = 1; sel = 0; #10;
        a = 1; b = 0; sel = 0; #10;
        a = 1; b = 1; sel = 0; #10;

        a = 0; b = 0; sel = 1; #10;
        a = 0; b = 1; sel = 1; #10;
        a = 1; b = 0; sel = 1; #10;
        a = 1; b = 1; sel = 1; #10;
        $finish;
    end
endmodule
