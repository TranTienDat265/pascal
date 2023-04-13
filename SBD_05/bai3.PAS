program bai3;
var a:array [1..1000] of longint;
i,cnt,dem,n:integer;
x:longint;
procedure nhap;
begin
readln(n);
for i:=1 to n do read(a[i]);
readln(x);
end;
procedure giai;
begin
dem:=0;
cnt:=0;
for i:=1 to n-1 do
        begin
        if a[i]<=a[i+1] then inc(dem);
        if a[i]=x then inc(cnt);
        end;
if a[n]=x then inc(cnt);
writeln(cnt);
if dem=n-1 then write('Co') else write('Khong');
end;
begin
nhap;
giai;
end.