`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2024 08:33:30 AM
// Design Name: 
// Module Name: clk_generator
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


module clk_generator(
    input clk,
    input reset,
    output clk_o
	);

	localparam CLOCK_FREQUENCY = 100000000;

	integer counter = 0;
	reg sq_wave_reg = 0;
	assign clk_o = sq_wave_reg;

 always @(posedge clk) begin
	if (reset) begin
		counter <= 8'h00;
		sq_wave_reg	 <= 1'b0;
	end

	else begin 
		
		// If counter is zero, toggle sq_wave_reg 
		if (counter == 8'h00) begin
			sq_wave_reg <= ~sq_wave_reg;
			
			// Generate 1Hz Frequency
			counter <= CLOCK_FREQUENCY/2 - 1;  
		end 
		
		// Else count down
		else 
			counter <= counter - 1; 
		end
	end

endmodule