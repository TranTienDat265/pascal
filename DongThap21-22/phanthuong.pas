program phanthuong;
uses crt;
var a,i,j,dem,n:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongThap21-22\phanthuong.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DongThap21-22\phanthuong.out.txt');
rewrite(f);
j:=0;      dem:=0;
while j< n div 2 do
begin
inc(j);
i:=j;
while (i+j)<n  do begin inc(i); inc(dem); writeln(i,' ',j); end;
end;
write(f,dem);
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.
