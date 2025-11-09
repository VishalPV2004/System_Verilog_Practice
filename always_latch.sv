module tb;
  logic d_out;
  logic a;
  logic enable;
  
  always_latch begin
    if (enable)
      d_out <= a;
  end
  
  initial begin
    a = 0; enable = 1;
    $monitor("time=%0t | a=%0d enable=%0d d_out=%0d", $time, a, enable, d_out);

    #10 a = 10;      
    #10 enable = 0;  
    #10 a = 5;       
    #10 enable = 1;  
  end
endmodule
