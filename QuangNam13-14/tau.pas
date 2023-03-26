program tau;
var a,b:int64;
function gcd(a,b:int64):int64;
begin
while a<>b do if a>b then a:=a-b
else b:=b-a;
exit(b);
end;
procedure nhap;
begin
readln(a,b);
end;
procedure giai;
begin
write((a*b) div gcd(a,b));
end;
begin
nhap;
giai;
end.