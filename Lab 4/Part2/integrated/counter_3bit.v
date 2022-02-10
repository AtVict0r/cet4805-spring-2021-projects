module counter_3bit (clock, enable, reset, Q);
	input clock, enable, reset;
	output reg [2:0] Q;
	
	always @(posedge clock)	begin
		if (reset)
			Q <= 0;
		else
			if (enable)
				Q <= Q + 1;
	end
endmodule