module fulladder(a,b,cin,sum,carry);
input a,b,cin;
wire x,y,z;
input sum,carry;
halfadder HA(a,b,x,y);
halfadder HA1(x,cin,sum,z);
or (carry,y,z);
endmodule
