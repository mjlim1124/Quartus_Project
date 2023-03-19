//Single Display

module sing_disp (sel, char0, char1, char2, char3, char4, disp);

input [2:0]sel;
input [2:0]char0, char1, char2, char3, char4;
output [6:0]disp;

wire[2:0]n;
//Mux5to1(s2, s1, s0, u, v, x, y, z, m);
Mux5to1 out0(sel[2], sel[1], sel[0], char0[0], char1[0], char2[0], char3[0], char4[0], n[0]);
Mux5to1 out1(sel[2], sel[1], sel[0], char0[1], char1[1], char2[1], char3[1], char4[1], n[1]);
Mux5to1 out2(sel[2], sel[1], sel[0], char0[2], char1[2], char2[2], char3[2], char4[2], n[2]);
//Dec_7_Seg(c, S);
Dec_7_Seg (n,disp);

endmodule 
