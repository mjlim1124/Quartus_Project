module counter (s, rst, clk, Q);

input s, rst, clk;
output reg[2:0]Q;

always @(negedge clk)
begin

if (rst)
Q <= 3'b000;

else if (s) //even number in increment order
	case(Q)
	3'd0 : Q <= 3'd2;
	3'd2 : Q <= 3'd4;
	3'd4 : Q <= 3'd6;
	3'd6 : Q <= 3'd0;
	default : Q <= Q+1;
	endcase
	
else if (!s) //odd number in decrement order
	case(Q)
	3'd7 : Q <= 3'd5;
	3'd5 : Q <= 3'd3;
	3'd3 : Q <= 3'd1;
	3'd1 : Q <= 3'd7;
	default : Q <= Q-1;
	endcase

end
endmodule
