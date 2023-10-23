module tb();
reg a,b;
wire sum,carry;
halfadder_2 HA1(a,b,carry,sum);
//halfadder_1 HA2(a,b,sum,carry);
//halfadder HA3(a,b,carry,sum);
initial 
begin
a=0; b=0;
#2 a=0; b=1;
#2 a=1; b=0;
#2 a=1; b=1;
end
initial
begin
$monitor("%t | a=%b | b=%b | sum=%b | carry=%b", $time, a, b, sum, carry);
end
endmodule
