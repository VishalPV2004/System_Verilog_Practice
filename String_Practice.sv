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
    
///////////////////////////////////////////////////////////////

module tb_string();
  string s;
  string a, q;
  int i = 24;
  
  initial begin 
    //$dumpfile("dump.vcd"); $dumpvars;
    s = "Hello";
    a = "world";
    
    q = {s," ",a};
    q = {q , "24"};
    $display("%s",q);
  end
endmodule

///////////////////////////////////////////////////////////////

module tb();
  string s = "Vishal P V";
  int i = 0;
  initial begin
    i = s.len();
    $display("Length of the string : %d",i);
  end
    
endmodule

///////////////////////////////////////////////////////////////

module tb;
  string   dialog = "Hello!";

  initial begin
    $display ("%s", dialog);

    foreach (dialog[i]) begin
      $display ("%s", dialog[i]);
    end
  end
endmodule

///////////////////////////////////////////////////////////////

module tb();
  int val;
  string s = "9";
  
  initial begin
    val = s.atoi();
    $display("%d",val);
  end
endmodule
