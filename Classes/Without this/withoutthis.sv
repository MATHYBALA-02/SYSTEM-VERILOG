class base_class;      //define class 

   string fan ="OFF" ; //define class properties
   string switch="OFF"; //

   function void open_electricity();
     string fan="ON";
     string switch="ON";
     fan=fan;
     switch=switch;
     $display("Inside class method :- switch is %0s that's why fan is %0s",switch,fan);
   endfunction:open_electricity

 endclass:base_class

 module check_electricity;
 base_class b1;

 initial begin:BEGIN_I
   b1=new();
   b1.open_electricity;
   $display("Outside class :- switch is %0s that's why fan is %s",b1.switch,b1.fan);
  end:BEGIN_I

 endmodule
