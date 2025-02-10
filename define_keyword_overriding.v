`define ADD(a,b) (a+b)

module define_keyword_overriding;

initial
begin

$display("addition:%0d",`ADD(1,0));

end

endmodule

`define n 4
`undef n
`define n 5

module define;

reg [`n-1:0] a;
integer i;

initial
begin
 a=5'b0;
 for (i=0;i<`n;i=i+1)
 begin
 a[i]=1'b1;
 $display("a[%0d]=%0b",i,a[i]);
 end
end

endmodule