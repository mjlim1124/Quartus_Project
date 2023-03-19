//register
module rgt (D, clk, Q, rst, load);
parameter n = 4;

input clk, rst, load;
input [n-1 : 0]D;
output reg[n-1 : 0]Q;

always @(posedge clk, posedge rst)
if (rst)
Q <= 0;

else if (load)
Q <= D;

endmodule

