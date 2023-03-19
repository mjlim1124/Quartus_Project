//Full Circuit
module NBtoDC(v, N, D1, D0);

input [3:0]v;
input N;
output [0:6]D1, D0;

wire [3:0]Y, M;
wire Z;

//cirA(x, y);
cirA(v, Y);

//cprt(a, z);
cprt(v, Z);

//cirB (s, t);
cirB (Z, D1);

//mux21(sel, I1, I0, O)
mux21 mux3(Z, N, v[3], M[3]);
mux21 mux2(Z, Y[2], v[2], M[2]);
mux21 mux1(Z, Y[1], v[1], M[1]);
mux21 mux0(Z, Y[0], v[0], M[0]);

//d7seg (m, d);
d7seg(M[3:0], D0);


endmodule
