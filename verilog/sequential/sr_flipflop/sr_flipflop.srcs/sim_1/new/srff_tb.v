`timescale 1ns / 1ps

module srff_tb();    
reg [1:0]sr;
reg clk;
wire q,qb;

srff dut(.sr(sr),.clk(clk), .q(q), .qb(qb));

initial begin
    clk = 0;
    forever
        #2 clk = ~clk;        
end

initial begin
#2
    sr = 2'b00;
    #4
    sr = 2'b01;
    #4
    sr = 2'b10;
    #4
    sr = 2'b11;
    #4
    $finish;
end
endmodule
