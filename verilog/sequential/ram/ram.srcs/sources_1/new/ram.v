`timescale 1ns / 1ps

module ram(
    input clk, wr_rd, [3:0]din, [3:0]add,
    output reg [3:0]do
    );
    
reg [3:0]ram_block[0:15];
always @(posedge clk) begin
    if (wr_rd) begin
        ram_block[add] <= din;
        end
    else begin
        do <= ram_block[add];
        end
end
endmodule
