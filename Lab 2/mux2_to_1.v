// Lab 2 Part 1
// Design a 2-to-1 multiplexer

// Module 1-to-1 not gate
module notGate(x1, f);

	// Port declaration
	input x1;
	output f;
	
	// Assignment
	assign f = ~x1; // Negate input
endmodule

// Module 2-to-1 or gate
module orGate(x1, x2, f);

	// Port declaration
	input x1, x2;
	output f;
	
	// Assignment
	assign f = (x1 == 1 || x2 == 1) ? 1'b1 : 1'b0; // Conditional statement
endmodule

// Module 2-to-1 and gate
module andGate(x1, x2, f);

	// Port declaration
	input x1, x2;
	output f;
	
	// Assignment
	assign f = x1 & x2; // Bitwise compare
endmodule

// Module 2-to-1 multiplexer
module mux2_to_1(A, B, S, Z);

	// Port declaration
	input A, B, S;
	output Z;
	
	// Internal wire
	wire SN, ASN, SB;
	
	// Not gate (input, output)
	notGate U1(S, SN);
	
	// And gate (input, input, output)
	andGate U2(A, SN, ASN);
	andGate U3(S, B, SB);
	
	// Or gate (input, input, output)
	orGate U4(ASN, SB, Z);
endmodule
