module ID_stage(clk,enable_ID,instruction,nextPC,opcode,mode,rd,BusA,BusB,Imm16,BTarget,jumpTarget,RAsrc,RBsrc,regDst,ExtOp);
  input clk;
  input wire enable_ID;
  input [15:0]instruction,nextPC;
  output [3:0] opcode;
  output [15:0] BusA,BusB,Imm16,BTarget,jumpTarget;
  output mode; 
  output reg [2:0] rd;
  input [1:0] RAsrc;
  input RBsrc,regDst,ExtOp;
  
  wire regWr =0;


  wire [2:0] rs2,RDI,RD,RS1;
  reg [2:0] rs1;
  wire [4:0]imm5;
  wire [11:0] mulOffset; 

  wire [15:0] BusW;

  wire [2:0] R7=3'b111;
  wire [2:0] R0 = 3'b000;
  wire [2:0] RA,RB,RW;



  assign opcode = instruction[15:12];
  assign mode = instruction[11];
  assign RD = instruction[11:9]; 
  assign RDI = instruction[10:8];
 // assign rs1 = instruction[8:6]; 
  // assign RS1 = instruction[7:5];
  assign rs2 = instruction[5:3];
  assign imm5 = instruction[4:0];
  assign mulOffset = instruction[11:0] << 1;
  assign jumpTarget = {nextPC[15:10],mulOffset[9:0]};

  always @(*)
	  if (opcode ==4'b0011 || opcode == 4'b0100 || opcode == 4'b0101 || opcode == 4'b0110 || opcode == 4'b0111 || opcode == 4'b1000 || opcode == 4'b1001 || opcode == 4'b1010 || opcode == 4'b1011)
		  begin
		  rd = RDI;
		  rs1 = instruction[7:5]; 
		  end
	  else	 
		  begin
		  rd =RD;
		  rs1 = instruction[8:6]; 
		   end
  mux3x1 #(3) mux1(rs1, R7, R0, RA, RAsrc);
  mux2x1 #(3) mux2(rs2,rd,RB,RBsrc);
  mux2x1 #(3) mux3(rd,R7,RW,regDst);
  registerFile regg(clk,RA,RB,RW,BusW,BusA, BusB,regWr);
  Extender #(5) Ex(imm5,Imm16,ExtOp);
  Adder add(nextPC,Imm16,BTarget);



endmodule