program manhghep;
uses crt;
var a,b:int64;
procedure nhap;
begin
readln(a,b);
end;
procedure giai;
begin
while a<>b do
begin
if a>b then a:=a-b
else if b>a then b:=b-a;
end;
write(b);
end;
begin
clrscr;
nhap;
giai;
readln;
end.