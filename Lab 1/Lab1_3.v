// Lab  1 Part 3
// Design a XOR circuit
module Lab1_3 (SW, LEDR);
	input [9:0] SW;
	output [4:0] LEDR;
	
	// Turn the LEDs on when either one of the input is on
	// Turn the LEDs off if both inputs are on
	assign LEDR[4] = (SW[9] & ~SW[8]) | (~SW[9] & SW[8]);
	assign LEDR[3] = (SW[7] & ~SW[6]) | (~SW[7] & SW[6]);
	assign LEDR[2] = (SW[5] & ~SW[4]) | (~SW[5] & SW[4]);
	assign LEDR[1] = (SW[3] & ~SW[2]) | (~SW[3] & SW[2]);
	assign LEDR[0] = (SW[1] & ~SW[0]) | (~SW[1] & SW[0]);
endmodule