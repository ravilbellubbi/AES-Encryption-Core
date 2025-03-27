`timescale 10ns / 10ps

module AES(clk,rst_n,plaintext_in,key_in,start_encryption,ciphertext_out, encryption_done);
  input wire clk, rst_n;
  input wire start_encryption;
  input wire [127:0] plaintext_in;
  input wire [127:0] key_in;
  output reg [127:0] ciphertext_out;
  output reg encryption_done;

  // Register inputs and outputs
  reg start_encryption_q;
  reg [127:0] plaintext_in_q;
  reg [127:0] key_in_q;
  // reg [127:0] ciphertext_out_next;
  reg encryption_done_next;
  
  // Intermediate values
  reg encrypting;
	reg [3:0] round_counter;
  reg [127:0] B, C, D, E, F, G, H, I, J;
  wire [127:0] B_next, C_next, D_next, E_next, F_next, G_next, H_next, I_next, J_next;
  reg [127:0] key0,key1,key2,key3,key4,key5,key6,key7,key8,key9,key10;
  wire [127:0] key0_next,key1_next,key2_next,key3_next,key4_next,key5_next,key6_next,key7_next,key8_next,key9_next,key10_next;
  wire [127:0] ciphertext_out_next;
  
	// Instantiate modules
	// Key expansion
	key_expand k(.clk(clk), .key(key_in_q), .key_s0(key0_next), .key_s1(key1_next), .key_s2(key2_next), .key_s3(key3_next), .key_s4(key4_next), 
								.key_s5(key5_next), .key_s6(key6_next), .key_s7(key7_next), .key_s8(key8_next), .key_s9(key9_next), .key_s10(key10_next));
	
	// Initial add round key 
  wire [127:0] A = plaintext_in_q ^ key_in_q;
  
  // Rounds 1-9
  round round1 (.text(A), .key(key1), .out(B_next));
  round round2 (.text(B), .key(key2), .out(C_next));
  round round3 (.text(C), .key(key3), .out(D_next));
  round round4 (.text(D), .key(key4), .out(E_next));
  round round5 (.text(E), .key(key5), .out(F_next));
  round round6 (.text(F), .key(key6), .out(G_next));
  round round7 (.text(G), .key(key7), .out(H_next));
  round round8 (.text(H), .key(key8), .out(I_next));
  round round9 (.text(I), .key(key9), .out(J_next));

	// Final round
  final_round final10 (.in(J), .key(key10), .out(ciphertext_out_next)); 

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ciphertext_out      <= 128'd0;
      encryption_done     <= 1'b0;
      start_encryption_q  <= 1'b0;
      plaintext_in_q      <= 128'd0;
      key_in_q            <= 128'd0;
      encrypting          <= 0;
      round_counter       <= 4'd0;
    end
    else begin
      if (start_encryption && !encrypting) begin
        plaintext_in_q <= plaintext_in;
        key_in_q <= key_in;
        encrypting <= 1'b1;
        round_counter <= 4'd0;
        encryption_done <= 1'b0;
      end

      else if (encrypting) begin
        round_counter <= round_counter + 1;
        
        // Register intermediate results
        B <= B_next;
        C <= C_next;
        D <= D_next;
        E <= E_next;
        F <= F_next;
        G <= G_next;
        H <= H_next;
        I <= I_next;
        J <= J_next;
        
        key1 <= key1_next;
        key2 <= key2_next;
        key3 <= key3_next;
        key4 <= key4_next;
        key5 <= key5_next;
        key6 <= key6_next;
        key7 <= key7_next;
        key8 <= key8_next;
        key9 <= key9_next;
        key10<= key10_next;
      end

      encryption_done     <= encryption_done_next;
		  ciphertext_out      <= ciphertext_out_next;
    end
  end

  always @(*) begin
    // Set outputs if done
    encryption_done_next  <= encryption_done;
    if (round_counter >= 4'd10) begin
      encryption_done_next <= 1'b1;
      // encrypting <= 0;
    end
  end
    

endmodule
