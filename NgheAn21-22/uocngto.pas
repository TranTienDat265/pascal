program uocngto;
uses crt;
var dem,n:int64;   j,i:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\NgheAn21-22\uocNT.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\NgheAn21-22\uocNT.out.txt');
rewrite(f);
dem:=1;
for i:=2 to trunc(sqrt(n)) do
begin
if n mod i = 0 then inc(dem);
while n mod i = 0 do n:=n div i;
end;
if n>1 then inc(dem);
write(f,dem);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.
