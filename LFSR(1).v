module LFSR (clk, reset, randomnumber);

	input clk;
	input reset;
	output reg [3:0] randomnumber;

	wire feedback;

	assign feedback = ~(randomnumber[3] ^ randomnumber[2]); // bitwise negation of the XOR of the two most significant bits

always @(posedge clk, posedge reset)
  begin
    if (reset)
      randomnumber = 4'b0; // if reset, set random number to 0
    else
      randomnumber = {randomnumber[2:0],feedback}; // if not reset, shift bits of randum number to the right
																	// feedback is the XOR of the two most significant bits
  end
endmodule


// implement a 4-bit LFSR with feedback
// produce a pseudo-random sequence of bits
// used for the generation of the random numbers for the spins