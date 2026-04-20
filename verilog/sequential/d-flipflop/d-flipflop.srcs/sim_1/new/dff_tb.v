`timescale 1ns / 1ps

module dff_tb();
reg d;
reg clk;
wire q,qb;

dff dut(.d(d),.clk(clk),.q(q),.qb(qb));

initial begin
clk =0;
forever
#2 clk=~clk;
end

initial begin
d=0;
#3 d=1;
#3 d=0;
#3 d=1;
#3 d=0;
#3 d=1;
$finish;
end
endmodule
