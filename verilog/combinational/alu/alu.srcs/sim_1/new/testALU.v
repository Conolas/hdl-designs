`timescale 1ns / 1ps

module testbench_ALU();
reg [3:0] A;
reg [3:0] B;
reg [2:0] OP;
wire [3:0] Result;

ALU ALU_inst (
.A(A),
.B(B),
.OP(OP),
.Result(Result)
);

initial begin
A = 4'b0010; B = 4'b0101; OP = 3'b000; #10;  // Test addition (OP=000)
A = 4'b0101; B = 4'b0010; OP = 3'b001; #10;  // Test subtraction (OP=001)
A = 4'b1100; B = 4'b1010; OP = 3'b010;#10;   // Test AND (OP=010)
A = 4'b1100; B = 4'b1010; OP = 3'b011;#10;   // Test OR (OP=011)
A = 4'b1100; B = 4'b1010; OP = 3'b100;#10;   // Test XOR (OP=100)
A = 4'b1111; B = 4'b1111; OP = 3'b111;#10;   // Test default case (OP other than above)
$finish;
end
endmodule