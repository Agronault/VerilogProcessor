module processor(SW, Clock, Done, BusWires, HEX0, HEX1, HEX4, HEX5, HEX6, HEX7);
	
	input [17:0]SW;// 0-15 DIN, 16 Resetn, 17 Run
	input Clock;
	output Done;
	output [15:0]BusWires;
	reg [15:0]mem[15:0];
	
	reg[15:0] memData;
	wire store;
	wire [15:0] addr;
	output [6:0] HEX0, HEX1, HEX6, HEX7, HEX4, HEX5;

  initial
	begin
		mem[3] = 16'b0000000000000100;
	end
	
	proc i9_9900k(mem[addr], SW[15:0], SW[16], Clock, SW[17], Done, BusWires, addr, store);

  always @(posedge store)
  begin
    mem[addr] = BusWires;      
  end

	hexto7segment inst(SW[3:0], HEX0);

	hexto7segment regX({1'b0, SW[6:4]}, HEX1);
	hexto7segment regY({1'b0, SW[9:7]}, HEX4);

	//hexto7segment din1(SW[7:4], HEX5);
	//hexto7segment din2(SW[14:11], HEX6);
	//hexto7segment din3(SW[15], HEX7);

endmodule
