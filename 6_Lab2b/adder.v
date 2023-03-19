//Adder
module adder(CIN, A, B, COUT, S);

input A, B, CIN;
output reg COUT, S;

/*	CIN	A 	B	|	COUT	S
  -------------|----------
	0		0	0	|	0		0
	0		0	1	|	0		1
	0		1	0	|	0		1
	0		1	1	|	1		0
	1		0	0	|	0		1
	1		0	1	|	1		0
	1		1	0	|	1		0
	1		1	1	|	1		1
*/
always @(*)

	if (CIN == 0)
	begin
	COUT = A & B;
	S = A ^ B;
	end
	
	else if (CIN == 1)
	begin
	COUT = A | B;
	S = ~(A ^ B);
	end
endmodule
