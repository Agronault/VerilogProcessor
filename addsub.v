module addsub(Control, A, Bus, G);
	input [15:0] A, Bus;
	input Control;
	output reg [15:0] G;
	
	always @ Control
	begin
		case (Control)
			1'b0 : G <= A + Bus; 
			1'b1 : G <= A - Bus;
		endcase
	end
endmodule