module addsub(Control, A, Bus, G);
	input [15:0] A, Bus;
	input [1:0]Control;
	output reg [15:0] G;
	
	always @ (*)
	begin
		case (Control)
			2'b00 : G[15:0] <= (A[15:0] + Bus[15:0]); 
			2'b01 : G <= (A[15:0] - Bus[15:0]);
			2'b10 : G <= (A[15:0] & Bus[15:0]);
			2'b11 : 
			begin
			if(A[15:0]<Bus[15:0])
				G[15:0] <= 16'b1111111111111111;
			else
				G[15:0] <= 16'b0000000000000000;
			end
		endcase
	end
endmodule