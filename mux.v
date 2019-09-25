module mux(Control, DIN, R0, R1, R2, R3, R4, R5, R6, R7 , G, Bus);

input [15:0]DIN;
input [15:0] R0, R1, R2, R3, R4, R5, R6, R7;
input [15:0]G;
output reg [15:0]Bus;

input [9:0]Control; //0-7> R-out, 8> G-out, 9> DIN-out 

always @ Control
begin
	case (Control)
	10'b0000000001 : Bus <= R0;
	10'b0000000010 : Bus <= R1;
	10'b0000000100 : Bus <= R2;
	10'b0000001000 : Bus <= R3;
	10'b0000010000 : Bus <= R4;
	10'b0000100000 : Bus <= R5;
	10'b0001000000 : Bus <= R6;
	10'b0010000000 : Bus <= R7;
	10'b0100000000 : Bus <= G;
	10'b1000000000 : Bus <= DIN;
	endcase
end
endmodule