`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2024 12:59:00 PM
// Design Name: 
// Module Name: mux16to1_tb
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


module mux16to1_tb();
reg[15:0]A; 
reg[3:0]S; 
wire F;

mux16to1 DUT(.in(A),.sel(S),.out(F));
initial begin
$dumpfile("mux16to1.vcd");
$dumpvars(0,mux16to1_tb);
$monitor($time,"A=%h,S=%h,F=%b",A,S,F);
#5 A=16'h3f0a; S=4'h0;
#5 S=4'h1;
#5 S=4'h6;
#5 S=4'hc;
#5 $finish;

end
endmodule