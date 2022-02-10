module counter_up_dwn_4bit (clock, enable, reset, up_down, Q);
	input clock, enable, reset, up_down;
	output reg [3:0] Q;
	
	
	
	always @(posedge clock)	begin
		if(up_down) begin //up counter
			if (reset)
				Q <= 0;
			else
				if (enable)
					Q <= Q + 1;
		end 
		else begin //down counter
			if (reset)
				Q <= 15;
			else
				if (enable)
					Q <= Q - 1;
		end
	end
endmodule