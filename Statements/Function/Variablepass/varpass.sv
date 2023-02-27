module func_pass_by_variables;
  
  int result,addend,augend;
  initial
  begin
    $display("\t ----output for function passing by values through variables-----");
    //-------------------------------------------------------
    // assigning values to addend and augend
    //-------------------------------------------------------
    addend=5;
    augend=6;
    $display("\tcalling the function");
    //-------------------------------------------------------
    // calling the function with arguements as variables and
    // return value storing in variable result
    //-------------------------------------------------------
    result=sum(addend,augend);
    $display("\treturned from function and");
    $display("\tstored the value of sum in result");
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function int sum(input int var1,var2);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction : sum

endmodule
