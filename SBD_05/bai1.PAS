program bai1;
var k,s:longint;
function gcd(k,s:longint):longint;
begin
while k<>s do
        if k>s then k:=k-s
        else if s>k then s:=s-k;
exit(k);
end;
procedure nhap;
begin
write('k = '); readln(k);
write('s = '); readln(s);
end;
procedure giai;
begin
write(k*s div gcd(k,s));
end;
begin
nhap;
giai;
end.