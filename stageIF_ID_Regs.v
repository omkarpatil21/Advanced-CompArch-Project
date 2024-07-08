/*##########################################################################################
Note: Please don’t upload the assignments, template file/solution and lab. manual on GitHub or others public repository. 
Kindly remove them, if you have uploaded the previous assignments. 
It violates the BITS’s Intellectual Property Rights (IPR).
*******************************************************************************************/



module IF_ID(input clk, input reset, input regWr, input [31:0] ir, input [31:0] pc, output [31:0] ir_IF_ID, output [31:0] pc_IF_ID);
	//WRITE YOUR CODE HERE, NO NEED TO DEFINE NEW VARIABLES
	register32bit pc_reg(clk,reset,regWr,pc,pc_IF_ID);
	register32bit ir_reg(clk,reset,regWr,ir,ir_IF_ID);

endmodule
