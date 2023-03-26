program giaima;
var fi,fo:text;
a:array [1..10000] of int64;
ans:int64;
i,j,k,cnt:longint;
function isOk(x,y,z:int64):boolean;
begin
exit((x*y*z) mod (x+y+z) = 0);
end;
procedure nhap;
begin
inc(cnt);
read(fi,a[cnt]);
end;
procedure giai;
begin
for i:=1 to cnt-2 do
for j:=i+1 to cnt-1 do
for k:=j+1 to cnt do if isOk(a[i],a[j],a[k]) then inc(ans);
write(fo,ans);
cnt:=0;     ans:=0;
readln(fi);
end;
begin
assign(fi,'D:\TRANTIENDAT\QuangNam13-14\giaima.inp.txt');
reset(fi);
assign(fo,'D:\TRANTIENDAT\QuangNam13-14\giaima.out.txt');
rewrite(fo);
while not(eof(fi)) do
        begin
        if not(eoln(fi)) then
               nhap
        else
               giai;
        end;
giai;
close(fi);
close(fo);
end.