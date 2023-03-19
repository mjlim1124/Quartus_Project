//Shift Register
module SftReg (clk, mode, preset, loadval, clr,  serial, q);

parameter n=10;
integer i;

input mode, serial,clk, preset, clr;
input [n-1:0]loadval;
output reg[n-1:0] q;



always @(posedge clk)
begin
	if (preset)
	q <= loadval;

	else if(clr)
	q <= 1'b0;
	
	else if(!mode)//left shifting (goomba)
		begin
		q[0] <= serial;
		for(i=0; i<n-1; i=i+1)
			begin
			q[i+1] <= q[i];
			end
		end
			
	else if(mode)//right shifting (mario)
		begin
		q[n-1] <= serial;
		for(i=0; i<n-1; i=i+1)
			begin
			q[i] <= q[i+1];
			end
		end	
end

endmodule
