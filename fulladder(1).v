module fulladder(a, b, cin, sum, cout);

	input a;
	input b;
	input cin;
	output wire	sum;
	output cout;
		
	assign sum = a ^ b ^ cin;
							
	assign cout = (a & b) | (b & cin) | (a & cin);
	
endmodule

// add 3 inputs together
// produce a sum and a carry

// useful for adding multiple bits together
	// first 2 bits get added together
		// sum is produced with a potential carry
			// add the next two bits in addition to the carry
				// repeat