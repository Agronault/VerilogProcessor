module IRn(R, Rin, Clock, Q);
	parameter n = 10;
	input [n-1:0] R;	
	input Rin, Clock;
	output [n-1:0] Q;
	reg [n-1:0] Q;
	
	always @(posedge Clock)
		if (Rin)
			Q <= R;//escrita nova mem�ria
endmodule