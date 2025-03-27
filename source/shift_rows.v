`timescale 10ns / 10ps

module shift_rows(S_Box_out,Shift_Rows);
  input [127:0]S_Box_out;
  output [127:0]Shift_Rows;
  assign Shift_Rows[127:120] = S_Box_out[127:120];
  assign Shift_Rows[119:112] = S_Box_out[87:80];
  assign Shift_Rows[111:104] = S_Box_out[47:40];
  assign Shift_Rows[103:96]  = S_Box_out[7:0];
  assign Shift_Rows[95:88]   = S_Box_out[95:88];
  assign Shift_Rows[87:80]   = S_Box_out[55:48];
  assign Shift_Rows[79:72]   = S_Box_out[15:8];
  assign Shift_Rows[71:64]   = S_Box_out[103:96];
  assign Shift_Rows[63:56]   = S_Box_out[63:56];
  assign Shift_Rows[55:48]   = S_Box_out[23:16];
  assign Shift_Rows[47:40]   = S_Box_out[111:104];
  assign Shift_Rows[39:32]   = S_Box_out[71:64];
  assign Shift_Rows[31:24]   = S_Box_out[31:24];
  assign Shift_Rows[23:16]   = S_Box_out[119:112];
  assign Shift_Rows[15:8]    = S_Box_out[79:72];
  assign Shift_Rows[7:0]     = S_Box_out[39:32];
endmodule
