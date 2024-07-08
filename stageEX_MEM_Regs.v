/*##########################################################################################
Note: Please don’t upload the assignments, template file/solution and lab. manual on GitHub or others public repository. 
Kindly remove them, if you have uploaded the previous assignments. 
It violates the BITS’s Intellectual Property Rights (IPR).
*******************************************************************************************/

module EX_MEM(input clk, input reset, input regWr, input memRead, input memWrite, input memToReg, 
				 input regWrite, input branch, input [4:0] destReg, input [31:0] memData, input [31:0] aluOut, input [31:0] branchAddress, input zero,
                  output memRead_EX_MEM,  output memWrite_EX_MEM, output memToReg_EX_MEM, output regWrite_EX_MEM, output branch_EX_MEM, output [4:0] destReg_EX_MEM, 
				 output [31:0] memData_EX_MEM, output [31:0] aluOut_EX_MEM, output [31:0] branchAddress_EX_MEM, output zero_EX_MEM);
	//WRITE YOUR CODE HERE, NO NEED TO DEFINE NEW VARIABLES
    
	register1bit memReadreg(clk,reset,regWr,memRead,memRead_EX_MEM);
	register1bit memWritereg(clk,reset,regWr,memWrite,memWrite_EX_MEM);
	register1bit memToReg_signal(clk,reset,regWr,memToReg,memToReg_EX_MEM);
	register1bit regWritesignal(clk,reset,regWr,regWrite,regWrite_EX_MEM);
	register1bit branchsignal(clk,reset,regWr,branch,branch_EX_MEM);
	register5bit destination_Reg(clk,reset,regWr,destReg,destReg_EX_MEM);
	register32bit memDatareg(clk,reset,regWr,memData,memData_EX_MEM);
	register32bit aluOutreg(clk,reset,regWr,aluOut,aluOut_EX_MEM);
	register32bit branchaddressreg(clk,reset,regWr,branchAddress,branchAddress_EX_MEM);
	register1bit zeroreg(clk,reset,regWr,zero,zero_EX_MEM);

endmodule
