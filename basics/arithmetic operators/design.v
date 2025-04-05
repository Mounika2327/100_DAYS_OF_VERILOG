module arithmetic_ops (a,b,add,sub,mul,div,mod);
  input logic[7:0] a,b;
  output logic [7:0] add,sub,mul,div,mod;
  assign add = a + b;
  assign sub = a - b;
  assign mul = a * b;
  assign div = (b!=0) ? a / b :8'b0;
  assign mod = (b!=0) ? a % b: 8'b0;
endmodule
