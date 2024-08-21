// full adder module
// uses 2 half adders
// author Gary R Burke
// date 09/16/2022
// for 526L
// version 1
// untested



module fa (
input a,
input b,
input ci,
output co,
output s);

ha ha1 (a,b,c1,s1);
ha ha2 (ci,s1,c2,s);

or(co,c1,c2);


//initial 
//$monitor ( "fa" , a,b,c1,s1,ci,s1,c2,s);
endmodule

