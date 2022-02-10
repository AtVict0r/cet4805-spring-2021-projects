// Lab 2 Part 3
// Design a 2-to-4 decoder

// Module 2-to-4 decoder (output, output, output, output, input, input, input)
module dec2_to_4 (Y0, Y1, Y2, Y3, A0, A1, EN);
	
	// Port declaration
	input A0, A1, EN;
	output Y0, Y1, Y2, Y3;
	
	// Internal wire
	wire U0, U1;
	
	// Not gate (output, input)
	not (U0, A0);
	not (U1, A1);
	
	// 3 input and gate (output, input, input, input)
	and (Y0, U0, U1, EN);
	and (Y1, A0, U1, EN);
	and (Y2, U0, A1, EN);
	and (Y3, A0, A1, EN);
endmodule
