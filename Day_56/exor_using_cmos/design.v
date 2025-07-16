module nand_gate(y,a,b);
  input a,b;
  output y;
  wire k;
  supply1 vdd;
  supply0 vss;
  pmos u1(y,vdd,a);
  pmos u2(y,vdd,b);
  nmos u3(y,k,a);
  nmos u4(k,vss,b);
endmodule

module not_gate(a,y);
  input a;
  output y;
  supply1 vdd;
  supply0 vss;
  pmos u5(y,vdd,a);
  nmos u6(y,vss,a);

endmodule

module exor_gate(a,b,y);
  input a,b;
  output y;
  wire w1;
  not_gate u7(.a(b),.y(w1));
  not_gate u8 (.a(a),.y(w2));
  nand_gate u9(.a(a),.b(w1),.y(w3));
  nand_gate u10(.a(w2),.b(b),.y(w4));
  nand_gate u11(.a(w3),.b(w4),.y(y));
 
endmodule
