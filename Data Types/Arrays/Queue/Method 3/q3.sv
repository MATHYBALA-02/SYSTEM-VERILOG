module queue_data_type;

//Declare the queue of type int
int queue1[$];

initial 
begin

  //initializing the queue2 with eight value of int type
  queue1 = '{2,7,1,9,9,7};



  $display("\nqueue1 = [2,7,1,9,9,7]");

  $display("\nOUTPUT:");

  //  queue1.size();
  $display("\n // size()-The size of queue1: \n\t\t%p", queue1.size());

  queue1.delete(0);
  $display("\n // delete()-After Deleting the int type value '7' from the queue1: \n\t%p", queue1);

  queue1.insert(0, 2);
  $display("\n // insert()-After insert the array element '2' at zeroth index position of queue1: \n\t%p", queue1);
 // $display("");

queue1.delete();
$display("\n // Deleting the whole array elements of queue1: \n\t{%0p}",  queue1);

$display("\n // After Deleting display the Size of queue1: \n\t%p",queue1.size());

  $display("");
end
endmodule
