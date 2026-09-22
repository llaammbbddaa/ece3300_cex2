`timescale 1ns / 1ps
//
//  Add code inside the adder4 module to implement a four-bit adder, using
//   four instances of the one-bit full adder module "fulladd".
//
//  The github tests will test the output of your code.
//  If it passes, you will see a green check mark at the top of the repository.
//

module adder4(
	      input [3:0]      a,
	      input [3:0]      b,
	      output [4:0] result);
   
// add your code here -- you must use four instances of the full adder "fulladd", defined below

wire [3:0] c;
fulladd one(a[0], b[0], 0, result[0], c[0]);
fulladd two(a[1], b[1], c[0], result[0], c[1]);
fulladd three(a[2], b[2], c[1], result[0], c[2]);
fulladd four(a[3], b[3], c[2], result[0], c[3]);
   
endmodule // adder4

module fulladd(
	       input  x,
	       input  y,
	       input  cin,
	       output sum,
	       output cout);

   assign sum = x ^ y ^ cin;
   assign cout = (x & y) | (x & cin) | (y & cin);
   
endmodule // fulladd

