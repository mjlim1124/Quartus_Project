//MUX
module MUX(In0, In1, S, Out);

input In0, In1, S;
output reg Out;

always @(*)
	begin
	
	if(~S)
	Out = In0;
	
	else
	Out = In1;
	
	end
endmodule
