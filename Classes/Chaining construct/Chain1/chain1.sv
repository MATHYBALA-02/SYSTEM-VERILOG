class parent;
  int a;
  function new();
    a = 1;
  endfunction
  extern function void display();
endclass:parent

//-------------------------------------------------------
// child class which is extended form parent class
//-------------------------------------------------------
class child extends parent;
  int b;
  function new();
    b = 2;
  endfunction
  extern function void display();
endclass:child

//-------------------------------------------------------
// This is display function of parent class which is
// out-of-bound decleration.
//-------------------------------------------------------
function void parent::display();
  $display("a = %0d",a);
endfunction

//-------------------------------------------------------
// This is display function of child class which is
// out-of-bound decleration.
//-------------------------------------------------------
function void child::display();
  super.display(); // Super is a keyword used to get the method of same name from extended class.
  $display("b = %0d",b);
endfunction

module basic_chain_construct();

// creating a child class handle 'c'.
child c;

initial begin
  // creating an object for that handle 'c' using new() method.
  c = new;
  c.display(); // using that handle calling display function.
end
endmodule
