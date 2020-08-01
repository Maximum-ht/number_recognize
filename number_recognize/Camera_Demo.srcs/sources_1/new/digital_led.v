`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 16:52:53
// Design Name: 
// Module Name: digital_led
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


module digital_led(
    input [3:0]num,
    output reg [6:0]cword
    );
    always@(*)
        begin
            case(num)
                0:cword <= 7'b1111110;
                1:cword <= 7'b1000010;
                2:cword <= 7'b0110111;
                3:cword <= 7'b1100111;
                4:cword <= 7'b1001011;
                5:cword <= 7'b1101101;
                6:cword <= 7'b1111101;
                7:cword <= 7'b1000110;
                8:cword <= 7'b1111111;
                9:cword <= 7'b1101111;
                default:cword <= 7'b0011101;        
            endcase
        end
endmodule
