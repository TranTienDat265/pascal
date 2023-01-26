program index;
uses crt;
var a,b:array [1..500] of integer;
i,j,n,tam,temp:integer;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc921-22\index.inp.txt');
reset(f);
readln(f,n);
for i:=1 to n do read(f,a[i],b[i]);
close(f);
end;
procedure swap(i,j:integer);
begin
tam:=b[i];
b[i]:=b[j];
b[j]:=tam;
temp:=a[i];
a[i]:=a[j];
a[j]:=temp;
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc921-22\index.out.txt');
rewrite(f);
{for i:=1 to n do writeln(a[i],' ',b[i]);
writeln('---------------------');}
for i:=1 to n-1 do
for j:=i+1 to n do
if b[i]>b[j] then swap(i,j);
{for i:=1 to n do writeln(a[i],' ',b[i]);
writeln('----------------------');}
for i:=1 to n-1 do if a[i]=a[i+1] then swap(i,i+1);
if (a[n]=a[n-1]) and (b[n-1]<b[n]) then swap(n-1,n-2) else begin swap(n,n-1); swap(n-1,n-2); end;
for i:=1 to n do writeln(f,a[i],' ',b[i]);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.