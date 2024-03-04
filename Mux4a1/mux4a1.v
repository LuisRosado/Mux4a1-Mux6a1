
module mux41(

input D1,D2,D3,D4,
input A,B,
output F

);

assign F = ( (D1 & ~A & ~B )|(D2 & B & ~A)|(D3 & A & ~B) |(D4 & B & A) );

endmodule

