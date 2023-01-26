program xoanoc;
uses crt;
var a: array [1..10000,1..10000] of longint;
i,j,m,n,x1,x2,y1,y2,d:longint;
procedure nhap;
begin
write('Nhap n:  '); readln(n);
write('Nhap m:  '); readln(m);
d:=0;
x1:=1;
x2:=m;
y1:=1;
y2:=n;
end;
procedure giai;
begin
while (x2>x1) and (y2>y1) do begin
for i:=x1 to x2 do begin inc(d); a[y1,i]:=d; end;
inc(y1); 
for j:=y1 to y2 do begin inc(d); a[j,x2]:=d; end;
dec(x2); 
for i:=x2 downto x1 do begin inc(d); a[y2,i]:=d; end;
dec(y2);
for j:=y2 downto y1 do begin inc(d); a[j,x1]:=d; end;
inc(x1);
end;
end;
procedure xuat;
begin
for i:=1 to n do
begin
for j:=1 to m do write(a[i,j],'  ');
writeln;
end;
end;
begin
clrscr;
nhap;
giai;
xuat;
readln;
end.