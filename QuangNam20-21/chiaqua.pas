program chiaqua;
var tmp,res:int64;
i,n:longint;
f:text;
procedure nhap_giai;
begin
assign(f,'D:\TRANTIENDAT\QuangNam20-21\chiaqua.inp.txt');
reset(f);
readln(f,n);
for i:=1 to n do
        begin
        read(f,tmp);
        inc(res,tmp);
        end;
close(f);
end;
procedure xuat;
begin
assign(f,'D:\TRANTIENDAT\QuangNam20-21\chiaqua.out.txt');
rewrite(f);
write(res);
if (res div 2) mod 100 = 0 then write(f,'YES') else write(f,'NO');
close(f);
end;
begin
nhap_giai;
xuat;
end.