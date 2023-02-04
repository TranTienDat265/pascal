program uocNT;
uses crt;
var f:text;
n,i,dem:int64;
function ngto(n:int64):boolean;
var i:int64;
begin
ngto:=true;
if (n=0) or (n=1) then exit(false);
i:=1;
while i<sqrt(n) do begin inc(i); if n mod i = 0 then exit(false);  end;
end;
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
dem:=0;
if (ngto(n)) then write(f,'2') else
begin
i:=1;
while i< n div 2 do begin inc(i); if n mod i = 0 then write(i,'  '); if (n mod i = 0) and ngto(i) then inc(dem); end;
write(f,dem);
close(f);
end;
end;
begin
clrscr;
nhap;
giai;
readln;
end.