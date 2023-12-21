module eightbitadder(a, b, cin, sum, cout);

	input [7:0] a;
	input [7:0] b;
	input cin;
	
	output cout;
	output wire [7:0] sum;

	wire carry [6:0];
	
	fulladder FA0 (a[0], b[0], cin, sum[0], carry[0]);
	fulladder FA1 (a[1], b[1], carry[0], sum[1], carry[1]);
	fulladder FA2 (a[2], b[2], carry[1], sum[2], carry[2]);
	fulladder FA3 (a[3], b[3], carry[2], sum[3], carry[3]);
	fulladder FA4 (a[4], b[4], carry[3], sum[4], carry[4]);
	fulladder FA5 (a[5], b[5], carry[4], sum[5], carry[5]);
	fulladder FA6 (a[6], b[6], carry[5], sum[6], carry[6]);
	fulladder FA7 (a[7], b[7], carry[6], sum[7], cout);

endmodule

// use a sequence of full adders to add 8 bit binary numbers together
// this will be used to add the scores of each round together