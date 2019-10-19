module processor(Resetn, Run, Clock, Done, BusWires, HEX0, HEX1, HEX4, HEX5, HEX6, HEX7);
	
	input Resetn, Run;
	input Clock;
	output Done;
	output [15:0]BusWires;//o tamanho da mem abaixo deve ser diminuído para testes na FBGA
	reg [15:0]mem[65536:0];//memória compatível com endereços de 16 bits
	reg [15:0]PC1[63:0];//programa1
	reg [15:0]PC2[63:0];//programa2
	
	reg[15:0] memData;//auxiliar para memória
	wire store;
	wire [15:0] addr;
	wire [15:0] current;
	output [6:0] HEX0, HEX1, HEX6, HEX7, HEX4, HEX5;

  initial
	begin//valores iniciais, implementa o código 'loop' do pdf
		mem[3] = 16'b0000000000000100;
		
		PC1[0]=16'b0000000000100001;
		PC1[1]=16'b0000000000000001;
		PC1[2]=16'b0000000001000001;
		PC1[3]=16'b0000000000001010;
		PC1[4]=16'b0000001111010000;
		PC1[5]=16'b0000000101000011;
		PC1[6]=16'b0000001011111010;
		
	end
	
	proc i9_9900k(mem[addr], PC1[current], Resetn, Clock, Run, Done, BusWires, addr, store, current);
	//O módulo acima é o processador propriamente dito
  always @(posedge store)
  begin
    mem[addr] = BusWires;//guarda o dado na instrução de store
  end

	hexto7segment inst(PC1[current][3:0], HEX0);
	//display tarefa atual
	hexto7segment regX({1'b0, PC1[current][6:4]}, HEX1);
	hexto7segment regY({1'b0, PC1[current][9:7]}, HEX4);

	//hexto7segment din1(SW[7:4], HEX5);
	//hexto7segment din2(SW[14:11], HEX6);
	//hexto7segment din3(SW[15], HEX7);

endmodule
