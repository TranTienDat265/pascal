program doiban;
var a,b:longint;f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongThap20-21\doiban.inp.txt');
reset(f);
readln(f,a,b);
close(f);
end;
function lcm(a,b:longint):int64;
var t:int64;
begin
t:=a*b;
while a<>b do
if a>b then a:=a-b
else if b>a then b:=b-a;
exit(t div b);
end;
procedure giai;
var bcnn:int64;
begin
assign(f,'D:\TRANTIENDAT\DongThap20-21\doiban.out.txt');
rewrite(f);
bcnn:=lcm(a,b);
writeln(f,bcnn);
write(f,bcnn div a,' ',bcnn div b);
close(f);
end;
begin
nhap;
giai;
end.