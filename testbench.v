module tb
();

reg reset_iftb;
reg clk_iftb;

wire [31:0] instruction_iftb;
wire [63:0] PC_In_iftb;
wire [63:0] PC_Out_iftb;

instruction_fetch i_f

(
.reset_if(reset_iftb),
.clk_if(clk_iftb),
.instruction_if(instruction_iftb)
);

initial
  begin
    reset_iftb = 1'b1;
    #5 reset_iftb = ~reset_iftb; 
  end

always
   #5 clk_iftb = ~clk_iftb; 


endmodule
