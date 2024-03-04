module Unidad_Logica(

input a, b, op1,op2,
output resultado,cout
);

wire c1, c2, c3, c4;

assign c1 = a & b;
assign c2 = a | b;
assign c4 = a | b;

Full_Adder sum(

.a(a), .b(b) , 
.s(c3), .cout(cout)

);


//instacia mux41
mux41 MUX(

.D1(c1), .D2(c2), .D3(c3), .D4(c4), .A(op1), .B(op2),
.F(resultado)

);



endmodule
