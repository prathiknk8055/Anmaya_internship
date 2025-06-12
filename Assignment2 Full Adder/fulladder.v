// Code for Full Addder

module fulladder(input a,b,cin, output cout, sum);
  assign {cout,sum}= a+b+cin; //binary addition
endmodule

/* You can also use 

asssign sum = a^b^cin;
assign cout= (a&b)| (b&cin) | (a & cin);

*/
