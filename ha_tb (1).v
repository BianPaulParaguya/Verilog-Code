module ha_tb();

reg a,b;
wire c,s;

ha ha1 (a,b,c,s);

initial
begin
$display (" a b  c s");
a=0;
b=0;
#10
a=0;
b=1;
#10
a=1;
b=0;
#10
a=1;
b=1;
#10 $finish;
end

initial $monitor (" %b %b  %b %b ", a,b,c,s);

endmodule