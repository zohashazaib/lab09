module instruction_fetch
(

input reset_if,
input clk_if,

output [31:0] instruction_if


);

wire [63:0] PC_In_if;
wire [63:0] PC_Out_if;

Program_Counter P1
(
.PC_In(PC_In_if),
.PC_Out(PC_Out_if),
.reset(reset_if),
.clk(clk_if)
);

Adder a1
(
.a(PC_Out_if),
.b(64'h0000000000000004),
.Next_Inst(PC_In_if)
);

Instruction_Memory IM
(
.Inst_Address(PC_Out_if),
.Instruction(instruction_if)
);


endmodule