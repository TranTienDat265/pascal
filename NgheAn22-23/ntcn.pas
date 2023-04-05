program ntcn;
var n:int64;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\NgheAn22-23\ntcn.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
function phi(n:int64):int64;
var i:longint;
res:int64;
begin
res:=n;
for i:=2 to trunc(sqrt(n)) do
        if n mod i = 0 then
                begin
                while n mod i = 0 do n:=n div i;
                res:=res-res div i;
                end;
if n>1 then res:=res-res div n;
exit(res);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\NgheAn22-23\ntcn.out.txt');
rewrite(f);
write(f,phi(n));
close(f);
end;
begin
nhap;
giai;
end.