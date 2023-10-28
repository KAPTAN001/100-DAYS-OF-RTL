module tb();
wire [3:0] sum; 
wire carry;
reg [3:0] a,b;
reg cin;
CLA_ADDER CLA(a,b,cin,sum,carry);
integer i;
initial
begin
cin = 1'b0;
for(i=0; i<256; i=i+1)
begin
{a,b}=i;
#10;
end
cin=1'b1;
for(i=0; i < 256 ; i=i+1)
begin
{a,b}=i;
#10;
end
end
initial
begin
$monitor ("%t ,a=%b, b=%b,cin=%b,sum=%b,carry=%b", $time, a,b,cin,sum,carry);
end
endmodule


