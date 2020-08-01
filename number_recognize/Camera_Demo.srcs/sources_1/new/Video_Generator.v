`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 15:45:31
// Design Name: 
// Module Name: Video_Generator
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


module Video_Generator(
    input clk,
    input [6:0]num,
    input [10:0]Set_X,
    input [9:0]Set_Y,
    input Mode,
    input [23:0]RGB_Raw,
    output reg[23:0]RGB_Data=24'hffff00    //RBG
    );
    always@(*)
        begin
            if(Set_X>=500&&Set_X<550)
                begin
                    if(Set_Y>=150&&Set_Y<350)
                        begin
                            if(num[3])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else if(Set_Y>=400&&Set_Y<600)
                        begin
                            if(num[4])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else
                        RGB_Data<=RGB_Raw;
                end
            else if(Set_X>=550&&Set_X<750)
                begin
                    if(Set_Y>=100&&Set_Y<150)
                        begin
                            if(num[2])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else if(Set_Y>=350&&Set_Y<400)
                        begin
                            if(num[0])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else if(Set_Y>=600&&Set_Y<650)
                        begin
                            if(num[5])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else
                        RGB_Data<=RGB_Raw;
                end
            else if(Set_X>=750&&Set_X<800)
                begin
                    if(Set_Y>=150&&Set_Y<350)
                        begin
                            if(num[1])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else if(Set_Y>=400&&Set_Y<600)
                        begin
                            if(num[6])
                                RGB_Data<=24'hff00ff;
                            else
                                RGB_Data<=RGB_Raw;
                        end
                    else
                        RGB_Data<=RGB_Raw;
                end           
            else
               RGB_Data<=RGB_Raw; 
        end
endmodule
