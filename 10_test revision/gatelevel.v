module gatelevel(a,b,f);

input a, b;
output f;

wire [2:1]y;

nor (y[1], a, ~b);
nor (y[2], ~a, b);
or (f, y[1], y[2]);


endmodule