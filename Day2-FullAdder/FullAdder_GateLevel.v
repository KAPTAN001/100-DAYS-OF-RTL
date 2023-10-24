module fulladder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire a1,b2,cin3,y1,y2,y3,y4;
not N1(a1,a);
not N2(b1,b);
not N3(cin1,cin);
and A1(y1,a1,b1,cin);
and A2(y2,a1,b,cin1);
and A3(y3,a,b1,cin1);
and A4(y4,a,b,cin);
and A5(y5,a1,b,cin);
and A6(y6,a,b1,cin);
and A7(y7,a,b,cin1);
or O1(sum,y1,y2,y3,y4);
or O2(carry,y4,y5,y6,y7);
endmodule

