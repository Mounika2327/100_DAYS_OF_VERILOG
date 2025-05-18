module tb;
  logic [7:0]a,b;
         logic [7:0] add,sub,mul,div,mod;
         arithmetic_ops u1 (.add(add),.sub(sub),.div(div),.mul(mul),.mod(mod),.a(a),.b(b));
         initial begin
           a = 10; b = 5; #10;
           a = 20; b = 3; #10;
           a = 15; b = 0; #10;
       
         end
         initial
           begin
             $monitor("a=%0d,b=%0d,sum=%0d,diff=%0dd,pro=%0d,quo=%0d,rem=%0d",a,b,add,sub,mul,div,mod);
           end
 endmodulede
