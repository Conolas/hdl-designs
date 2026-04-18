module testcam();
   reg [3:0] data_in;
  reg clk;
   reg we;
   reg [3:0] write_data;
   reg [3:0] write_addr;
   wire match;
   wire [3:0] match_addr;

   CAM dut(
       .data_in(data_in),
       .clk(clk),
       .we(we),
       .write_data(write_data),
       .write_addr(write_addr),
       .match(match),
       .match_addr(match_addr)
   );

   always #5 clk = ~clk;

   initial begin
       clk = 0;
       we = 0;
       data_in = 0;
       write_data = 0;
       write_addr = 0;

       #10;
       we = 1;
       write_addr = 4'b0001;
       write_data = 4'b1010; 
       #10;
       write_addr = 4'b0010;
       write_data = 4'b1100; 
       #10;
       write_addr = 4'b0011;
       write_data = 4'b1111;  
       #10;
       we = 0;

       #10;
       data_in = 4'b1010;  
       #10;
       if (match && match_addr == 4'b0001)
           $display("Test Case 1 Passed: Found '1010' at address 1");
       else
           $display("Test Case 1 Failed");
       data_in = 4'b1100;  
       #10;
       if (match && match_addr == 4'b0010)
           $display("Test Case 2 Passed: Found '1100' at address 2");
       else
           $display("Test Case 2 Failed");
       data_in = 4'b1111;  
       #10;
       if (match && match_addr == 4'b0011)
           $display("Test Case 3 Passed: Found '1111' at address 3");
       else
           $display("Test Case 3 Failed");
       data_in = 4'b0001; 
       #10;
       if (!match && match_addr == 4'b1111)
           $display("Test Case 4 Passed: No match for '0001'");
       else
           $display("Test Case 4 Failed");
       #10;
       $finish;
   end
endmodule