module tb_string();
  string s;
  string a, q;
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
    s = "Hello";
    a = "world";
    
    q = {s," ",a};
    $display("%s",q);
  end
endmodule
    
