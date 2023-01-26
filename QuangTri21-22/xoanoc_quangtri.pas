program xoanoc_2;
uses crt;
var a:array [1..10000,1..10000] of longint;
b:array [1..20000] of longint;
temp,i,j,n,m,t,x1,x2,y1,y2,k:longint;                  
procedure nhap;
begin
write('Nhap n:  '); readln(n);
write('Nhap m:  '); readln(m);
for i:=1 to n do
for j:=1 to m do 
begin 
write('Nhap A[',i,',',j,']'); 
readln(a[i,j]); inc(t); b[t]:=a[i,j]; 
end;
end;
procedure giai;
begin
k:=0;
x1:=1;
x2:=m;
y1:=1;
y2:=n;
for i:=1 to t-1 do
for j:=i+1 to t do 
if b[i]>b[j] then 
begin
temp:=b[j];
b[j]:=b[i];
b[i]:=temp;
end;
while (x2>x1) and (y2>y1) do
begin
for i:=x1 to x2 do begin inc(k); a[y1,i]:=b[k]; end;
inc(y1);
for j:=y1 to y2 do begin inc(k); a[j,x2]:=b[k]; end;
dec(x2);
for i:=x2 downto x1 do begin inc(k); a[y2,i]:=b[k]; end;
dec(y2);
for j:=y2 downto y1 do begin inc(k); a[j,x1]:=b[k]; end;
inc(x1);
end;
for i:=1 to n do
begin
for j:=1 to m do write(a[i,j],'   ');
writeln;
end;
end;
begin
clrscr;
nhap;
giai;
readln;
end.