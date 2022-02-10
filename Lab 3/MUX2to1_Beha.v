module MUX2to1_Beha (X, Y, S, ledS, M);
	input [3:0] X;
	input [3:0] Y;
   input S;
	
	output ledS;
	output reg [3:0] M;
	
	assign ledS = S;
	
	always @ (S) begin
		if (S == 0)
			M = X;
		else
			M = Y;
	end
endmodule