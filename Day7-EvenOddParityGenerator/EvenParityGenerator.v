module Evenparitygen(a,b,c,out);
input a,b,c;
wire x;
output out;
assign x = a^b^c;
assign out = ~x;
endmodule

