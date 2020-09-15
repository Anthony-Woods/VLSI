// f=A+BC

module AND_OR(A,B,C,F);
input A,B,C;
output F;
wire w1;
and a1(w1,B,C);
or or1(F,A,w1);
endmodule