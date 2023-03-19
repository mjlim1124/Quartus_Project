//Comparator
module cprt(i, in, z);

input [3:0]i;
input in;
output z;


assign gr = (i<=4'b1001 ? 0 : 1); //If a<=b, gr = 0 & vice versa
assign z = (gr | in);

endmodule
