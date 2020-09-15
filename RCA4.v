// Name: Anthony Woods
// 4-Bit RCA


module RCA4(Cout,Sum,A,B,Cin);
input [3:0] A,B;
input Cin;
output Cout;
output [3:0] Sum;

wire [3:0] w;

FA FA0(w[0],Sum[0],A[0],B[0],Cin);
FA FA1(w[1],Sum[1],A[1],B[1],w[0]);
FA FA2(w[2],Sum[2],A[2],B[2],w[1]);
FA FA3(Cout,Sum[3],A[3],B[3],w[2]);

endmodule