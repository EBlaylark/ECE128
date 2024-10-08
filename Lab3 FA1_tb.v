`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2024 02:02:36 PM
// Design Name: 
// Module Name: FA1_tb
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


module FA1_tb;



    reg A;
    reg B;
    reg CI;


    wire SUM;
    wire CO;

    FA1 uut (
        .A(A),
        .B(B),
        .CI(CI),
        .SUM(SUM),
        .CO(CO)
    );

    
    initial begin
      


        #10; A = 0; B = 0; CI = 0; 
       #10;  A = 0; B = 0; CI = 1;
       #10;  A = 0; B = 1; CI = 0; 
      #10;  A = 0; B = 1; CI = 1;
       #10;  A = 1; B = 0; CI = 0;  
       #10;  A = 1; B = 0; CI = 1; 
       #10;  A = 1; B = 1; CI = 0; 
       #10;  A = 1; B = 1; CI = 1; 
        
        
        $stop;
    end

endmodule
