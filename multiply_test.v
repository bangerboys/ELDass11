`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:30:32 11/04/2016
// Design Name:   multiply
// Module Name:   E:/Answer/multiply_test.v
// Project Name:  Answer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiply
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiply_test;

	// Inputs
	reg [3:0] multiplicand;
	reg [3:0] multiplier;
	reg clock;
	reg start;

	// Outputs
	wire [7:0] product;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	multiply uut (
		.multiplicand(multiplicand), 
		.multiplier(multiplier), 
		.product(product), 
		.clock(clock), 
		.start(start), 
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		multiplicand = 4;
		multiplier = 3;
		clock = 0;
		start = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

