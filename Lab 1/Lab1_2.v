// Lab  1 Part 2
// Add push buttons to the circuit
module Lab1_2 (SW, LEDR, KEY0, KEY1);
	input [9:0] SW;
	input KEY0, KEY1;
	output [9:0] LEDR;
	
	// Turn LEDs 0-9 on when the corresponding switch 0-9 is on
	// Turn LEDs 0 and 1 off when the corresponding switch 0 and 1 is on
	// and the corresponding push button 0 and 1 is pressed
	assign LEDR[9] = SW[9];
	assign LEDR[8] = SW[8];
	assign LEDR[7] = SW[7];
	assign LEDR[6] = SW[6];
	assign LEDR[5] = SW[5];
	assign LEDR[4] = SW[4];
	assign LEDR[3] = SW[3];
	assign LEDR[2] = SW[2];
	assign LEDR[1] = SW[1] & KEY1;
	assign LEDR[0] = SW[0] & KEY0;
endmodule