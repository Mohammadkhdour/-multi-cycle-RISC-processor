module instruction_Memory (pc,instruction);
  input [15:0] pc;
  output reg [15:0] instruction;
  reg [7:0] Memory [0:255];
  
   initial begin

   

    // SV-Type
    //Memory[2] = 8'b000_0011;
    //Memory[3] = 8'b1111_1110;

    // R-Type
    //Memory[4] = 8'b0001_0110; 
    //Memory[5] = 8'b0010_0100;// sub(4) $R1(3),$R1(3),$R2(3) 

    // I-Type 
    //Memory[6] = 8'b0110_0100; 
    //Memory[7] = 8'b0011_0110;  
	
	 // LW-Type 
    Memory[0] = 8'b0110_0011; 
    Memory[1] = 8'b0101_0011; 
	
	// LBS-Type 
    Memory[2] = 8'b0110_0011; 
    Memory[3] = 8'b0110_1100;  
	
	// BLT-Type 
    Memory[4] = 8'b1000_0110; 
    Memory[5] = 8'b1001_0011;  
	
	
	 // R-Type
    Memory[6] = 8'b0101_0000;// add(4) $R1(3),$R1(3),$R2(3) 
    Memory[7] = 8'b0001_0010;// add(4) $R1(3),$R1(3),$R2(3)
	
	// LBU-Type 
    Memory[8] = 8'b0110_0011; 
    Memory[9] = 8'b0110_0011; 
	
	
	// SW-Type 
    Memory[10] = 8'b0100_0011; 
    Memory[11] = 8'b0111_0000;
	
	
	
	// LBU-Type 
    Memory[12] = 8'b0110_0011; 
    Memory[13] = 8'b0110_0011; 
	
	// j-Type 
    Memory[14] = 8'b0000_0000; 
    Memory[15] = 8'b1100_0000; 	
	


end

  
  always @(*) begin
    instruction[7:0] <= Memory [pc];
    instruction [15:8] <= Memory [pc+1];
  end
endmodule 			 