program sotancung;
var a,b:longint;    f:text;
function pow(x,y:longint):longint;
var i:longint;
t:int64;
begin
t:=1;
for i:=1 to y do t:=t*x;
exit(t);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh20-21\sotancung.inp.txt');
reset(f);
readln(f,a,b);
close(f);
end;
procedure giai;
var n,m,r:longint;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh20-21\sotancung.out.txt');
rewrite(f);
n:=a mod 10;
if b=0 then write(f,1) else
begin
   if (n = 1) or (n = 0) or (n = 6) or (n = 5) then write(n)
   else
      begin
      r:=b mod 4;
      m:=pow(n,r);
      if (n = 3) or (n = 7) or (n = 9) then write(f,m mod 10)
      else write(f,6*m mod 10);
      end;
end;
close(f);
end;
begin
nhap;
giai;
end.
