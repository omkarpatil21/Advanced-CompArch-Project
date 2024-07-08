/*##########################################################################################
Note: Please don’t upload the assignments, template file/solution and lab. manual on GitHub or others public repository. 
Kindly remove them, if you have uploaded the previous assignments. 
It violates the BITS’s Intellectual Property Rights (IPR).
*******************************************************************************************/
`define ADDI    6'd8
`define LW      6'd35
`define SW      6'd43
`define BNE     6'd5
`define ADD     6'd0


module controlCircuit(input [5:0] opcode, output reg [1:0] aluOp, output reg aluSrc, output reg branch, output reg memWrite, output reg memRead, output reg memtoReg, output reg regDest, output reg regWrite );
  //WRITE YOUR CODE HERE, NO NEED TO DEFINE NEW VARIABLES
    always@(opcode)
    begin
      aluOp=2'b00;
      aluSrc=0;
      branch=0;
      memWrite=0;
      memRead=0;
      memtoReg=0;
      regDest=0;
      regWrite=0;
      case (opcode)
        `ADDI:
        begin
          regWrite=1;
          aluSrc = 1'b1;
          aluOp=2'b00;
        end
        `LW:
        begin
          aluSrc=1;
          memRead=1;
          memtoReg=1;
          regWrite=1;
        end
        `SW:
        begin
          aluSrc=1;
          memWrite=1;
        end
        `ADD:
        begin
          aluOp=2'b10;
          regWrite=1;
          regDest=1;
        end
        `BNE:
        begin
          aluOp=2'b01;
          branch=1;
        end 
      endcase
    end

endmodule

