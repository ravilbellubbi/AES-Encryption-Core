`timescale 10ns / 10ps

module final_round(in,key,out);
  input [127:0]in, key;
  output [127:0] out;
  wire [127:0] A,B,C;
                      
  // Sub bytes
  genvar i;
  generate
		for (i=0; i<16; i=i+1) begin
			sub_bytes sub_final ( .in(in[8*(i+1)-1:8*i]), .out(A[8*(i+1)-1:8*i]));
		end
  endgenerate

  // Shift rows
  shift_rows shift_final (
                          .S_Box_out(A), 
                          .Shift_Rows(B)
                        );
  
  // Add round key
  assign out = B^key;

 endmodule
