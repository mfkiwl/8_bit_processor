`timescale 1ns / 1ps
module testbench;
  reg [7:0] a=0;
  reg [7:0] b=0;
  reg op=0;       // if op=1 then add otherwise subtract
  wire flag_c;
  wire flag_o;
  wire [8:0] out;
  
  alu u1(.a(a),
         .b(b),
         .op(op),
         .flag_c(flag_c),
         .flag_o(flag_o),
         .out(out));
  initial begin
  fork
  #10 a=40;
  #10 b=20;
  join
  #10 op=1;
  #10 $finish;
  end
           
endmodule
