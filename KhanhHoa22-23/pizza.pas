program pizza;
var f:text;
a:array [1..8] of integer;
max,i:longint;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\KhanhHoa22-23\pizza.inp.txt');
reset(f);
for i:=1 to 8 do read(f,a[i]);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\KhanhHoa22-23\pizza.out.txt');
rewrite(f);
max:=a[1]+a[2]+a[3]+a[4];
for i:=2 to 5 do
        if a[i]+a[i+1]+a[i+2]+a[i+3]> max then max:=a[i]+a[i+1]+a[i+2]+a[i+3];
write(f,max);
close(f);
end;
begin
nhap;
giai;
end.