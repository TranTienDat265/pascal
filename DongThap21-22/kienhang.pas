program kienhang;
uses crt;
var a:array [1..10000] of longint;
i,j,n,m,k,dem,tong,temp,x:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongThap21-22\kienhang.inp.txt');
reset(f);
readln(f,n,m,x);
for i:=1 to n do read(f,a[i]);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DongThap21-22\kienhang.out.txt');
rewrite(f);
tong:=0;
j:=0;
while tong<m do begin inc(j); tong:=tong+a[j]; end;
for i:=1 to j-1 do
for k:=i+1 to j do
if a[i]<a[k] then
begin
temp:=a[i];
a[i]:=a[k];
a[k]:=temp;
end;
i:=0;
while tong>a[x] do
begin
inc(dem);
inc(i);
tong:=tong-a[i];
end;
write(f,dem);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.
