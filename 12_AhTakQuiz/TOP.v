
module TOP (In1, In2, Out);

input [3:0]In1, In2;
output [3:0]Out;
wire gt;

comp4bit (In1, In2, gt);
mux4bit (In1, In2, gt, Out);

endmodule
