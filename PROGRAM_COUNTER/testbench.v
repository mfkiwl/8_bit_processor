module testbench;
reg clk=0;
reg rst=0;
reg en=0;
reg ld=0;
reg [3:0] in;
wire [3:0] out;
always#10 clk=~clk;
pc u1(.clk(clk),
      .ld(ld),
      .en(en),
      .rst(rst),
      .in(in),
      .out(out));
initial begin
fork
#10 rst<=1;
#10 ld<=0;
#10 en<=0;
join
end
always@(posedge clk)
begin
#10 rst<=0;
#10 en<=1;
end
endmodule
