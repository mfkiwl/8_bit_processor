module alu(
  input [7:0] a,
  input [7:0] b,
  input op,       // if op=1 then add otherwise subtract
  output flag_c,
  output flag_o,
  output [8:0] out
    );
wire [7:0] b_out;

assign out=a+b_out;
assign flag_z=(out[7:0]==0)?1:0;
assign flag_c= out[8];
assign b_out=(op)? b:~b+1;
endmodule
