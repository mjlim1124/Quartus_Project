module clock50Mto1(input clk,output reg out);

reg [24:0] count = 1'b0;

always@(posedge clk) 
	begin
		count <= count + 1;
		if (count==5) 
		begin
			out <= ~out;
			count <= 1'b1;
		end
	end
	
endmodule
