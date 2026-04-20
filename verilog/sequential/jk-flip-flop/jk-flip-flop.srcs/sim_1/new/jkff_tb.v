`timescale 1ns / 1ps

module jkff_tb();
reg [1:0]jk;
reg clk;
wire q,qb;
 
jkff dut(.jk(jk),.clk(clk), .q(q), .qb(qb));

initial begin
    clk = 0;
    forever
        #2 clk = ~clk;        
end

initial begin
#2
    jk = 2'b00;
    #4
    jk = 2'b01;
    #4
    jk = 2'b10;
    #4
    jk = 2'b11;
    #4
    $finish;
end   
endmodule
