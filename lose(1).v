module lose(clock, lose, HEX5VALUE, HEX4VALUE, HEX3VALUE, HEX2VALUE);

	input clock;
	input lose;
	
	output reg [7:0] HEX5VALUE;
	output reg [7:0] HEX4VALUE;
	output reg [7:0] HEX3VALUE;
	output reg [7:0] HEX2VALUE;

	fastspin(clock, cout2);
	
// animation for if the user loses

always @(posedge clock) begin
		
		HEX5VALUE <= (lose && (clock % 2 == 1)) ? 8'b11000111 : 8'b11111111; // flash this bit arrangement every positive edge of the clock
		HEX4VALUE <= (lose && (clock % 2 == 1)) ? 8'b11000000 : 8'b11111111; // flash this bit arrangement every positive edge of the clock
		HEX3VALUE <= (lose && (clock % 2 == 1)) ? 8'b10010010 : 8'b11111111; // flash this bit arrangement every positive edge of the clock
		HEX2VALUE <= (lose && (clock % 2 == 1)) ? 8'b10000110 : 8'b11111111; // flash this bit arrangement every positive edge of the clock
	
end

endmodule

// divides the clock counter by 2
// if it equals one it dispalys the value after the ?
// if it doesnt equal one, it displays the value after the ?
// since the counter is continuously counting down its remainder will always change therefore it will flash on and off