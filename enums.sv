typedef enum {GREEN, RED, YELLOW} signal;

module tb();
  initial begin
    signal s;
    s = GREEN;                    // Initialize to GREEN
    
    for(int i = 0 ; i < s.num() ; i++) begin
      // Prints the same value because 's' never changes
      $write("%s : %d", s.name(), s);
    end
  end
endmodule
