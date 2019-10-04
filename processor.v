module processor(Resetn, Run, Clock, Done, BusWires, HEX0, HEX1, HEX4, HEX5, HEX6, HEX7);
	
	input Resetn, Run;
	input Clock;
	output Done;
	output [15:0]BusWires;
	reg [15:0]mem[65536:0];
	reg [15:0]PC[63:0];
	
	reg[15:0] memData;
	wire store;
	wire [15:0] addr;
	wire [15:0] current;
	output [6:0] HEX0, HEX1, HEX6, HEX7, HEX4, HEX5;

  initial
	begin
		mem[3] = 16'b0000000000000100;
		
		PC[0]=16'b0000000000100001;
		PC[1]=16'b0000000000000001;
		PC[2]=16'b0000000001000001;
		PC[3]=16'b0000000000001010;
		PC[4]=16'b0000001111010000;
		PC[5]=16'b0000000101000011;
		PC[6]=16'b0000001011111010;
		
	end
	
	proc i9_9900k(mem[addr], PC[current], Resetn, Clock, Run, Done, BusWires, addr, store, current);

  always @(posedge store)
  begin
    mem[addr] = BusWires;      
  end

	hexto7segment inst(PC[current][3:0], HEX0);

	hexto7segment regX({1'b0, PC[current][6:4]}, HEX1);
	hexto7segment regY({1'b0, PC[current][9:7]}, HEX4);

	//hexto7segment din1(SW[7:4], HEX5);
	//hexto7segment din2(SW[14:11], HEX6);
	//hexto7segment din3(SW[15], HEX7);

endmodule
