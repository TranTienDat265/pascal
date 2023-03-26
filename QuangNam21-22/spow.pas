program spow;
const m = 1000000007;
var f:text;
a,n,res:qword;
function pow(a,n:qword):qword;
var i,res:qword;
begin
if n = 0 then exit(1)
else if n mod 2 = 0 then exit(sqr(pow(a mod m,n div 2 mod m) mod m) mod m)
else exit(a* (sqr(pow(a mod m,n div 2 mod m)mod m)mod m)mod m);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\QuangNam21-22\spow.inp.txt');
reset(f);
readln(f,a,n);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\QuangNam21-22\spow.out.txt');
rewrite(f);
res:=1;
writeln(f,(a mod m+ n mod m) mod m);
write(f,pow(a,n));
close(f);
end;
begin
nhap;
giai;
end.
