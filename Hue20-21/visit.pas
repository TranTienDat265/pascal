program visit;
uses crt;
var a:array [1..10000,1..10000] of integer;
b,mark:array [1..10000] of integer;
i,j,n,m,sum,k,s,l:integer;
f:text;
procedure xuat;
begin
for i:=1 to n do
        begin
        for j:=1 to m do write(a[i,j],' ');
        writeln;
        end;
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\visit.inp.txt');
reset(f);
readln(f,n,m);
sum:=0;
k:=0;
for i:=1 to n do
        begin
        for j:=1 to m do
                begin
                read(f,a[i,j]);
                inc(k);
                b[k]:=a[i,j];
                inc(sum,a[i,j]);
                end;
        readln(f);
        end;
close(f);
end;
procedure try(i:integer);
begin
s:=s+b[i];
//inc(l);
mark[i]:=1;
if s<sum then try(i+1)
else if s=sum then begin for i:=1 to k do if mark[i]<>0 then write(i); end;
s:=s-b[i];
mark[i]:=0;
end;
procedure giai;
begin
end;
begin
nhap;
xuat;
sum:=sum div 2;
s:=0;
try(1);
//write(s);
end.