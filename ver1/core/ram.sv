`default_nettype none

module ram (
	

	input wire				clk,
	input wire				load,
	input reg [31:0]		w_data,
	output reg [31:0]		r_data,

	);

	parameter memory_size	= 1024;

	reg [31:0]				mem [memory_size - 1:0];

	initial begin

	end

	always @(posedge clk)begin
		if(load) mem[w_addr]
endmodule


	
