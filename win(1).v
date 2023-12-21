module win(clock, win, HEX5VALUE, HEX4VALUE, HEX3VALUE, HEX2VALUE);

	input clock;
	input win;
	
	output reg [7:0] HEX5VALUE;
	output reg [7:0] HEX4VALUE;
	output reg [7:0] HEX3VALUE;
	output reg [7:0] HEX2VALUE;

	fastspin(clock, cout2);

// animation for if the user wins

always @(posedge clock) begin
	
		HEX5VALUE <= (win && (clock % 2 == 1)) ? 8'b11111110 : 8'b11110111; // flash this bit arrangement every positive edge of the clock
		HEX4VALUE <= (win && (clock % 2 == 1)) ? 8'b11110111 : 8'b11111110; // flash this bit arrangement every positive edge of the clock
		HEX3VALUE <= (win && (clock % 2 == 1)) ? 8'b11111110 : 8'b11110111; // flash this bit arrangement every positive edge of the clock
		HEX2VALUE <= 8'b11111111;
		
end

endmodule

// divides the clock counter by 2
// if it equals one it dispalys the value after the ?
// if it doesnt equal one, it displays the value after the ?
// since the counter is continuously counting down its remainder will always change therefore it will flash on and off