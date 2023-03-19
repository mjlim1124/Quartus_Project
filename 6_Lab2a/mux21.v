//Multiplexer
module mux21(sel, I1, I0, O);

input sel, I1, I0;
output O;

assign O = (~sel & I0 | sel & I1);

endmodule
