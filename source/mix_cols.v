`timescale 10ns / 10ps

module mix_cols(in, out);

    input [127:0] in;
    output[127:0] out;

    function [7:0] mb2; //multiply by 2
        input [7:0] x;
        begin 
            /* multiplication by 2 is shifting on bit to the left, and if the original 8 bits had a 1 @ MSB,
            xor the result with {1b}*/
            if(x[7] == 1) mb2 = ((x << 1) ^ 8'h1b);
            else mb2 = x << 1; 
        end 	
    endfunction

    /* 
        multiplication by 3 is done by:
        multiplication by {02} xor(the original x)
        so that 2+1=3. where xor is the addition of elements in finite fields
    */
    function [7:0] mb3; //multiply by 3
        input [7:0] x;
        begin  
            mb3 = mb2(x) ^ x;
        end 
    endfunction

    genvar i;

    // May need to register intermediate vales here to decrease critical path
    generate
        for(i=0;i<4;i=i+1) begin
            assign out[(i*32 + 24)+:8]= mb2(in[(i*32 + 24)+:8]) ^ mb3(in[(i*32 + 16)+:8]) ^ in[(i*32 + 8)+:8] ^ in[i*32+:8];
            assign out[(i*32 + 16)+:8]= in[(i*32 + 24)+:8] ^ mb2(in[(i*32 + 16)+:8]) ^ mb3(in[(i*32 + 8)+:8]) ^ in[i*32+:8];
            assign out[(i*32 + 8)+:8]= in[(i*32 + 24)+:8] ^ in[(i*32 + 16)+:8] ^ mb2(in[(i*32 + 8)+:8]) ^ mb3(in[i*32+:8]);
            assign out[i*32+:8]= mb3(in[(i*32 + 24)+:8]) ^ in[(i*32 + 16)+:8] ^ in[(i*32 + 8)+:8] ^ mb2(in[i*32+:8]);
        end
    endgenerate
    
    
    //    integer i;

    // always @* begin
    //     for (i = 0; i < 4; i = i + 1) begin
    //         // Extract 8-bit elements from state_in
    //         reg [7:0] s0, s1, s2, s3;
            
    //         s0 = state_in[(i*32 + 24) +: 8];
    //         s1 = state_in[(i*32 + 16) +: 8];
    //         s2 = state_in[(i*32 + 8)  +: 8];
    //         s3 = state_in[i*32 +: 8];

    //         // Compute MixColumns transformation
    //         state_out[(i*32 + 24) +: 8] = mb2(s0) ^ mb3(s1) ^ s2 ^ s3;
    //         state_out[(i*32 + 16) +: 8] = s0 ^ mb2(s1) ^ mb3(s2) ^ s3;
    //         state_out[(i*32 + 8)  +: 8] = s0 ^ s1 ^ mb2(s2) ^ mb3(s3);
    //         state_out[i*32 +: 8]         = mb3(s0) ^ s1 ^ s2 ^ mb2(s3);
    //     end
    // end

    // endmodule

endmodule
