program thuenha;
var a:array [1..1000] of byte;
m,n,k,i,j,min:integer; f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongNai20-21\thuenha.inp.txt');
reset(f);
readln(f,n,m,k);
for i:=1 to n do read(f,a[i]);
close(f);
end;
procedure giai;
var ok:boolean;
begin
assign(f,'D:\TRANTIENDAT\DongNai20-21\thuenha.out.txt');
rewrite(f);
min:=n;
ok:=false;
for i:=1 to n do if (a[i]<k) and (i<>m) and (abs(i-m)<min) then begin ok:=true; min:=abs(i-m); end;
if ok then write(f,min*10) else write(f,-1);
close(f);
end;
begin
nhap;
giai;
end.