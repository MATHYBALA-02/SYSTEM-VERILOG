module foreach_loop();

  int array[5];

  initial 
  begin : MAIN_BLOCK

    $display("\t----foreach loop output----\n");

    foreach(array[i])
    begin : FOREACH_BLOCK
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end : FOREACH_BLOCK

    $display("\n\t----outside foreach loop----\n"); 
  end : MAIN_BLOCK

endmodule
