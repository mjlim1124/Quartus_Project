//Circuit A
module cirA(x, y);

input [2:0]x;
output [2:0]y;

assign y[2] = x[2] &  x[1];
assign y[1] = x[2] & ~x[1];
assign y[0] = (x[2] |  x[1]) & x[0];

endmodule
