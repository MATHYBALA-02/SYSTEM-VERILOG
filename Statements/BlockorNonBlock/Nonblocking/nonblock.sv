module non_blocking_swap();
  int Greater_number=5;
  int Lesser_number=2;
  initial
  begin
    $display("Inital : ");
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end
  initial
  begin
    $display("swapping : ");
    Lesser_number<=Greater_number;
    Greater_number<=Lesser_number;
    $display("Display : Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number); 
    $monitor("Monitor : Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end
endmodule 
