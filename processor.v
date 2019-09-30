module processor(SW, Clock, Done, BusWires);
	
	input [17:0]SW;// 0-15 DIN, 16 Resetn, 17 Run
	input Clock;
	output Done;
	output [15:0]BusWires;
	
	proc i9_9900k(SW[15:0], SW[16], Clock, SW[17], Done, BusWires);

	
	
endmodule
