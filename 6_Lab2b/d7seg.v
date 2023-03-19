//7-Segment Decoder
module d7seg (m, d);

input [3:0]m;
output reg[0:6]d;

always @(*)
	case(m)
	4'b0000: d=7'b1111110;
	4'b0001: d=7'b0110000;
	4'b0010: d=7'b1101101;
	4'b0011: d=7'b1111001;
	4'b0100: d=7'b0110011;
	4'b0101: d=7'b1011011;
	4'b0110: d=7'b0011111;
	4'b0111: d=7'b1110000;
	4'b1000: d=7'b1111111;
	4'b1001: d=7'b1110011;
	default: d=7'b0000000;
	endcase
endmodule
