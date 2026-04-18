module CAM (
   input wire [3:0] data_in,  
   input wire clk,            
   input wire we,             
   input wire [3:0] write_data, 
   input wire [3:0] write_addr, 
   output reg match,          
   output reg [3:0] match_addr 
);

   reg [3:0] memory [0:15];   
   integer i;

   initial begin
       for (i = 0; i < 16; i = i + 1) begin
           memory[i] = 4'b0000;
       end
   end
   always @(posedge clk) begin   
       if (we) begin
           memory[write_addr] <= write_data;
       end
   end
   always @(*) begin
       match = 0;
       match_addr = 4'b1111;  
       for (i = 0; i < 16; i = i + 1) begin
           if (memory[i] == data_in) begin
               match = 1;
               match_addr = i;
           end
       end
   end
endmodule