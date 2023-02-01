`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2023 16:15:44
// Design Name: 
// Module Name: tb
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


module tb();
    reg [7 : 0] A , B;
    wire [8 : 0] sum;
    
    csa #(.DATA_LENGTH(8)) DUT(A,B,sum);
    
    integer i,j;
    initial begin
        for(i = 0 ;i<256 ; i=i+1) begin
            for(j=0; j<256; j=j+1) begin
                A= i;
                B = j;
                #100;
            end
        end
    end
    
    
endmodule
