module tb_d_latch;

    reg D;
    reg En;
    wire Q;

    d_latch uut (
        .D(D),
        .En(En),
        .Q(Q)
    );

    initial begin
        $monitor("Time = %0t | D = %b | En = %b | Q = %b", $time, D, En, Q);

        D = 0; En = 0;
        #10 D = 1; En = 0;
        #10 D = 1; En = 1;
        #10 D = 0; En = 1;
        #10 En = 0;
        #10 D = 1;
        #10 $finish;
    end
endmodule
