//counter & 7segment Decoder

module seg7counter(clk, reset, crash, dodge, out);

input clk, reset, crash, dodge;
output reg[6:0]out;

reg [3:0]i;

always @(posedge reset, posedge clk)
begin
	if(reset)
		i <= 4'b0000;
		
	else if(dodge)
		if(i >= 4'b1001)
		i <= 4'b0000;
		else
		i <= i + 4'b0001;
		
	else if(crash)
		if(i <= 4'b0000)
		i <= 4'b0000;
		else
		i <= i - 4'b0001;
	
end

always @(i)
begin
	case (i)
	4'd0: out=7'b1111110;
	4'd1: out=7'b0110000;
	4'd2: out=7'b1101101;
	4'd3: out=7'b1111001;
	4'd4: out=7'b0110011;
	4'd5: out=7'b1011011;
	4'd6: out=7'b1011111;
	4'd7: out=7'b1110000;
	4'd8: out=7'b1111111;
	4'd9: out=7'b1110011;
	default: out=7'b0000000;

	endcase
end

endmodule
