//Exercise 2C
module add7seg(cin, b, a, D2, D1, D0);

input cin;
input [7:0]b, a;
output [0:6]D2, D1, D0;
wire [7:0]cout, s, M, Y;
wire Z1, Z2;

//adder(CIN, A, B, COUT, S);
adder FA1(cin		, a[0], b[0], cout[0], s[0]);
adder FA2(cout[0]	, a[1], b[1], cout[1], s[1]);
adder FA3(cout[1]	, a[2], b[2], cout[2], s[2]);
adder FA4(cout[2]	, a[3], b[3], cout[3], s[3]);

adder FA5(Z1		, a[4], b[4], cout[4], s[4]);
adder FA6(cout[4]	, a[5], b[5], cout[5], s[5]);
adder FA7(cout[5]	, a[6], b[6], cout[6], s[6]);
adder FA8(cout[6]	, a[7], b[7], cout[7], s[7]);


//cprt(i, in, z);
cprt comp1(s[3:0], cout[3], Z1);
cprt comp2(s[7:4], cout[7], Z2);

//cirA(x, y);
cirA A1(s[3:0], Y[3:0]);
cirA A2(s[7:4], Y[7:4]);

//mux21(sel, I1, I0, O);
mux21 mux1(Z1, Y[0], s[0], M[0]);
mux21 mux2(Z1, Y[1], s[1], M[1]);
mux21 mux3(Z1, Y[2], s[2], M[2]);
mux21 mux4(Z1, Y[3], s[3], M[3]);

mux21 mux5(Z2, Y[4], s[4], M[4]);
mux21 mux6(Z2, Y[5], s[5], M[5]);
mux21 mux7(Z2, Y[6], s[6], M[6]);
mux21 mux8(Z2, Y[7], s[7], M[7]);

//d7seg (m, d);
d7seg d0(M[3:0], D0);
d7seg d1(M[7:4], D1);

//cirB (s, t)
cirB (Z2, D2);

endmodule

