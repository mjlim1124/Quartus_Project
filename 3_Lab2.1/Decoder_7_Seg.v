//DSD Lab Exercise 2 Part 1
module Decoder_7_Seg(c, S);

input [2:0]c;
output reg [0:6]S;

/* 
          Truth Table
   Input   |         Output
 c2 c1 c0  | S0 S1 S2 S3 S4 S5 S6
 0   0  0  |  0  1  1  0  1  1  1
 0   0  1  |  1  0  0  1  1  1  1
 0   1  0  |  0  0  0  1  1  1  0
 0   1  1  |  1  1  1  1  1  1  0
 1   0  0  |  0  0  0  0  0  0  0
 1   0  1  |  0  0  0  0  0  0  0
 1   1  0  |  0  0  0  0  0  0  0
 1   1  1  |  0  0  0  0  0  0  0
 */
 
 always @(c, S)
	case (c)
		3'b000:  S=7'b0110111;
		3'b001:  S=7'b1001111;
		3'b010:  S=7'b0001110;
		3'b011:  S=7'b1111110;
		default: S=7'b0000000;
	 endcase
	 
endmodule 