`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:18 11/04/2016 
// Design Name: 
// Module Name:    multiply 
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
module multiply(
    input [3:0] multiplicand,
    input [3:0] multiplier,
    output [7:0] product,
	 input clock,
	 input start,
	 output busy
    );
wire [3:0]out_a1;
wire [4:0]out_q1;
wire [3:0]out_a2;
wire [4:0]out_q2;
wire [3:0]out_a3;
wire [4:0]out_q3;
wire [3:0]out_a4;
wire [4:0]out_q4;
booth b1(
	.input_a(4'b0000),
	.m(multiplier),
	.input_q({multiplicand,1'b0}),
	.output_a(out_a1),
	.output_q(out_q1)
);
booth b2(
	.input_a(out_a1),
	.m(multiplier),
	.input_q(out_q1),
	.output_a(out_a2),
	.output_q(out_q2)
);
booth b3(
	.input_a(out_a2),
	.m(multiplier),
	.input_q(out_q2),	
	.output_a(out_a3),
	.output_q(out_q3)
);
booth b4(
	.input_a(out_a3),
	.m(multiplier),
	.input_q(out_q3),
	.output_a(out_a4),
	.output_q(out_q4)
);
assign product = {out_a4, out_q4[4:1]};
endmodule
