module tb_kmap_6var;

reg A, B, C, D, E, F;
wire F_out;

kmap_6var uut (
    .A(A), .B(B), .C(C), .D(D), .E(E), .F(F),
    .F_out(F_out)
);

initial begin
    A=0; B=0; C=0; D=0; E=0; F=0;
    #10 A=0; B=0; C=1; D=0; E=0; F=0;
    #10 A=1; B=1; C=0; D=0; E=0; F=1;
    #10 A=0; B=1; C=1; D=1; E=0; F=1;
    #10 A=1; B=0; C=1; D=1; E=0; F=1;
    #10 A=0; B=0; C=1; D=1; E=1; F=1;
    #10 $finish;
end

endmodule
