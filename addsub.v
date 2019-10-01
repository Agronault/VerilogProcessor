module addsub(Control, A, Bus, G);
	input [15:0] A, Bus;
	input [1:0]Control;
	output reg [15:0] G;
	
	always @ (*)
	begin
		case (Control)
			2'b00 : G <= A + Bus; 
			2'b01 : G <= A - Bus;
			2'b10 : G <= A & Bus;
			2'b11 : 
			begin
			if(A<Bus)
				G <= 16'b1;
			else
				G <= 16'b0;
			end
		endcase
	end
endmodule