// Lab 2 Part 2
// Design a 4-to-1 multiplexer

// Module 4-to-1 multiplexer
module mux4_to_1 (out, t0, t1, t2, t3, s1, s0);
	
	// Port declaration
	input t0, t1, t2, t3;
	input s0, s1;
	output out;
	
	// Internal wire
	wire s0n, s1n;
	wire y0, y1, y2, y3;
	
	// Not gate (output, input)
	not (s0n, s0);
	not (s1n, s1);
	
	// 3 input and gate (output, input, input, input)
	and (y0, t0, s1n, s0n);
	and (y1, t1, s1n, s0);
	and (y2, t2, s1, s0n);
	and (y3, t3, s1, s0);
	
	// 4 input or gate (output, input, input, input, input)
	or (out, y0, y1, y2, y3);
endmodule
