//Comparator
module cprt(a, z);

input [3:0]a;
output z;

assign z = (a<=4'b1001 ? 0 : 1); //If a<=b, z = 0 & vice versa

endmodule
