`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2022 17:56:54
// Design Name: 
// Module Name: ALU_8bit
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


module ALU_8bit(
    input [7:0] inA,
    input [7:0] inB,
    input [2:0] opCode,
    output reg [15:0] outALU,
    output reg Cout
    );
    
    always @(*)
    begin
        Cout = 1'b0;
        case(opCode)
        3'b000: // Addition
        begin
            outALU = inA + inB ;
            Cout = outALU[8];
        end
        3'b001: // Subtraction
        begin
            outALU = inA - inB ;
            Cout = outALU[8];
        end
        3'b010: // Multiplication
        outALU = inA * inB;
        3'b011: // Logical shift left
        outALU = inA<<1;
        3'b100: // Logical shift right
        outALU = inA>>1;
        3'b101: // Logical AND
        outALU = inA & inB;
        3'b110: // Rotate left
        outALU = inA | inB;
        3'b111: // Rotate right
           outALU = inA ^ inB;
          default: outALU = inA + inB ; 
        endcase
    end
    
endmodule
