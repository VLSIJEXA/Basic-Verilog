`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date: 01/01/2025 09:10:45 PM
// Design Name: 
// Module Name: johnson counter jk
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


module johnson_counter_jk(

   input clk,reset, output [3:0]out );
  wire t1,t2,t3,t4;  
    
    DFF utt1(.d(~t4),.clk(clk),.rst(reset),.q(t1));
    DFF utt2(.d(t1),.clk(clk),.rst(reset),.q(t2));
    DFF utt3(.d(t2),.clk(clk),.rst(reset),.q(t3));
    DFF utt4(.d(t3),.clk(clk),.rst(reset),.q(t4));
    assign out={t1,t2,t3,t4};
endmodule


module DFF(input d,clk,rst , output reg q

    );
    wire t1,clk1;
    assign t1=q^d;
    assign clk1=t1 & clk ;
    always @(posedge clk) begin
    if(rst)
    q<=1'b0;
    else
       q<=d;
    end
endmodule
