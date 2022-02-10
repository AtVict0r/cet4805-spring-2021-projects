module T_Flip_Flop (clock, T, Q);
	input clock, T;
	output reg Q;
	
	always @(posedge clock) begin
		if(T)
			Q <= ~Q;
	end
endmodule