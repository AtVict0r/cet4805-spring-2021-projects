module ALU8_Beha (A, B, S, SEL, OUT);
	input [2:0] A;
	input [2:0] B;
	input [2:0] S;

	output [2:0] SEL;
	output reg [3:0] OUT;
	
	assign SEL[0] = S[0];
	assign SEL[1] = S[1];
	assign SEL[2] = S[2];

	always @ (S) begin
		case (S)
			0: OUT = A + B; // add
			1: OUT = A - B; // subtract
			2: OUT = A - 1; // decrement A
			3: OUT = A + 1; // increment A
			4: OUT = ~A; // 1's complement of A
			5: OUT = A & B; // bitwise AND
			6: OUT = A | B; // bitwise OR
			7: OUT = A ^ B; // bitwise XOR			
			default: OUT = 6'bxxxxxx;
		endcase
	end
endmodule