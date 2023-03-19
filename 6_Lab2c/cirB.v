//Circuit B
module cirB (s, t);

input s;
output [0:6]t;

assign t = (s==0 ? 7'b0000000 : 7'b0110000);

endmodule
