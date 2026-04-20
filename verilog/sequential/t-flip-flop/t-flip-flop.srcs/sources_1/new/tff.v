`timescale 1ns / 1ps

module tff(
    input t,clk,
    output reg q,qb
    );
    
initial begin
q =0; qb=~q;
end

always @(posedge clk) begin
q = ~t;
qb = ~q;
end 
endmodule
