module if2to4(en, x, o);

input en;
input [1:0]x;
output reg [0:3]o;

always @(*)
	begin
		if (en == 1)
		begin
			case (x)
				2'b00: o=4'b1000;
				2'b01: o=4'b0100;
				2'b10: o=4'b0010;
				2'b11: o=4'b0001;
			endcase
		end
		else
			o=4'b0000;
	end 
	
endmodule
		