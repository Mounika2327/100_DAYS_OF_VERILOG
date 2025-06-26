module sr_nand_latch_tb;

    reg S, R;
    wire Q, Qn;

    // Instantiate the DUT (Design Under Test)
    sr_nand_latch uut (
        .S(S),
        .R(R),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        $display("Time\tS R | Q Qn");
        $monitor("%0t\t%b %b | %b %b", $time, S, R, Q, Qn);

        // Initialize
        S = 1; R = 1; // Idle state
        #10;

        S = 0; R = 1; // Set = 0 -> Q = 1
        #10;

        S = 1; R = 1; // Back to idle
        #10;

        S = 1; R = 0; // Reset = 0 -> Q = 0
        #10;

        S = 1; R = 1; // Back to idle
        #10;

        S = 0; R = 0; // Invalid condition (Both 0)
        #10;

        S = 1; R = 1; // Recover to idle
        #10;

        $finish;
    end

endmodule
