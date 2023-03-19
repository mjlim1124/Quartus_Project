//DSD Lab Exercise 1 Part 2
module Mux5to1(s0, s1, s2, 
               u0, v0, w0, x0, y0, m0,
					u1, v1, w1, x1, y1, m1,
					u2, v2, w2, x2, y2, m2);

output m0, m1, m2;
input s0, s1, s2, 
      u0, v0, w0, x0, y0,
	   u1, v1, w1, x1, y1,
		u2, v2, w2, x2, y2;


assign a0 = ~s0 & u0 | s0 & v0;  //MUX with input u & v and output a
assign b0 = ~s0 & w0 | s0 & x0;  //MUX with input w & x and output b
assign c0 = ~s1 & a0 | s1 & b0;  //MUX with input a & b and output c
assign m0 = ~s2 & c0 | s2 & y0;  //MUX with input c & y and output m

assign a1 = ~s0 & u1 | s0 & v1;  
assign b1 = ~s0 & w1 | s0 & x1;  
assign c1 = ~s1 & a1 | s1 & b1;  
assign m1 = ~s2 & c1 | s2 & y1;

assign a2 = ~s0 & u2 | s0 & v2;  
assign b2 = ~s0 & w2 | s0 & x2;  
assign c2 = ~s1 & a2 | s1 & b2;  
assign m2 = ~s2 & c2 | s2 & y2;

endmodule
