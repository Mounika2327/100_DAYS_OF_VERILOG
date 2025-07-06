module tb_min_max;

    reg [7:0] a, b;
    wire [7:0] min, max;

    min_max uut (
        .a(a),
        .b(b),
        .min(min),
        .max(max)
    );

    initial begin
        $monitor("Time = %0t | a = %0d | b = %0d | min = %0d | max = %0d", $time, a, b, min, max);

        a = 25; b = 40; #10;
        a = 100; b = 55; #10;
        a = 77; b = 77; #10;
        a = 0; b = 200; #10;
        a = 255; b = 1; #10;
        $finish;
    end
endmodule
