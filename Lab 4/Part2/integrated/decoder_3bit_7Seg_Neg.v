module decoder_3bit_7Seg_Neg (DIG, Seg7);
	input [2:0] DIG;
	output reg [6:0] Seg7;
	
	always @(DIG) begin
		case (DIG)
		//              gfedcba     
			0: Seg7 = 7'b1000000; // 0
			1: Seg7 = 7'b1111001; // 1
			2: Seg7 = 7'b0100100; // 2
			3: Seg7 = 7'b0110000; // 3
		   4: Seg7 = 7'b0001000; // A
			5: Seg7 = 7'b0010010; // 5
			6: Seg7 = 7'b0000010; // 6
			7: Seg7 = 7'b0000110; // E
		endcase
	end
endmodule