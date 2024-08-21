
module twobit (
  input [1:0] a, b,
  input cin,
  output cout,
  output [1:0] s
);

wire c1;

fa fa0 (
  .a(a[0]),
  .b(b[0]),
  .ci(cin),
  .co(c1),
  .s(s[0])
);

fa fa1 (
  .a(a[1]),
  .b(b[1]),
  .ci(c1),
  .co(cout),
  .s(s[1])
);

endmodule
