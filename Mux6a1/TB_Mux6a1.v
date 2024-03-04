`timescale 1ns / 1ps

module TB_Mux61;


	reg [7:0] a;
	reg [7:0] b;
	reg [7:0] c;
	reg [2:0] s;

	wire [15:0] z;

	UnidadLogica uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s), 
		.z(z)
	);

	initial begin

		a = 8'd1;
		b = 8'd2;
		c = 8'd3;
		s = 3'b000;
		#100;
		
		a = 8'd1;
		b = 8'd2;
		c = 8'd3;
		s = 3'b001;
		#100;
		
		a = 8'd1;
		b = 8'd2;
		c = 8'd3;
		s = 3'b010;
		#100;
		
		a = 8'd1;
		b = 8'd2;
		c = 8'd3;
		s = 3'b011;
		#100;
		
		a = 8'd1;
		b = 8'd2;
		c = 8'd3;
		s = 3'b100;
		#100;
		
		a = 8'd1;
		b = 8'd2;
		c = 8'd3;
		s = 3'b101;
		#100;

	end
      
endmodule

