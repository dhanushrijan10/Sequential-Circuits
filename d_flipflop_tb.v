module d_flipflop_tb;
reg clk;
reg D;
wire Q;

d_flipflop uut (
    .clk(clk),
    .D(D),
    .Q(Q)
);

   initial begin
      $dumpfile("d_flipflop_tb.vcd");
      $dumpvars(0, d_flipflop_tb);

      clk=0;
      D=0;

      #10 D=1;
      #10 D=0;
      #10 D=1;
      #10 D=0;

      #20 
      $finish;
   end
   always #5 clk = ~clk;
endmodule