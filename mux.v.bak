module mux(Control, DIN, R0, R1, R2, R3, R4, R5, R6, R7 , G, BusWires);
	input [15:0]DIN;
	input [15:0] R0, R1, R2, R3, R4, R5, R6, R7;
	input [15:0]G;
	output reg [15:0]BusWires;

	input [9:0]Control; //0-7> R-out, 8> G-out, 9> DIN-out 

	always @ Control
	begin
		case (Control)
		10'b0000000001: BusWires <= DIN;
      10'b0000000010: BusWires <= G;
      10'b0000000100: BusWires <= R7;
      10'b0000001000: BusWires <= R6;
      10'b0000010000: BusWires <= R5;
      10'b0000100000: BusWires <= R4;
      10'b0001000000: BusWires <= R3;
      10'b0010000000: BusWires <= R2;
      10'b0100000000: BusWires <= R1;
      10'b1000000000: BusWires <= R0;
		endcase
	end
endmodule