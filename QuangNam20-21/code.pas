program code;
var a:array [1..1000000] of int64;
i,j,n:longint;
f:text;
check:boolean;
procedure sort(l,r:longint);
var tmp,pivot:int64;
i,j:longint;
begin
i:=l;
j:=r;
pivot:=a[(l+r) div 2];
while i<j do
        begin
        while a[i]<pivot do inc(i);
        while a[j]>pivot do dec(j);
        if i<=j then
                begin
                tmp:=a[i];
                a[i]:=a[j];
                a[j]:=tmp;
                inc(i);
                dec(j);
                end;
        end;
if j>l then sort(l,j);
if i<r then sort(i,r);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\QuangNam20-21\code.inp.txt');
reset(f);
readln(f,n);
for i:=1 to n do
        begin
        readln(f,a[i]);
        end;
close(f);
end;
procedure giai;
begin
check:=false;
assign(f,'D:\TRANTIENDAT\QuangNam20-21\code.out.txt');
rewrite(f);
sort(1,n);
for i:=1 to n do write(a[i],' ');
for i:=2 to n do if abs(a[i]-a[i-1])>=2 then
        begin
        write(f,a[i-1]+abs(a[i]-a[i-1])-1);
        check:=true;
        break;
        end;
if check<>true then write(f,a[n]+1);
close(f);
end;
begin
nhap;
giai;
end.