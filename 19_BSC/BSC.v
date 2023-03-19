//BSC Circuit
module BSC(Mode, ShiftDR, IN, SI, SO, ClockDR, UpdateDR, OUT);

parameter n=8; 

input [n-1:0] IN;
input ClockDR, UpdateDR, SI, Mode, ShiftDR;

output [n-1:0] SO, OUT;
wire [n-1:0] M1O, R2O;
wire [n:0] S;

genvar i;
assign S[0] = SI;

generate
for (i=0; i<=n-1; i=i+1)
begin: BSR
//MUX (In0, In1, S, Out)
//DFFP (D, CK, Q)
MUX INMUX (IN[i], S[i], ShiftDR, M1O[i]);
DFFP R1 (M1O[i], ClockDR, S[i+1]);
assign SO[i] = S[i+1];
DFFP R2 (S[i+1], UpdateDR, R2O[i]);
MUX OUTMUX (IN[i], R2O[i], Mode, OUT[i]);
end
endgenerate

endmodule
