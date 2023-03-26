program tbc1;
var a,b: array [1..1000000] of int64;
sum:int64;
i,n:longint;
procedure giai;
begin
a[i]:=b[i]*i-sum;
inc(sum,a[i]);
end;
procedure nhap;
begin
readln(n);
read(a[1]);
sum:=a[1];
for i:=2 to n do
        begin
        read(b[i]);
        giai;
        end;
end;
procedure xuat;
begin
for i:=1 to n do write(a[i],' ');
end;
begin
nhap;
xuat;
end.
