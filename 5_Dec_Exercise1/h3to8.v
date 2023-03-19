module h3to8 (EN, X, O);

input EN;
input [1:0]X;

output [0:7]O;

//if2to4(en, x, o);

if2to4 D0(~EN, X, O[0:3]);
if2to4 D1(EN, X, O[4:7]);


endmodule
