module tb();
  
    logic a, b, y;

    always_comb 
      begin
      y = f(a,b);   
        $display("%t %b %b %b",$time, a, b, y);
      end
  function logic f(input logic a, input logic b);
      f = a & b; 
     
    endfunction
  
  initial begin
    a = 0; b = 0;
    #10; a = 1'b1;
    #20; b = 1'b1;
  end

endmodule


