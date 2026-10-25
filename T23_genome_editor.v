`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2026 12:30:18
// Design Name: 
// Module Name: T23_genome_editor
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


module T23_genome_editor(input clk, input rst,input edit_request, input[63:0] genome_in, input[4:0]edit_position, input[7:0] replacement, output reg [63:0] genome_out, output reg edit_success,output reg done);
always@(posedge clk)begin
genome_out<=64'b0;
edit_success<=1'b0;
done<=1'b0;
if(rst) begin
genome_out<=64'b0;
edit_success<=1'b0;
done<=1'b0;
end
else
if(edit_request) begin
if(edit_position<5'b11101) begin
genome_out[edit_position-:8]<=replacement;
edit_success=1'b1;
done=1;
end
end
end


    
endmodule
