`timescale 1ns / 1ps

module srff(
    input [1:0]sr,
    input clk,
    output reg q,qb
    );
initial begin
q=0; qb=1;
end
always @(posedge clk)
begin
    case(sr)
        2'b00: begin q=q; qb = ~q; end
        2'b01: begin q=0; qb = ~q; end
        2'b10: begin q=1; qb = ~q; end
        2'b11: begin q=1'bz; qb = ~q; end
    endcase
end
endmodule
