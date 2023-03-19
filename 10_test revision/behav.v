module behav(a,b,f);

input a,b;
output reg f;

always @(*)
/*
	case({a,b})
	2'b00 : f = 1'b0;
	2'b01 : f = 1'b1;
	2'b10 : f = 1'b1;
	2'b11 : f = 1'b0;
	endcase
*/
begin
if (a != b)
f = 1'b1;

else if(a == b)
f = 1'b0;
end
endmodule