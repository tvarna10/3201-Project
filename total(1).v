module total(value, ones, tens);
	
	input [7 : 0] value; 
	output reg [3 : 0] ones;
	output reg [3 : 0] tens;
	
	always @(value) begin
	
			ones = value % 10; // the value of the ones column is given as the modulo operation of dividing the inital value by 10
			tens = (value - (value % 10)) / 10; // the tens column is the initial value - the ones
	end

endmodule

// take the points to be displayed and split it onto its ones and tens
// ones will be displayed on HEX0
// tens will be displayed on HEX1