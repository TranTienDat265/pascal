program nhannga;
uses crt;
var a,b,t:int64;
procedure nhap;
begin
readln(a,b);
end;
procedure giai;
begin
t:=a;
while b<>1 do
begin
b:=b div 2;
a:=a*2;
if b mod 2 = 1 then t:=t+a;
//writeln(a,'  ',b);
end;
write(t);
end;
begin
clrscr;
nhap;
giai;
readln;
end.