//===============================================================================================================//

module fastspin(cin, cout);

   input cin;
   output reg cout;
   reg[31:0] count;
	
   parameter D = 32'd1000000; // make a 20 microsecond clock
	
   always @(posedge cin)
   begin
      count <= count + 32'd1;
         if (count >= (D-1)) begin
            cout <= ~cout;
            count <= 32'd0;
         end
   end
endmodule

//===============================================================================================================//

module mediumspin(cin, cout);

   input cin;
   output reg cout;
   reg[31:0] count;
	
   parameter D = 32'd5000000; // make a 100 microsecond clock
	
   always @(posedge cin)
   begin
      count <= count + 32'd1;
         if (count >= (D-1)) begin
            cout <= ~cout;
            count <= 32'd0;
         end
   end
endmodule

//===============================================================================================================//

module slowspin(cin, cout);

   input cin;
   output reg cout;
   reg[31:0] count;
	
   parameter D = 32'd8000000; // make a 160 microsecond clock
	
   always @(posedge cin)
   begin
      count <= count + 32'd1;
         if (count >= (D-1)) begin
            cout <= ~cout;
            count <= 32'd0;
         end
   end
endmodule

//===============================================================================================================//

