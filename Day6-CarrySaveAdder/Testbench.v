module tb();
reg [3:0] a,b,c;
wire [5:0] sum;
carrysaveadder CSA(a,b,c,sum);
initial
begin
a=4'b1101;b=4'b1001;c=4'b0100; #10;
a=4'b1111;b=4'b1011;c=4'b0110; #10;
a=4'b1101;b=4'b1101;c=4'b1100; #10;
a=4'b1011;b=4'b0100;c=4'b1000; #10;
a=4'b1111;b=4'b1111;c=4'b1111; #10;
end
initial
begin
$monitor ("%t ,a=%b , b=%b, c=%b, sum=%b", $time , a, b, c, sum,);
end
endmodule 
