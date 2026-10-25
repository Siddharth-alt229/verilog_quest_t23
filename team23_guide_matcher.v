`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2026 11:11:20
// Design Name: 
// Module Name: team23_guide_matcher
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module team23_guide_matcher(
    input [15:0] guide,
    input [15:0] window,
    input [1:0] threshold,
    output reg [1:0] mismatch_count,
    output reg match
    );
    reg [1:0] guide_bases [7:0];
    reg [1:0] window_bases [7:0];
    reg [7:0] match_int;
    always@(*) begin
        guide_bases[7] = guide[15:14];
        guide_bases[6] = guide[13:12];
        guide_bases[5] = guide[11:10];
        guide_bases[4] = guide[9:8];
        guide_bases[3] = guide[7:6];
        guide_bases[2] = guide[5:4];
        guide_bases[1] = guide[3:2];
        guide_bases[0] = guide[1:0];
        window_bases[7] = window[15:14];
        window_bases[6] = window[13:12];
        window_bases[5] = window[11:10];
        window_bases[4] = window[9:8];
        window_bases[3] = window[7:6];
        window_bases[2] = window[5:4];
        window_bases[1] = window[3:2];
        window_bases[0] = window[1:0];
        
        if (window_bases[7] != guide_bases[7]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[6] != guide_bases[6]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[5] != guide_bases[5]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[4] != guide_bases[4]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[3] != guide_bases[3]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[2] != guide_bases[2]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[1] != guide_bases[1]) begin
            mismatch_count = mismatch_count + 1;
        end
        if (window_bases[0] != guide_bases[0]) begin
            mismatch_count = mismatch_count + 1;
        end
        if(mismatch_count < (threshold+1)) begin
            match = 1;
        end
     end
endmodule
