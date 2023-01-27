program bauoc;
uses crt;
var n,i,k,dem:longint;
f:text;
function ok(n:longint):boolean;
var i,dem:longint;
begin
dem:=1;
for i:=1 to n div 2 do if n mod i = 0 then begin inc(dem); if dem>3 then break; end;
if dem=3 then exit(true) else exit(false);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh21-22\bauoc.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh21-22\bauoc.out.txt');
rewrite(f);
dem:=0;
for i:=1 to n do if ok(i) then inc(dem);
write(f,dem);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.