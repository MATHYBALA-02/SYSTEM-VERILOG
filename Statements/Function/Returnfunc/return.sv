module func_return_void;
  
  initial
  begin
    display("\t ----output for function void return type-----");
    display("\t passing string to function for displaying");
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function void display(string str);
    $display("%s",str);
  endfunction : display

endmodule
