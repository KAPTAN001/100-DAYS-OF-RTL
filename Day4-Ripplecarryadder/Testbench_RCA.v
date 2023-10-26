module tb();
reg [3:0] a,b;
reg cin;
wire carry;
wire [3:0] sum;
ripplecarryadder RCA(a,b,cin,sum,carry);
initial
begin
a=4'b0001;b=4'b0010; cin=0;
#10 a=4'b0100;b=4'b0101; cin=1;
#10 a=4'b0111;b=4'b1000; cin=0;
#10 a=4'b1001;b=4'b1010; cin=1;
#10 a=4'b1101;b=4'b1010; cin=0;
end
initial
begin
$monitor ("%t ,a=%b , b=%b, cin=%b, sum=%b, carry=%b", $time , a, b, cin, sum, carry);
end
endmodule 