//7-seg decoder module

module Dec_7_Seg(c, S);

input [2:0]c;
output reg [0:6]S;
 always @(c, S)
	case (c)
		3'b000:  S=7'b0110111;
		3'b001:  S=7'b1001111;
		3'b010:  S=7'b0001110;
		3'b011:  S=7'b1111110;
		default: S=7'b0000000;
	 endcase
endmodule
