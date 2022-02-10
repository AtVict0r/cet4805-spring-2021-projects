// Lab  1 Part 1
// Design a simple IO circuit
module Lab1_1 (SW, LEDR);
	input [9:0] SW;
	output [9:0] LEDR;
	
	// Turn LEDs 0-9 on when the corresponding switch 0-9 is on
	assign LEDR = SW;
endmodule