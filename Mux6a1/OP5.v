module OP5(

input [7:0]a,b,c,
output [15:0]r

);

assign r = (b+c)*a;

endmodule
