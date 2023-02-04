program demso;
uses crt;
var f:text;
a:array [1..1000000] of longint;
i,dem,n:longint;
function ok(n:longint):boolean;
begin
exit((n mod 3 = 0) and (n mod 9 <> 0));
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\CanTho21-22\demso.inp.txt');
reset(f);
readln(f,n);
dem:=0;
for i:=1 to n do begin read(f,a[i]); if ok(a[i]) then inc(dem); end;
close(f);
assign(f,'D:\TRANTIENDAT\CanTho21-22\demso.out.txt');
rewrite(f);
write(f,dem);
close(f);
end;
begin
clrscr;
giai;
readln;
end.