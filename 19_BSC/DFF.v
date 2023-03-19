//DFF
module DFF (D, CK, Q);

input D, CK;
output reg Q;

always @(posedge CK)
	Q <= D;
	
endmodule
