module carrysaveadder(a,b,c,sum);
input [3:0] a,b,c;
wire [3:0] c_temp;
wire [3:0] x;
wire [3:0] sum_temp;
output [5:0] sum;
fulladder1 FA1(a[0],b[0],c[0],c_temp[0],sum_temp[0]);
fulladder1 FA2(a[1],b[1],c[1],c_temp[1],sum_temp[1]);
fulladder1 FA3(a[2],b[2],c[2],c_temp[2],sum_temp[2]);
fulladder1 FA4(a[3],b[3],c[3],c_temp[3],sum_temp[3]);
fulladder1 FA5(sum_temp[0],0,0,x[0],sum[0]);
fulladder1 FA6(sum_temp[1],c_temp[0],x[0],x[1],sum[1]);
fulladder1 FA7(sum_temp[2],c_temp[1],x[1],x[2],sum[2]);
fulladder1 FA8(sum_temp[3],c_temp[2],x[2],x[3],sum[3]);
fulladder1 FA9(0,c_temp[3],x[3],sum[5],sum[4]);
endmodule
 