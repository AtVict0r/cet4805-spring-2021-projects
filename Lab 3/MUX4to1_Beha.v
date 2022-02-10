module MUX4to1_Beha (U, V, W, X, S, ledS, M);
	input [1:0] U;
	input [1:0] V;
	input [1:0] W;
	input [1:0] X;
   input [1:0] S;
	
	output [1:0] ledS;
	output reg [1:0] M;
	
	assign ledS = S;
	
	always @ (*) begin
		case (S)
			0: M = U;
			1: M = V;
			2: M = W;
			3: M = X;
		endcase
	end
endmodule