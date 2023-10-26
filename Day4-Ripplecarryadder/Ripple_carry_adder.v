module ripplecarryadder(a,b,cin,sum,carry);
input [3:0] a,b;
input cin;
wire x,y,z;
output [3:0] sum;
output carry;
fulladder FA1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .carry(x));
fulladder FA2(.a(a[1]), .b(b[1]), .cin(x), .sum(sum[1]), .carry(y));
fulladder FA3(.a(a[2]), .b(b[2]), .cin(y), .sum(sum[2]), .carry(z));
fulladder FA4(.a(a[3]), .b(b[3]), .cin(z), .sum(sum[3]), .carry(carry));
endmodule
