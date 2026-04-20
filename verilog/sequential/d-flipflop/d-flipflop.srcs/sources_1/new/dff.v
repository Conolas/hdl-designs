`timescale 1ns / 1ps

module dff(
    input d, clk,
    output reg q,qb
    );
    
initial begin
q=0; qb=~q;
end
    
always @(posedge clk) 
begin
q = d;
qb=~q;
end
endmodule
