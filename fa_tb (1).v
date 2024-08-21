// full adder test bench
// uses 2 half adders
// author Bian Paul Paraguya
// date 07/20/2024
// for 526L
// version 1
// tested

module fa_tb();

reg a,b,ci;
wire co,s;

fa fa1 (a,b,ci,co,s);

initial
begin
$display (" a b ci  co s");
	a=0; b=0 ;  ci=0;
#10	a=0; b=1 ;  ci=0;
#10	a=1; b=0 ;  ci=0;
#10	a=1; b=1 ;  ci=0;
#10	a=0; b=0 ;  ci=1;
#10	a=0; b=1 ;  ci=1;
#10	a=1; b=0 ;  ci=1;
#10	a=1; b=1 ;  ci=1;


#10 $finish;
end

initial $monitor (" %b %b %b  %b %b", a,b,ci, co,s);

endmodule