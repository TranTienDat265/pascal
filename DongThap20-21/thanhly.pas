program thanhly;
var a:array [1..10000000] of longint;
n,m,i,j,tmp,price,max,dem:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongThap20-21\thanhly.inp.txt');
reset(f);
readln(f,n,m);
for i:=1 to m do read(f,a[i]);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DongThap20-21\thanhly.out.txt');
rewrite(f);
for i:=1 to m-1 do
for j:=i+1 to m do
if a[i]>a[j] then
begin
tmp:=a[i];
a[i]:=a[j];
a[j]:=tmp;
end;
for i:=1 to m do
begin
price:=0;
dem:=0;
for j:=1 to m do if a[i]<=a[j] then inc(dem);
if dem>n then dem:=n;
price:=dem*a[i];
if price>max then max:=price;
end;
write(f,max);
close(f);
end;
begin
nhap;
giai;
end.