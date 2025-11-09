module tb;
   shortint            m_var_s;      // By default signed, and can represent positive and negative numbers
   shortint unsigned   m_var_us;     // Explicitly set to 'unsigned' and represents only positive numbers

  initial begin
    m_var_us = 2**16 - 1;
    m_var_s  = -1;

    // Convert an unsigned variable value to a signed variable value by casting
    $display("m_var_us=%0d m_var_us=%0d", signed' (m_var_us), m_var_us);
    $display("m_var_s=%0d  m_var_s=%0d", unsigned' (m_var_s), m_var_s);
  end
endmodule
