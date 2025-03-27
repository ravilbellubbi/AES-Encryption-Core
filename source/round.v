`timescale 10ns / 10ps

module round(text, key, out);
  input [127:0] text, key;
  output [127:0] out;
  
  wire [127:0] A,B,C;
  
  // Sub bytes
  genvar i;
  generate
		for (i=0; i<16; i=i+1) begin
			sub_bytes sub ( .in(text[8*(i+1)-1:8*i]), .out(A[8*(i+1)-1:8*i]));
		end
  endgenerate
  always @(A) $display("sub_bytes result = %h", A);

  // Shift rows
  shift_rows shift (.S_Box_out(A), .Shift_Rows(B));
  always @(B) $display("shift_rows result = %h", B);

  // Mix columns
  mix_cols mixcolumn (.in(B), .out(C));
	always @(C) $display("mix_cols result = %h", C);
	
  // Add round key
  assign out = C ^ key;

endmodule

