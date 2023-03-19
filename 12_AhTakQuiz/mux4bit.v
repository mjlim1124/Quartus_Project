
module mux4bit (I1, I0, SEL, Y );

input [3:0] I1, I0;
input SEL;
output [3:0] Y;

assign Y= (SEL)? I1: I0 ; 

endmodule
