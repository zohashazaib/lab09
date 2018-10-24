module Adder
  
(
  input [63:0] a,
  input [63:0] b,
  output [63:0] Next_Inst

);


 
assign Next_Inst = a + b;
 
 endmodule