program chiphi;
var f:text;
n,x:int64;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DakNong22-23\chiphi.inp.txt');
reset(f);
readln(f,n,x);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DakNong22-23\chiphi.out.txt');
rewrite(f);
if n mod 2 = 1 then inc(n);
write(f,n div 2*x);
close(f);
end;
begin
nhap;
giai;
end.
