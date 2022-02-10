module MUX4to1_Seg7Dec_Beha (input [1:0] U, V, W, X, S, 
										output reg [6:0] SEG7);	 	
	always @ (U, V, W, X, S) begin
	//	Segment patterns  gfedcba (negative logic)
		parameter [6:0] C1 = 7'b0100001; // d
		parameter [6:0] C2 = 7'b0000110; // E
		parameter [6:0] C3 = 7'b1111001; // 1
		parameter [6:0] C4 = 7'b1000000; // 0
	
		case (S)
			0: begin // d E 1 0
					case (U)
						0: SEG7 = C1; // d
						1: SEG7 = C2; // E
						2: SEG7 = C3; // 1
						3: SEG7 = C4; // 0
					endcase
				end
			1: begin // E 1 0 d
					case (V)				
						0: SEG7 = C2; // E
						1: SEG7 = C3; // 1
						2: SEG7 = C4; // 0
						3: SEG7 = C1; // d
					endcase
				end
			2: begin // 1 0 d E
					case (W)
						0: SEG7 = C3; // 1
						1: SEG7 = C4; // 0
						2: SEG7 = C1; // d
						3: SEG7 = C2; // E
					endcase
				end
			3: begin // 0 d E 1
					case (X)
						0: SEG7 = C4; // 0
						1: SEG7 = C1; // d
						2: SEG7 = C2; // E
						3: SEG7 = C3; // 1
					endcase
				end
		endcase
	end
endmodule