module regn(R, Rin, Clock, Q);
	parameter n = 16;
	input [n-1:0] R;
	input Rin, Clock;
	output [n-1:0] Q;
	reg [n-1:0] Q;
	
	initial
	begin
		Q <= 16'b0000000000000000;//inicia em 0
	end
	
	always @(posedge Clock)
		if (Rin)
			Q <= R;//escrita
endmodule


module regn7(R, Rin, Clock, Q, Done, EnableI);
	parameter n = 16;
	input [n-1:0] R;
	input Rin, Clock;
	input Done, EnableI;
	output [n-1:0] Q;
	reg [n-1:0] Q;
	
	initial
	begin
		Q <= 16'b0000000000000000;//inicia em 0
	end
	
	always @(posedge Clock)
		if (Rin)
			Q <= R;//escrita
			
	always @ (posedge Done or posedge EnableI)
	   Q = Q + 1;
endmodule


