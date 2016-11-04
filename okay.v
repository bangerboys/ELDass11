`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:29 11/04/2016 
// Design Name: 
// Module Name:    okay 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module okay(
	input [3:0] multiplicand,
    input [3:0] multiplier,
    output reg [7:0] product,
	 input clock,
	 input start,
	 output busy
	 );
	 always@(posedge start)
	 begin
		product = $signed(multiplicand) * $signed(multiplier);
	end


endmodule
