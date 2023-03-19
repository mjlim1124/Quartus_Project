//DSD Lab Exercise 2 Part 2

module changing_char (selc, ch_a, ch_b, ch_c, ch_d, ch_e, dp0, dp1, dp2, dp3, dp4);

input [2:0] selc, ch_a, ch_b, ch_c, ch_d, ch_e;
output[6:0] dp0, dp1, dp2, dp3, dp4;
//sing_disp (sel, char0, char1, char2, char3, char4, disp)
sing_disp display0(selc, ch_a, ch_b, ch_c, ch_d, ch_e, dp0);
sing_disp display1(selc, ch_b, ch_c, ch_d, ch_e, ch_a, dp1);
sing_disp display2(selc, ch_c, ch_d, ch_e, ch_a, ch_b, dp2);
sing_disp display3(selc, ch_d, ch_e, ch_a, ch_b, ch_c, dp3);
sing_disp display4(selc, ch_e, ch_a, ch_b, ch_c, ch_d, dp4);

endmodule 
