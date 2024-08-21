// 2-bit adder 
//shows heirachical design
// uses half adder and full adder
//written by Gary R Burke
//for csun ece 526L -02
//fall 2023
//9/8/2023
//status : untested


module twobit_tb();
reg [1:0] a,b,cin;
wire [1:0] cout,s;
integer i,j;

twobit tb1 (.a(a),.b(b),.cin(cin),.cout(cout), .s(s));

initial
	begin
	$display (" a b cin cout s");
	a=0;
	b=0;
	cin=0;
	for (i=0; i<4; i=i+1)
	for (j=0; j<4; j=j+1)
		begin
		#10
		a=j;
		b=i;
		end
	#10 $finish;
	end

initial $monitor (" %2b  %2b  %1b  %1d %4d ", a,b,cin, cout , s);

endmodule