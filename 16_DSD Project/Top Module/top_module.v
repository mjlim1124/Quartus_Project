//Full Mario & Goomba Game
module top_module (S, R, J, CLK, mar_reg, gom_reg, score, count_rst);

input S, R, J; //Gameing Input
input CLK, count_rst;

output reg[4:0] mar_reg, gom_reg;
output [6:0] score;

reg[3:0] NS, PS;
reg[4:0]mar_ldval, gom_ldval;
reg DODGE, CRASH, result;

parameter
s0  = 4'd0,
s1  =	4'd1,
s2  = 4'd2,
s3  = 4'd3,
s4  = 4'd4,
s5  = 4'd5,
s7  = 4'd7,
s8  = 4'd8,
s9  = 4'd9,
s12 = 4'd12,
s13 = 4'd13,
s14 = 4'd14;

//Next State Block
always @(PS, S, R)
begin
case(PS)
s0  : if (S) NS = s1; else NS = s0;
s1  : if (!R) NS = s2; else NS = s7;
s2  : if (!R) NS = s3; else NS = s8;
s3  : if (!R) NS = s4; else NS = s9;
s4  : if (!R) NS = s5; else NS = s14;
s5  : NS = s0;
s7  : if (!R) NS = s8; else NS = s12;
s8  : if (!R) NS = s9; else NS = s13;
s9  : NS = s0;
s12 : NS = s0;
s13 : NS = s0;
s14 : NS = s0;
endcase
end

//Memory Block (Flip Flop)
always @(posedge CLK)
begin
PS <= NS;
end

//Present State Block
always @(PS)
begin
case (PS)
s0  : begin mar_ldval=5'b00000; gom_ldval=5'b00000; end
s1  : begin mar_ldval=5'b10000; gom_ldval=5'b00001; end
s2  : begin mar_ldval=5'b10000; gom_ldval=5'b00010; end
s3  : begin mar_ldval=5'b10000; gom_ldval=5'b00100; end
s4  : begin mar_ldval=5'b10000; gom_ldval=5'b01000; end
s5  : begin mar_ldval=5'b10000; gom_ldval=5'b10000; end
s7  : begin mar_ldval=5'b01000; gom_ldval=5'b00010; end
s8  : begin mar_ldval=5'b01000; gom_ldval=5'b00100; end
s9  : begin mar_ldval=5'b01000; gom_ldval=5'b01000; end
s12 : begin mar_ldval=5'b00100; gom_ldval=5'b00100; end
s13 : begin mar_ldval=5'b00100; gom_ldval=5'b01000; end
s14 : begin mar_ldval=5'b01000; gom_ldval=5'b10000; end
endcase
end

//register
wire [4:0]QM, QG;
SftReg mario  (CLK, 1'b1, 1'b1, mar_ldval, 1'b0, , QM);
SftReg goomba (CLK, 1'b0, 1'b1, gom_ldval, 1'b0, , QG);
always @(QM, QG)
begin
mar_reg = QM;
gom_reg = QG;
end

//comparator
always @(mar_reg, gom_reg, PS)
begin
	if (PS == s0)
	begin
	result = 1'b0;
	end
	
	else
	begin
	result = (mar_reg == gom_reg);
	end
	
	CRASH = (result & ~J);
	DODGE = (result & J);
	
end

//counter
wire [6:0]temp_score;
seg7counter(CLK, count_rst, CRASH, DODGE, temp_score);
assign score = temp_score;

endmodule
