module nor_gate(y,a,b);
  input a,b;
  output y;
  wire k;
  supply1 vdd;
  supply0 vss;
  pmos u1(k,vdd,a);
  pmos u2(y,k,b);
  nmos u3(y,vss,a);
  nmos u4(y,vss,b);
endmodule

module not_gate(y,a);
  input a;
  output y;
  supply1 vdd;
  supply0 vss;
  pmos u5(y,vdd,a);
  nmos u6(y,vss,a);
  
endmodule
module or_gate(a,b,y);
  input a,b;
  output y;
  wire w1;
  nor_gate u7(.a(a),.b(b),.y(w1));
  not_gate u8 (.a(w1),.y(y));
endmodule
