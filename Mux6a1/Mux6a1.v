`timescale 1ns / 1ps

module UnidadLogica(

input [7:0] a,b,c,
input [2:0]s,
output [15:0]z
);

wire [15:0]c1,c2,c3,c4,c5,c6;

OP1 op1(
.a(a),.b(b),.c(c),
.r(c1)
);
OP2 op2(
.a(a),.b(b),.c(c),
.r(c2)
);
OP3 op3(
.a(a),.b(b),.c(c),
.r(c3)
);
OP4 op4(
.a(a),.b(b),.c(c),
.r(c4)
);
OP5 op5(
.a(a),.b(b),.c(c),
.r(c5)
);
OP6 op6(
.a(a),.b(b),.c(c),
.r(c6)
);

mux6a1 MUX(

.D1(c1), .D2(c2), .D3(c3), .D4(c4), .D5(c5), .D6(c6), .s(s),
.z(z)

);


endmodule


module mux6a1 (

input [15:0] D1,D2,D3,D4,D5,D6,
input [2:0]s,
output reg[15:0]z
);

always @*
begin

  case(s)
    3'b000:
	begin
	z = D1;
	end
    3'b001:
	begin
	z = D2;
	end
    3'b010:
	begin
	z = D3;
	end
    3'b011:
	begin
	z = D4;
	end
    3'b100:
	begin
	z = D5;
	end
    3'b101:
	begin
	z = D6;
	end
    default:
	begin
	z = 0;
	end


  endcase
	
end



endmodule

