module halfadder_2(a,b,carry,sum);
input a,b;
output reg carry,sum;
always@(a or b)
begin
	if (a == 1'b0 && b == 1'b0)
	begin		
	sum <= 1'b0;
	carry <= 1'b0;
	end
	
	if (a == 1'b1 && b == 1'b1)
	begin		
	sum <= 1'b0;
	carry <= 1'b1;
	end

	else
	begin	
	sum = 1'b1;
	carry=1'b0;
	end
end	
endmodule
