`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:04 11/04/2016 
// Design Name: 
// Module Name:    booth 
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
module booth(
	input [3:0] input_a, // A
	input [3:0] m, // Multiply
	input [4:0] input_q, // multiplican
	output [3:0] output_a, 
	output [4:0] output_q
	);
reg [3:0] temp1;
reg [4:0] temp2;
wire [3:0] sum_a = input_a + m;
wire [3:0] dif_a = input_a + ~m + 1;

always@(input_a,m,input_q,sum_a,dif_a)	
begin
	if((input_q[1:0] == 2'b00) || (input_q[1:0] == 2'b11))
	begin 
		temp1 = {input_a[3], input_a[3:1]};
		temp2 = {input_a[0], input_q[4:1]};
	end
	if(input_q[1:0]  == 2'b01)
	begin
		temp1 = {sum_a[3], sum_a[3:1]};
		temp2 = {sum_a[0], input_q[4:1]};
	end
	if(input_q[1:0] == 2'b10)
	begin
		temp1 = {dif_a[3], dif_a[3:1]};
		temp2 = {dif_a[0], input_q[4:1]};
	end
end
assign output_a = temp1;
assign output_q = temp2;	
endmodule
