module func_pass_by_ref;
  
  int result,addend,augend;
  initial
  begin
    $display("\t ----output for function passing by reference -----");
    //-------------------------------------------------------
    // assigning values to addend and augend
    //-------------------------------------------------------
    addend=5;
    augend=6;
    $display("\tBefore calling function -> addend = %0d , augend = %0d",addend,augend);
    $display("\tcalling the functions");
    //-------------------------------------------------------
    // calling the function with passing 5,6 directly and return value storing in variable result
    //-------------------------------------------------------
    result=sum_without_ref(addend,augend);
    //$display("\treturned from function without ref");
    //$display("\tstored the value of sum in result");
    //$display("\n\t@ %0t ns, value of sum is %0d",$time,result);
    $display("\tafter calling function without ref -> addend = %0d, augend =%0d",addend,augend);
    result=sum_with_ref(addend,augend);
    $display("\tafter calling function with ref -> addend = %0d, augend =%0d",addend,augend);
  end
  //-------------------------------------------------------
  // Writing the definition of the function.
  //-------------------------------------------------------
  function automatic int sum_with_ref(ref int var1,var2);
    int temp;
    $display("\n\tentered into with ref function");
    temp=var1;
    var1=var2;
    var2=temp;
    $display("\tswapped variables by using ref ");
    return var1+var2;
  endfunction : sum_with_ref

  function int sum_without_ref(input int var1,var2);
    int temp;
    $display("\n\tentered into without ref function");
    temp=var1;
    var1=var2;
    var2=temp;
    $display("\tswapped variables by without using ref ");
    return var1+var2;
  endfunction : sum_without_ref

endmodule
