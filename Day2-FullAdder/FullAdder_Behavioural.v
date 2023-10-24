module fulladder2(a,b,cin,sum,carry);
input a,b,cin;
wire [2:0]x;
output reg sum,carry;
assign x = {a,b,cin};
always@(a or b or cin)
begin
case(x)
3'b000 : 
begin 
sum=0; carry=0;
end
3'b001 : 
begin 
sum=1; carry=0;
end
3'b010 : 
begin 
sum=1; carry=0;
end
3'b011 : 
begin 
sum=0; carry=1;
end
3'b100 : 
begin 
sum=1; carry=0;
end
3'b101 : 
begin 
sum=0; carry=1;
end
3'b110 : 
begin 
sum=0; carry=1;
end
3'b111 : 
begin 
sum=1; carry=1;
end
default : 
begin 
sum=0; carry=0;
end
endcase
end
endmodule
