`timescale 1ps / 1ps

module digital_clock_tb( );
reg clk;
reg rst;
wire [5:0] seconds;
wire [5:0] minutes;
wire [4:0] hours;

digital_clock uut(
         .clk(clk), 
        .rst(rst), 
        .seconds(seconds), 
        .minutes(minutes), 
        .hours(hours)
        );
        
    initial clk=0;
    always #5 clk=~clk;
    
    initial begin
       rst=1;
       #100
       rst=0;
       end
endmodule
