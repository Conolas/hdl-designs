`timescale 1ns / 1ps

module testrom();
reg clk,en;
reg [3:0]add;
wire [3:0]data;

rom dut(.clk(clk), .en(en), .add(add), .data(data));

initial begin
clk = 0;
forever
#2 clk = ~clk;
end

initial begin
en = 1; #2
add = 2; #4
add = 6; #4
add = 11; #4
add = 15; #4
add = 7; #4
add = 3; #4
add = 0; #4
add = 4; #4
add = 12; #4
add = 14; #4
add = 8; #4
add = 5; #4
add = 9; #4
add = 10; #4
add = 13; #4
add = 11; #4
add = 1; #4
$finish;
end
endmodule