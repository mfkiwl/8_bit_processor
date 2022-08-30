module pc(
    input clk,
    input ld,
    input en,
    input rst,
    input [3:0] in,
    output [3:0] out
    );
reg [3:0] program_counter=0;
always@(posedge clk or posedge rst)
begin
if(rst)
program_counter<=0;
else if(en)
program_counter<=program_counter+1;
else if(ld)
program_counter<=in;
end
assign out=program_counter;
endmodule
