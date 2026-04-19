`timescale 1ns / 1ps

module ram_tb();
reg clk, wr_rd;
reg [3:0]din;
reg [3:0]add;
wire [3:0]do;

ram dut(.clk(clk), .wr_rd(wr_rd), .din(din), .add(add), .do(do));

initial begin
clk = 0;
forever
#2 clk = ~clk;
end

initial begin
wr_rd=1; 
add = 4'b1010; din = 4'b0110; #4
add = 4'b1110; din = 4'b0101; #4
add = 4'b1011; din = 4'b0011; #4
add = 4'b0000; din = 4'b1111; #4

wr_rd = 0;
add = 4'b1110;  #4
add = 4'b0000;  #4
add = 4'b1011;  #4
add = 4'b1010;  #4
$finish;
end
endmodule
