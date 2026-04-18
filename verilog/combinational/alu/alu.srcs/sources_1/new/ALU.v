`timescale 1ns / 1ps

module ALU(
input [3:0]A,
input [3:0]B,
input [2:0]OP,
output [3:0]Result
);

assign Result = (OP == 3'b000) ? A + B :
                (OP == 3'b001) ? A - B :
                (OP == 3'b010) ? A & B :
                (OP == 3'b011) ? A | B :
                (OP == 3'b100) ? A ^ B :
                4'b0000;
endmodule