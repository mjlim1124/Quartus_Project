
/* This is an example of a 4-1 Multiplexer*/

module Test(s1, s0, m3, m2, m1, m0, f); //header: module filename (port/Input Output)

input s1, s0, m3, m2, m1, m0; //declare input
output f; //declare output

//Continuous Assign Statement
/* Truth Table           Boolean Expression
   s1 s0  |  f           f = s1's0'm0 + s1's0m1 + s1s0'm2 + s1s0m3
    0  0  | m0
	 0  1  | m1
	 1  0  | m2
	 1  1  | m3
*/
assign f = ~s1 & ~s0 & m0 | ~s1 & s0 & m1 | s1 & ~s0 & m2 | s1 & s0 & m3;

endmodule
