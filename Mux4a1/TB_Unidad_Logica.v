`timescale 1ns / 1ps

module TB_Unidad_Logica;

	// Inputs
	reg a;
	reg b;
	reg op1;
	reg op2;

	// Outputs
	wire resultado;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	Unidad_Logica uut (
		.a(a), 
		.b(b), 
		.op1(op1), 
		.op2(op2), 
		.resultado(resultado), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 1;
		op1 = 0;
		op2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        


	end
      
endmodule
