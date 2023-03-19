module add7seg(cin, b, a, D1, D0);

input cin;
input [3:0]b, a;
output [0:6]D1, D0;
wire [3:0]cout, s, M, Y;
wire Z;

//adder(CIN, A, B, COUT, S);
adder FA1(cin, a[0], b[0], cout[0], s[0]);
adder FA2(cout[0], a[1], b[1], cout[1], s[1]);
adder FA3(cout[1], a[2], b[2], cout[2], s[2]);
adder FA4(cout[2], a[3], b[3], cout[3], s[3]);

//cprt(i, in, z);
cprt (s, cout[3], Z);

//cirA(x, y);
cirA(s, Y);

//mux21(sel, I1, I0, O);
mux21 mux1(Z, Y[0], s[0], M[0]);
mux21 mux2(Z, Y[1], s[1], M[1]);
mux21 mux3(Z, Y[2], s[2], M[2]);
mux21 mux4(Z, Y[3], s[3], M[3]);

//d7seg (m, d);
d7seg (M, D0);

//cirB (s, t)
cirB (Z, D1);

endmodule

