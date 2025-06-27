module tb_sr_latch_nor;

    reg S, R;
    wire Q, Qn;

    // Instantiate the SR latch
    sr_latch_nor uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        $display("Time\tS R | Q Qn");
        $monitor("%0t\t%b %b | %b %b", $time, S, R, Q, Qn);

        // Test Case 1: Reset state
        S = 0; R = 1; #10;

        // Test Case 2: Set state
        S = 1; R = 0; #10;

        // Test Case 3: Hold state
        S = 0; R = 0; #10;

        // Test Case 4: Invalid state (S=1, R=1)
        S = 1; R = 1; #10;

        // Test Case 5: Back to Hold
        S = 0; R = 0; #10;

        $finish;
    end

endmodule
