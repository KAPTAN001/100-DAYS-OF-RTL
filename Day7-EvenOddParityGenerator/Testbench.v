module tb();
wire out;
reg a,b,c;
Evenparitygen EPG(a,b,c,out);
initial
begin
a=0; b=0; c=0;
#10 a=0; b=0; c=1;
#10 a=0; b=1; c=0;
#10 a=0; b=1; c=1;
#10 a=1; b=0; c=0;
#10 a=1; b=0; c=1;
#10 a=1; b=1; c=0;
#10 a=1; b=1; c=1;
end
initial 
begin
$monitor ("%t, a=%b , b=%b, c=%b, out=%b", $time , a, b, c, out);
end
endmodule
