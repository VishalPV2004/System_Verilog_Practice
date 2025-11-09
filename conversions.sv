
// Casting
module tb1;
  initial begin
    int val1 = int'(2.0 * 3.0);    // multiply reals → 6.0 → cast to int (6)
    int val2 = int'(2.8 * 3.0);    // 8.4 → rounds to 8
    int val3 = int'(2.5);          // rounds to 3 (nearest integer)

    $display("val1 = %0d", val1);  // 6
    $display("val2 = %0d", val2);  // 8
    $display("val3 = %0d", val3);  // 3
  end
endmodule

module tb2;
  initial begin
    shortint s; // 16-bit signed

    s = shortint'({8'hab, 8'hef});  // {0xAB, 0xEF} → 16'hABEF

    $display("s = 0x%h (%0d)", s, s);
  end
endmodule

// System tasks

module tb3;
  initial begin
    real r1 = 3.9;
    real r2 = -3.9;

    integer i1 = $rtoi(r1);   // 3.9 → 3
    integer i2 = $rtoi(r2);   // -3.9 → -3

    $display("i1 = %0d, i2 = %0d", i1, i2);
  end
endmodule

module tb4;
  initial begin
    int i = 7;
    real r = $itor(i);  // 7 → 7.0
    $display("r = %0f", r);
  end
endmodule
