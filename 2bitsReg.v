/*##########################################################################################
Note: Please don’t upload the assignments, template file/solution and lab. manual on GitHub or others public repository. 
Kindly remove them, if you have uploaded the previous assignments. 
It violates the BITS’s Intellectual Property Rights (IPR).
*******************************************************************************************/
//The Dff_Reg will be used for making the pipeline registers

module register2bit(input clk, input reset, input regWrite, input [1:0] inR, output [1:0] outR);
    //WRITE YOUR CODE HERE, NO NEED TO DEFINE NEW VARIABLES
    Dff_Reg reg1(clk,reset,regWrite,inR[0],outR[0]);
    Dff_Reg reg2(clk,reset,regWrite,inR[1],outR[1]);

endmodule	 
