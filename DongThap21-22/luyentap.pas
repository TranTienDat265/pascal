program luyentap;
uses crt;
var a,dem:array [1..100000] of longint;
n,i,max:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongThap21-22\luyentap.inp.txt');
reset(f);
readln(f,n);
for i:=1 to n do
begin
read(f,a[i]);
inc(dem[a[i]]);
end;
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DongThap21-22\luyentap.out.txt');
rewrite(f);
for i:=1 to n do if max<dem[i] then max:=dem[i];
write(f,max);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.
