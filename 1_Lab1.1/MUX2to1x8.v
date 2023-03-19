//DSD Lab Exercise 1 Part 1
module MUX2to1x8(x0, x1, x2, x3, x4, x5, x6, x7, 
                 y0, y1, y2, y3, y4, y5, y6, y7, 
					  m0, m1, m2, m3, m4, m5, m6, m7, 
					  s);

input x0, x1, x2, x3, x4, x5, x6, x7, 
      y0, y1, y2, y3, y4, y5, y6, y7, s;
output m0, m1, m2, m3, m4, m5, m6, m7;

/*
  Input  |        Output
    s    | m0  m1  m2  m3  m4  m5  m6  m7
------------------------------------------
    0    | x0  x1  x2  x3  x4  x5  x6  x7
	 1    | y0  y1  y2  y3  y4  y5  y6  y7
	 
*/
assign m0 = ~s & x0 | s & y0;
assign m1 = ~s & x1 | s & y1;
assign m2 = ~s & x2 | s & y2;
assign m3 = ~s & x3 | s & y3;
assign m4 = ~s & x4 | s & y4;
assign m5 = ~s & x5 | s & y5;
assign m6 = ~s & x6 | s & y6;
assign m7 = ~s & x7 | s & y7;

endmodule
