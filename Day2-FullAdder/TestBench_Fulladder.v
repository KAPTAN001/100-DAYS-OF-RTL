module tb();
reg a,b,cin;
wire sum,carry;
//fulladder FA(a,b,cin,sum,carry);
//fulladder1 FA1(a,b,cin,sum,carry);
fulladder2 FA2(a,b,cin,sum,carry);
initial
begin 
a=0; b=0; cin=0;
#10 a=0; b=0; cin=1;
#10 a=0; b=1; cin=0;
#10 a=0; b=1; cin=1;
#10 a=1; b=0; cin=0;
#10 a=1; b=0; cin=1;
#10 a=1; b=1; cin=0;
#10 a=1; b=1; cin=1;
end
initial
begin
$monitor("%t, a=%b , b=%b ,cin=%b ,sum=%b,carry=%b", $time,a,b,cin,sum,carry);
end
endmodule