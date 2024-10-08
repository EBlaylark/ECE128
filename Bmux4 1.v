`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:37:52 PM
// Design Name: 
// Module Name: bmux4_1
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


module bmux4_1(

input [1:0]i0,i1,i2,i3,
input [1:0]s,
output reg [1:0] o);

always @(*)
begin
    case(s)
        0:begin o[0] = i0[0]; o[1] = i0[1]; end 
        1:begin o[0] = i1[0]; o[1] = i1[1]; end
        2:begin o[0] = i2[0]; o[1] = i2[1]; end
        3:begin o[0] = i3[0]; o[1] = i3[1]; end
    endcase
end

endmodule
