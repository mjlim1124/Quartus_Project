//DFFP
module DFFP (D, CK, Q);

input D, CK;
output reg Q;

always @(posedge CK)
	Q <= D;
	
endmodule
