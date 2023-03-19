module Dec2to4(en, S, Y);

input en;
input [1:0]S;
output reg[0:3]Y;

always @(en,S,Y)
	case ({en,S})
		3'b100: Y=4'b1000;
		3'b101: Y=4'b0100;
		3'b110: Y=4'b0010;
		3'b111: Y=4'b0001;
		default: Y=4'b0000;
	endcase
endmodule
