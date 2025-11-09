//=====================================================
// 1️⃣ Structure using typedef
//=====================================================
module tb1();
  typedef struct {
    int a, b;
    shortreal c;
  } main;

  main obj = '{1, 2, 3.32};

  initial begin
    $display("tb1 -> a=%0d b=%0d c=%0f", obj.a, obj.b, obj.c);
  end
endmodule


//=====================================================
// 2️⃣ Anonymous structure
//=====================================================
module tb2();
  struct {
    int a, b;
    shortreal c;
  } obj1 = '{2, 3, 3.2};

  initial begin
    $display("tb2 -> a=%0d b=%0d c=%0f", obj1.a, obj1.b, obj1.c);
  end
endmodule


//=====================================================
// 3️⃣ Array of structures using typedef
//=====================================================
module tb3();
  typedef struct {
    int a, b;
    shortreal c;
  } main;

  main obj[2:0] = '{
    '{1,1,1.1},
    '{2,2,2.2},
    '{3,3,3.3}
  };

  initial begin
    $display("tb3 -> obj[0]: a=%0d b=%0d c=%0f", obj[0].a, obj[0].b, obj[0].c);
    $display("tb3 -> obj[1]: a=%0d b=%0d c=%0f", obj[1].a, obj[1].b, obj[1].c);
    $display("tb3 -> obj[2]: a=%0d b=%0d c=%0f", obj[2].a, obj[2].b, obj[2].c);
  end
endmodule


//=====================================================
// 4️⃣ Array of anonymous structures
//=====================================================
module tb4();
  struct {
    int a, b;
    shortreal c;
  } obj[1:0] = '{
    '{1,1,1.1},
    '{2,2,2.2}
  };

  initial begin
    $display("tb4 -> obj[0]: a=%0d b=%0d c=%0f", obj[0].a, obj[0].b, obj[0].c);
    $display("tb4 -> obj[1]: a=%0d b=%0d c=%0f", obj[1].a, obj[1].b, obj[1].c);
  end
endmodule
