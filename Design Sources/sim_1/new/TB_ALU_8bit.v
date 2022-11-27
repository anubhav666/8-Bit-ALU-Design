`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2022 18:06:59
// Design Name: 
// Module Name: TB_ALU_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB_ALU_8bit;
//Inputs
 reg[7:0] inA,inB;
 reg[2:0] opCode;

//Outputs
 wire[15:0] outALU;
 wire Cout;
 // Verilog code for ALU
 integer i;
 ALU_8_bit test_unit(
            inA,inB,  // ALU 8-bit Inputs                 
            opCode,// ALU Selection
            outALU, // ALU 8-bit Output
            Cout // Carry Out Flag
     );
    initial begin
    // hold reset state for 100 ns.
      inA = 8'h02;
      inB = 8'h0A;
      opCode = 3'h0;
      
      for (i=0;i<=7;i=i+1)
      begin
       #10;
       opCode = opCode + 1'b01;
      end;
      
      inA = 8'hf6;
      inB = 8'h0A;
      opCode = 3'h0;
      
      for (i=0;i<=7;i=i+1)
      begin
       #10;
       opCode = opCode + 1'b01;
      end;
    $finish;  
    end
endmodule
