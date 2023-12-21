module fourbitadder(a, b, cin, sum, cout);

	input [3:0] a;
	input [3:0] b;
	input cin;
	
	output cout;
	output wire [3:0] sum;

	wire carry [2:0];
	
	fulladder FA0 (a[0], b[0], cin, sum[0], carry[0]);
	fulladder FA1 (a[1], b[1], carry[0], sum[1], carry[1]);
	fulladder FA2 (a[2], b[2], carry[1], sum[2], carry[2]);
	fulladder FA3 (a[3], b[3], carry[2], sum[3], cout);

endmodule

// use a sequence of full adders to add 4 bit binary numbers together
// this will be used as a tracker for the amount of clicks KEY[1] has had