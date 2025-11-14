module tb;
  int arr[] = '{10,3,2,4,2,9,0,1,3,6};
  int res[$];
  int tot = 0;

  initial begin
    res = arr.find(x) with (x > 3);
    $display("%p", res);
    
    res = arr.find_index with (item > 1);
    $display("%p", res);
    
    res = arr.find_first_index with (item > 4);
    $display("%p", res);
    
    res = arr.max with (item > 9);
    $display("%p", res);
    
    res = arr.min with (item < 3);
    $display("%p", res);
    
    res = arr.max with (item > 1);
    $display("%p", res);
    
    arr.sort();
    $display("%p", res);
    
    tot = arr.sum() with (item > 4);
    $display("%d", tot);
  end
endmodule
