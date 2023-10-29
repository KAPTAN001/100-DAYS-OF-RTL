module fulladder1(a,b,cin,carry,sum);
input a,b,cin;
output sum,carry;
assign a1= ~a;
assign b1= ~b;
assign cin1= ~cin;
assign sum = a1&b1&cin | a1&b&cin1 | a&b1&cin1 | a&b&cin;
assign carry = a1&b&cin | a&b1&cin | a&b&cin1 | a&b&cin;
endmodule
