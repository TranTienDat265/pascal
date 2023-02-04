program sole;
uses crt;
var a,b,i,j,dem:longint;
f:text;
function ok(n:longint):boolean;
var t:longint;
begin
t:=0;
while n>0 do
begin
t:=t+n mod 10;
n:=n div 10;
end;
exit(t mod 2 = 1);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\CanTho21-22\sole.inp.txt');
reset(f);
readln(f,a,b);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\CanTho21-22\sole.out.txt');
rewrite(f);
dem:=0;
for i:=a to b do if ok(i) then inc(dem);
write(f,dem);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.
