`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:24 02/09/2022
// Design Name:   array6
// Module Name:   E:/engineering/PROGRAMMES/xilinix/projects/vlsi/array6_tb.v
// Project Name:  vlsi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: array6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module array6_tb;

	// Inputs
	reg [3:0] B;
	reg [7:0] L;
	reg Z;

	// Outputs
	wire [7:0] Mul_out;
	wire [7:0] Divider_out;
	wire [3:0] remainder;
	// Instantiate the Unit Under Test (UUT)
	array6 uut (
		.B(B), 
		.L(L), 
		.Z(Z), 
		.Mul_out(Mul_out), 
		.Divider_out(Divider_out),
		.remainder(remainder)
	);

	initial begin
		// Initialize Inputs
		B = 1;
		L = 255;
		Z = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

