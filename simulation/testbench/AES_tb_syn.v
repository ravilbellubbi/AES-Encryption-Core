`timescale 10ns / 10ps

module AES_tb; 

    // Testbench Signals
    reg clk;
    reg rst_n;
    reg start_encryption;
    reg [127:0] plaintext_in;
    reg [127:0] key_in;
    wire [127:0] ciphertext_out;
    wire encryption_done;

    // Instantiate the AES Encryption Top Module
    AES DUT (
        .clk(clk),
        .rst_n(rst_n),
        .plaintext_in(plaintext_in),
        .key_in(key_in),
        .ciphertext_out(ciphertext_out),
        .encryption_done(encryption_done),
        .start_encryption(start_encryption)
    );

		// initial block for SDF back annotation
		initial begin
			$sdf_annotate("../../synthesis/netlists/AES_syn.sdf" , AES_tb.DUT, ,"back_annotate.log");
   	end

    // Clock Generation: Toggle clock every 5ns to create a 100 MHz clock
    always #5 clk = ~clk;
 

    // Test Stimulus: Apply inputs to the design under test
    initial begin
        // Initialize the clock and reset signals
        clk <= 0;
        rst_n <= 0;
        plaintext_in <= 128'd0;
        key_in <= 128'd0;
        start_encryption <= 1'b0;
		// repeat(2)@(negedge clk);
		#20
		
        // Apply Reset to initialize the AES core
        $display("Applying reset...");
        rst_n = 1;
        #20 // repeat(2)@(negedge clk); // Wait for a few clock cycles to apply reset
		
        // Test 1: Apply given plaintext and key
        $display("Starting Test 1: Apply given plaintext and key...");
        plaintext_in 	 <= 128'h000102030405060708090a0b0c0d0e0f; // 4x4 matrix as provided
        key_in			 <= 128'h00081018020a121a040c141c060e161e;  // 4x4 matrix as provided
        start_encryption <= 1;
        
        // Wait for the encryption process to complete
         // repeat(15)@(negedge clk); 
        wait (encryption_done ==1);
        repeat(2)@(negedge clk);
        
        // Display the resulting ciphertext
        $display("Ciphertext: %h", ciphertext_out);

        // End simulation after the test
        $finish;
    end

    // Monitor the output Cipher_Test at each time step
    initial begin
        $monitor("At time %t, cipher = %h", $time, ciphertext_out);
    end

endmodule
