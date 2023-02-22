module casting_bit_byte();
 //create variable bit and byte type
 byte byte_data;
 bit [3:0] bit_data;
 initial begin
   bit_data = 4'b1011; 
   $display("\nbefore casting bit_data = %0b",bit_data);
   byte_data = byte'(bit_data); 
   $display("after casting bit to byte = %b\n",byte_data);
 end
endmodule
