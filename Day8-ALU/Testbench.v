module tb();
wire [31:0] out;
reg [31:0] a,b;
reg [3:0] x;
ALU A1(a,b,c,out);
initial
begin
x= 1011; a=32'd213; b=32'd123123;
#10 x= 1001; a=32'd2113; b=32'd1123;
#10 x= 1101; a=32'd2213; b=32'd1223;
end
initial 
begin
$monitor ("%t, a=%b , b=%b, x=%b, out=%b", $time , a, b, x, out);
end
endmodule
