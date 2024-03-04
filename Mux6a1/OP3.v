module OP3(

input [7:0]a,b,c,
output [15:0]r

);

assign r = (c*b)/a;

endmodule
