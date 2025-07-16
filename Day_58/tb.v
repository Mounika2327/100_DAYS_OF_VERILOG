module tb;
  reg a,b;
  wire y;
  wire k;
  or_gate w6 (.a(a),.b(b),.y(y));
 
  initial begin
    $monitor("a=%0b,b=%0b,y=%0b", a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
