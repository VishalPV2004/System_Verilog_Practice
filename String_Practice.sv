//************************************************************
// Program 1 : Basic String Concatenation
//************************************************************
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

//************************************************************
// Program 2 : Concatenation with Integer (converted to string)
//************************************************************
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

//************************************************************
// Program 3 : Find Length of a String
//************************************************************
module tb();
  string s = "Vishal P V";
  int i = 0;
  initial begin
    i = s.len();
    $display("Length of the string : %d",i);
  end
endmodule

//************************************************************
// Program 4 : Display Each Character Separately
//************************************************************
module tb;
  string   dialog = "Hello!";

  initial begin
    $display ("%s", dialog);

    foreach (dialog[i]) begin
      $display ("%s", dialog[i]);
    end
  end
endmodule

//************************************************************
// Program 5 : Convert String to Integer using .atoi()
//************************************************************
module tb();
  int val;
  string s = "9";
  
  initial begin
    val = s.atoi();
    $display("%d",val);
  end
endmodule

//************************************************************
// Program 6 : Reverse a String
//************************************************************
module tb();
  string s = "System Verilog";
  
  initial begin
    for(int i = s.len()-1 ; i >= 0 ; i--)
      $write("%s",s[i]);
  end
endmodule

//************************************************************
// Program 7 : Extract Substring using .substr()
//************************************************************
module tb();
  string s = "System Verilog";
  string q = "";
  initial begin
    q = s.substr(1,4);
    $display("%s",q);
  end
endmodule

//************************************************************
// Program 8 : Count Character Frequency in a String
//************************************************************
module tb;
  string s = "Hello world";
  int hash_arr[26];

  initial begin
    s = s.tolower();
    foreach (s[i]) begin
      if (s[i] >= "a" && s[i] <= "z")
        hash_arr[s[i] - "a"]++;
    end
    
    for (int i = 0; i < 26; i++)
      if (hash_arr[i] > 0)
        $display("%c : %0d", i + "a", hash_arr[i]);
  end
endmodule

//************************************************************
// Program 9 : Palindrome Checker
//************************************************************
module tb;
  string s = "Madam";
  int c = 0;
  
  initial begin
    s = s.tolower();
    
    for (int i = 0; i < s.len() / 2; i++) begin
      if (s[i] != s[s.len() - 1 - i]) begin
        c++;
        $display("Not a palindrome");
        break;
      end
    end
    
    if (c == 0)
      $display("Yes, it is a palindrome");
  end
endmodule

//************************************************************
// Program 10 : Rotate String Left by k Characters
//************************************************************
`timescale 1ns/1ps
module DUT(input logic [159:0] bits, input int k);
  string s = "";

  initial begin
    s = bits;  // convert packed vector to string
    s = {s.substr(k, s.len()-1), s.substr(0, k-1)};
    $display("Rotated string: %s", s);
  end
endmodule
