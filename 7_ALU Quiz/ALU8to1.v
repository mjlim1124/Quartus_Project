module ALU8to1(sel, a, b, o, cin, cout);
input a, b, cin;
input [2:0]sel;
reg y;
output [7:0]o;
output reg cout;

always @(*)
begin
	case (sel)
	3'b000: 	y	= 1'b0;
	3'b001: 	y 	= a & b;
	3'b010: 	y 	= a | b;
	3'b011: 	y	= a ^ b;
	3'b100: {cout, y} = b + 1;
	3'b101: {cout, y} = a + ~b + cin;
	3'b110: {cout, y} = a +  b + cin;
	3'b111: y = 1'b1;
	default: y = 1'bx;
	endcase
end

assign o[0] = y;
assign o[1] = y;
assign o[2] = y;
assign o[3] = y;
assign o[4] = y;
assign o[5] = y;
assign o[6] = y;
assign o[7] = y;

endmodule
