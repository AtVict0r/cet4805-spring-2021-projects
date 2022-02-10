module ALU16_Beha (A, B, S, SEL, OUT);
	input [2:0] A;
	input [2:0] B;
	input [3:0] S;

	output [3:0] SEL;
	output reg [3:0] OUT;
	
	assign SEL[0] = S[0];
	assign SEL[1] = S[1];
	assign SEL[2] = S[2];
	assign SEL[3] = S[3];

	always @ (S) begin
		case (S)
			0: OUT = 0; // constant 0
			1: OUT = A + B; // add A + B
			2: OUT = A - B; // subtract A - B
			3: OUT = A - 1; // decrement A
			4: OUT = A + 1; // increment A
			5: OUT = ~A; // Complement A
			6: OUT = A; // A
			7: OUT = A & B; // bitwise AND
			8: OUT = A | B; // bitwise OR
			9: OUT = A ^ B; // bitwise XOR
			10: OUT = B - A; // subtract B - A
			11: OUT = B - 1; // decrement B
			12: OUT = B + 1; // increment B
			13: OUT = ~B; // Complement B
			14: OUT = B; // B
			15: OUT = 1; // constant 1
			default: OUT = 6'bxxxxxx;
		endcase
	end
endmodule
