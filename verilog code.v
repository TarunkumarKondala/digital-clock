`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
module digital_clock(clk,rst,seconds,minutes,hours

    );
    input clk,rst;
    output reg[5:0]seconds;
    output reg[5:0]minutes;
    output reg[5:0]hours;
    
    always@(posedge(clk) or posedge(rst))
    begin
      if (rst==1'b1)
      begin
         seconds=0;
         minutes=0;
         hours=0;
       end
     else
      // if(clk==1'b1)
        begin 
         seconds=seconds+1;
         if(seconds==60)
         begin
          seconds=0;
          minutes=minutes+1;
          if (minutes==60)
          begin
          minutes=0;
          hours= hours+1;
          if (hours==24)
          begin
          hours=0;
          end
         end
        end
       end
      end
         
          
endmodule
