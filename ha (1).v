module ha (a,b,c,s);
input a,b;
output c,s;


wire a,b,c,s;


and (c,a,b);
xor (s,a,b);


endmodule