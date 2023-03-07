program cau1;
const m = 1000000007;
var res,n:qword;    f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\LamDong22-23\cau1.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\LamDong22-23\cau1.out.txt');
rewrite(f);
res:= (((n-1) mod m) * (n mod m) * ((n+1) mod m) * ((n+2) mod m)) div 4 mod m;
write(f,res);
close(f);
end;
begin
nhap;
giai;
end.