`timescale 1ns / 1ps

module tff_tb();
reg t,clk;
wire q,qb;

tff dut(.t(t),.clk(clk),.q(q),.qb(qb));

initial begin
clk = 0;
forever
#2 clk = ~clk;
end

initial begin
t=0; 
#3 t=1; 
#3 t=0; 
#3 t=1;
#3 t=0; 
#3 t=1;
#3 t=0; 
#3 t=1;
$finish;
end

endmodule
