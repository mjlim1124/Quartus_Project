
module comp4bit(A, B, GT);
input [3:0] A,B;
output reg GT;

always @(*)
if(A>B)
GT = 1;
else
GT = 0;

endmodule
