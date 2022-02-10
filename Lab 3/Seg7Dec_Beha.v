module Seg7Dec_Beha (C, LEDR, HEX0);
	input [1:0] C;
	output [1:0] LEDR;
	output reg [6:0] HEX0;
	
	always @ (C) begin
		case (C)
			2'b00: HEX0 = 7'b0100001; //d
			2'b01: HEX0 = 7'b0000110; //E
			2'b10: HEX0 = 7'b1111001; //1
			2'b11: HEX0 = 7'b1000000; //0
			default: HEX0 = 7'bxxxxxxx;
		endcase
	end
	
	assign LEDR = C;
endmodule