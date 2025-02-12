module dataMemory (clk,addr,dataIn,dataOut,MemRd,MemWr);
  input MemWr;
  input MemRd;
  input clk;
  input [15:0] addr;
  input [15:0] dataIn;
  output reg [15:0] dataOut;

  // Define a memory array of 65536 8-bit registers
  reg [7:0] memory [0:256];	
  
  initial begin
	memory[0] =7; 
	memory[1] =8; 
	memory[2] =9; 
	memory[3] =10; 
	memory[4] =11;	
	memory[10] =11;		
	memory[13] =11;
	memory[17] =7; 
	memory[18] =32; 	   
	memory[19] =7; 
  
  end

  // Memory Read Operation
  always @(posedge clk) begin
    if (MemRd) begin
      dataOut[7:0] <= memory[addr];
      dataOut[15:8] <= memory[addr+1];
    end

    // Memory Write Operation
    else if (MemWr) begin
      memory[addr] <= dataIn[7:0];
      memory[addr+1] <= dataIn[15:8];
    end
  end

endmodule 