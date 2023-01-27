program nhac;
uses crt;
var a:array [1..100000] of longint;
i,j,k,m,n,min,tong,res:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh21-22\nhac.inp.txt');
reset(f);
readln(f,n);
read(f,a[1]);
min:=a[1];
for i:=2 to n do begin read(f,a[i]); if a[i]<min then min:=i; end;
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh21-22\nhac.out.txt');
rewrite(f);
tong:=0;
res:=0;
for j:=min to n do begin tong:=tong+a[j]; writeln(f,j,' ',tong); res:=res+tong; end;
tong:=tong+a[1];
res:=res+tong;
writeln(f,1,' ',tong);
writeln(f,res);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.