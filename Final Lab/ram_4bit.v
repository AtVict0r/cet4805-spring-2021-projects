module ram_4bit (clk, en, addr, in, out);
	input clk, en;
	input [3:0] addr;
	input [3:0] in;
	output reg [3:0] out;
	
	reg [3:0] data [7:0];
	
	always @(negedge clk) begin
		if (en)
			data[addr] <= in;
		else
			out = data[addr]; // Read
	end
endmodule
	