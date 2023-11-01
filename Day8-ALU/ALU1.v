module ALU(a,b,x,out);
input [31:0] a,b;
input [3:0] x;
output reg [31:0] out;
always@(*)
begin
case(x)
4'b0000: 
out=a+b;// addition
4'b0001:
out=a-b;// substraction
4'b0010:
out=a*b;// multiplication
4'b0011:
out=a/b;// division
4'b0100:
out=a<<1;// logical shift left
4'b0101:
out=a>>1;// logical shift right
4'b0110:// rotate left
out={a[6:0],a[7]};
4'b0111:// rotate right
out={a[0],a[7:1]};
4'b1000:// logical and
out= a & b;
4'b1001:// logical or
out= a | b;
4'b1010://logical nor
out= ~(a|b);
4'b1011:// logical nand
out= ~(a&b);
4'b1100://logical xor;
out = a ^ b;
4'b1101://logical xnor
out =~(a^b);
4'b1110:// greater or lesser comparision
out = (a>b)?1:0;
4'b1111: // equal comparision
out= (a==b)?1:0;
default: out =a+b;
endcase
end
endmodule
 
