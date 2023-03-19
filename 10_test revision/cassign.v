module cassign(a,b,f);

input a, b;
output f;

assign f = (a==b) ? 1'b0 : 1'b1;

endmodule
